set_units -time ns -capacitance pF -current mA -voltage V
set Tprd 60
set clk [get_ports clk]
set rst_n [get_ports rst_ext_ni]
create_clock -n TCLK $clk -period  $Tprd
set_dont_touch_network [get_clocks TCLK]
set_drive 0 $clk
set_dont_touch_network $rst_n
set_drive 0 $rst_n
set_ideal_network $rst_n
set_input_delay [expr {$Tprd*0.2}] -clock TCLK [all_outputs]
set_output_delay [expr {$Tprd*0.2}] -clock TCLK [all_outputs]
set_clock_uncertainty [expr {$Tprd*0.08}] -setup [all_clocks ]
set_clock_uncertainty 0 -hold  [all_clocks ]
set_max_fanout 20 [all_inputs ]
set_max_transition 1.5 [current_design ]
set_max_capacitance 0.75 [remove_from_collection [all_inputs ] {clk rst_ext_ni}]
set_fanout_load 1.0 [all_outputs ]
set_false_path -hold -from [remove_from_collection [all_inputs ] $clk]
set_false_path -hold -to [all_outputs ]
uniquify