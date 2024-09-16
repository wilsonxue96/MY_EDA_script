# Set to ignore Technology File Error TFCHK-009 in Topographical Mode
set ignore_tf_error true

# Set libraries and design information for synthesis
set libName       "hu55npkldst"          ;# Library name
set topModule     "mult24"               ;# Top-level module name
set sdc           "../../sdc/mult24.sdc" ;# Path to the timing constraint file (SDC)
set libVersion    "liberty/logic_synth"  ;# Library version path
set corner        "ss0p9v125c"           ;# Process corner (Slow-Slow 0.9V 125°C)

# Set the search path to include current directory and library files directory
set search_path [subst { .  ../../../$libVersion }]

# Specify link library, target library, and symbol library
set link_library    [subst {${libName}_${corner}.db}] ;# Link library for resolving references
set target_library  [subst {${libName}_${corner}.db}] ;# Target library for synthesis
set symbol_library  [subst {${libName}.sdb}]          ;# Symbol library for GUI display, etc.

# Physical Database settings
set mstack          "m08f1f2_RDL"           ;# Metal stack configuration
set mwdataDir       "../../../milkyway"     ;# Milkyway data directory

# Set technology file (.tf) path, which includes process layer information
set techfile        "${mwdataDir}/tf/${libName}_${mstack}.tf"

# Define power and ground net names
set power_net       "VDD"
set ground_net      "VSS"

# Set Milkyway reference library and TLU+ file paths
set mwreflib        "${mwdataDir}/${libName}_${mstack}"          ;# Milkyway reference library
set tlup_max_file   "${mwdataDir}/tlup/${mstack}/${libName}_${mstack}.tlup" ;# TLU+ max corner file
set tlup_min_file   "${mwdataDir}/tlup/${mstack}/${libName}_${mstack}.tlup" ;# TLU+ min corner file
set tlupmapfile     "${mwdataDir}/tlup/layers.map"               ;# TLU+ layers mapping file

# Set logic high and logic low nets, corresponding to power and ground
set mw_logic1_net   $power_net
set mw_logic0_net   $ground_net

# Set Milkyway libraries
set mw_reference_library $mwreflib               ;# Milkyway reference library
set mw_design_library    ${topModule}_LIB        ;# Milkyway design library (to be created)

# Set site name mapping to ensure the tool correctly recognizes library cells
set mw_site_name_mapping [list CORE unit Core unit core unit]

# If in topographical mode, perform the following settings
if {[shell_is_in_topographical_mode]} {

    # Create a new Milkyway design library if it doesn't already exist
    if {![file isdirectory $mw_design_library ]} {
        create_mw_lib   -technology $techfile \
                        -mw_reference_library $mw_reference_library \
                        $mw_design_library
    } else {
        # If the design library already exists, ensure its reference library is consistent
        set_mw_lib_reference $mw_design_library -mw_reference_library $mw_reference_library
    }

    # Open the Milkyway design library for physical synthesis
    open_mw_lib     $mw_design_library

    # Check the integrity and correctness of the Milkyway library
    check_library

    # Set TLU+ files for accurate timing and power analysis
    set_tlu_plus_files -max_tluplus $tlup_max_file \
                       -min_tluplus $tlup_max_file \
                       -tech2itf_map $tlupmapfile

    # Check if TLU+ files are correctly loaded
    check_tlu_plus_files

    # Optional: Set ignored routing layers (if needed)
    # set_ignored_layers -min_routing_layer M9
    # set_ignored_layers -max_routing_layer M10
}

# Read RTL source files (Verilog format)
read_verilog -rtl ../../rtl/${topModule}.v

# Define design libraries
define_design_lib WORK -path ./work

# Create USER library directory if it doesn't exist
if {![file isdirectory "work/USER"]} {
    file mkdir work/USER
}

# Define user design library USER
define_design_lib USER -path ./work/USER

# Set the current design to the top-level module
current_design $topModule

# Read the timing constraint file (SDC format)
read_sdc $sdc

# Link the design to resolve all referenced modules and library cells
link

# Set operating conditions (process corner), specifying worst-case scenario
set_operating_conditions -max "SS0P9V125C"

# Optional: Set cells to be avoided during synthesis
# set demo_dont_use_list  "*_0P* *_20 *_32 *_D_1 *_D_2 *DG_* *ADDH* *CKGTPLT_V5_* *DEL_* *FDPH* *FSDPH* *FSD*_V2_* *FD*_V2_* *FSD*_D_* *FD*QB* *FS*QB* *FSDAO22P* *FSDPC1B* *FSDPM* *FSD*_F1* *LDNQ_1 *LDNRBQ_1 *LDPQ_1 *LDPRBQ_1"
# foreach demo_dont_use $demo_dont_use_list {
#   set_dont_use  [get_lib_cells */$demo_dont_use]
# }

# Link the design again to ensure all references are resolved
link

# Perform advanced synthesis with scan insertion enabled
compile_ultra  -scan

# Ungroup all modules and flatten the design
ungroup -all -flatten

# Change names to comply with Verilog naming rules, preserving hierarchy
change_names -rules verilog -hierarchy

# Generate area report and save to specified log file
report_area > log/${topModule}_${corner}.log

# Append timing report to the log file
report_timing >> log/${topModule}_${corner}.log

# Append power report to the log file
report_power >> log/${topModule}_${corner}.log

# Append Quality of Results (QoR) report to the log file
report_qor >> log/${topModule}_${corner}.log

# Append library information report to the log file
report_lib ${libName}_${corner} >>  log/${topModule}_${corner}.log

# Write the synthesized SDC constraint file for physical design
write_sdc  ../../pnr/ICC/constraints/${topModule}_gates.sdc

# Write the synthesized gate-level netlist, preserving hierarchy
write -hierarchy -format verilog -output ../../gates/dc_${topModule}_gates.v

# Remove all designs from memory to clean up the environment
remove_design -all

