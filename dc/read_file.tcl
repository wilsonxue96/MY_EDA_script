read_file -rtl ./rtl/core/defines.sv
read_file -rtl ./rtl/core/bpu.sv
read_file -rtl ./rtl/core/csr_reg.sv
read_file -rtl ./rtl/core/csr.sv
read_file -rtl ./rtl/core/divider.sv
read_file -rtl ./rtl/core/exception.sv
read_file -rtl ./rtl/core/exu_alu_datapath.sv
read_file -rtl ./rtl/core/exu_commit.sv
read_file -rtl ./rtl/core/exu_dispatch.sv
read_file -rtl ./rtl/core/exu_mem.sv
read_file -rtl ./rtl/core/exu_muldiv.sv
read_file -rtl ./rtl/core/exu_sqrt.sv
read_file -rtl ./rtl/core/exu.sv
read_file -rtl ./rtl/core/gpr_reg.sv
read_file -rtl ./rtl/core/idu_exu.sv
read_file -rtl ./rtl/core/idu.sv
read_file -rtl ./rtl/core/ifu_idu.sv
read_file -rtl ./rtl/core/ifu.sv
read_file -rtl ./rtl/core/pipe_ctrl.sv
read_file -rtl ./rtl/core/rst_gen.sv
read_file -rtl ./rtl/core/tinyriscv_core.sv

read_file -rtl ./rtl/debug/debug_rom.sv
read_file -rtl ./rtl/debug/jtag_def.sv
read_file -rtl ./rtl/debug/jtag_dm.sv
read_file -rtl ./rtl/debug/jtag_dmi.sv
read_file -rtl ./rtl/debug/jtag_dtm.sv
read_file -rtl ./rtl/debug/jtag_mem.sv
read_file -rtl ./rtl/debug/jtag_sba.sv
read_file -rtl ./rtl/debug/jtag_tap.sv
read_file -rtl ./rtl/debug/jtag_top.sv

read_file -rtl ./rtl/perips/flash_ctrl/flash_ctrl_reg_pkg.sv
read_file -rtl ./rtl/perips/flash_ctrl/flash_n25q/flash_n25q_pkg.sv
read_file -rtl ./rtl/perips/flash_ctrl/flash_n25q/flash_n25q_tran_pkg.sv
read_file -rtl ./rtl/perips/flash_ctrl/flash_n25q/flash_n25q_top.sv
read_file -rtl ./rtl/perips/flash_ctrl/flash_n25q/flash_n25q_tran_seq.sv
read_file -rtl ./rtl/perips/flash_ctrl/flash_ctrl_core.sv
read_file -rtl ./rtl/perips/flash_ctrl/flash_ctrl_reg_top.sv
read_file -rtl ./rtl/perips/flash_ctrl/flash_ctrl_top.sv

read_file -rtl ./rtl/perips/gpio/gpio_reg_pkg.sv
read_file -rtl ./rtl/perips/gpio/gpio_core.sv
read_file -rtl ./rtl/perips/gpio/gpio_reg_top.sv
read_file -rtl ./rtl/perips/gpio/gpio_top.sv

read_file -rtl ./rtl/perips/i2c/i2c_reg_pkg.sv
read_file -rtl ./rtl/perips/i2c/i2c_core.sv
read_file -rtl ./rtl/perips/i2c/i2c_master.sv
read_file -rtl ./rtl/perips/i2c/i2c_reg_top.sv
read_file -rtl ./rtl/perips/i2c/i2c_top.sv
read_file -rtl ./rtl/perips/i2c/i2c_slave.sv

read_file -rtl ./rtl/perips/pinmux/pinmux_reg_pkg.sv
read_file -rtl ./rtl/perips/pinmux/pinmux_core.sv
read_file -rtl ./rtl/perips/pinmux/pinmux_reg_top.sv
read_file -rtl ./rtl/perips/pinmux/pinmux_top.sv

read_file -rtl ./rtl/perips/rvic/rvic_reg_pkg.sv
read_file -rtl ./rtl/perips/rvic/rvic_core.sv
read_file -rtl ./rtl/perips/rvic/rvic_reg_top.sv
read_file -rtl ./rtl/perips/rvic/rvic_top.sv

read_file -rtl ./rtl/perips/spi/spi_reg_pkg.sv
read_file -rtl ./rtl/perips/spi/spi_core.sv
read_file -rtl ./rtl/perips/spi/spi_master.sv
read_file -rtl ./rtl/perips/spi/spi_reg_top.sv
read_file -rtl ./rtl/perips/spi/spi_top.sv
read_file -rtl ./rtl/perips/spi/spi_transmit_byte.sv

read_file -rtl ./rtl/perips/timer/timer_reg_pkg.sv
read_file -rtl ./rtl/perips/timer/timer_core.sv
read_file -rtl ./rtl/perips/timer/timer_reg_top.sv
read_file -rtl ./rtl/perips/timer/timer_top.sv

read_file -rtl ./rtl/perips/uart/uart_reg_pkg.sv
read_file -rtl ./rtl/perips/uart/uart_core.sv
read_file -rtl ./rtl/perips/uart/uart_reg_top.sv
read_file -rtl ./rtl/perips/uart/uart_rx.sv
read_file -rtl ./rtl/perips/uart/uart_top.sv
read_file -rtl ./rtl/perips/uart/uart_tx.sv


read_file -rtl ./rtl/perips/ram.sv
read_file -rtl ./rtl/perips/rom.sv

read_file -rtl ./rtl/sys_bus/obi_interconnect_master_sel.sv
read_file -rtl ./rtl/sys_bus/obi_interconnect_slave_sel.sv
read_file -rtl ./rtl/sys_bus/obi_interconnect.sv

read_file -rtl ./rtl/utils/cdc_2phase.sv
read_file -rtl ./rtl/utils/clk_div.sv
read_file -rtl ./rtl/utils/edge_detect.sv
read_file -rtl ./rtl/utils/gen_buf.sv
read_file -rtl ./rtl/utils/gen_dff.sv
read_file -rtl ./rtl/utils/prim_filter.sv
read_file -rtl ./rtl/utils/prim_subreg_arb.sv
read_file -rtl ./rtl/utils/prim_subreg_ext.sv
read_file -rtl ./rtl/utils/prim_subreg.sv
read_file -rtl ./rtl/utils/sync_fifo.sv
read_file -rtl ./rtl/utils/up_counter.sv

read_file -rtl ./rtl/tinyriscv_soc_top.sv


#################################################

analyze -format sverilog ./rtl/core/defines.sv
analyze -format sverilog ./rtl/core/bpu.sv
analyze -format sverilog ./rtl/core/csr_reg.sv
analyze -format sverilog ./rtl/core/csr.sv
analyze -format sverilog ./rtl/core/divider.sv
analyze -format sverilog ./rtl/core/exception.sv
analyze -format sverilog ./rtl/core/exu_alu_datapath.sv
analyze -format sverilog ./rtl/core/exu_commit.sv
analyze -format sverilog ./rtl/core/exu_dispatch.sv
analyze -format sverilog ./rtl/core/exu_mem.sv
analyze -format sverilog ./rtl/core/exu_muldiv.sv
analyze -format sverilog ./rtl/core/exu_sqrt.sv
analyze -format sverilog ./rtl/core/exu.sv
analyze -format sverilog ./rtl/core/gpr_reg.sv
analyze -format sverilog ./rtl/core/idu_exu.sv
analyze -format sverilog ./rtl/core/idu.sv
analyze -format sverilog ./rtl/core/ifu_idu.sv
analyze -format sverilog ./rtl/core/ifu.sv
analyze -format sverilog ./rtl/core/pipe_ctrl.sv
analyze -format sverilog ./rtl/core/rst_gen.sv
analyze -format sverilog ./rtl/core/tinyriscv_core.sv

analyze -format sverilog ./rtl/debug/debug_rom.sv
analyze -format sverilog ./rtl/debug/jtag_def.sv
analyze -format sverilog ./rtl/debug/jtag_dm.sv
analyze -format sverilog ./rtl/debug/jtag_dmi.sv
analyze -format sverilog ./rtl/debug/jtag_dtm.sv
analyze -format sverilog ./rtl/debug/jtag_mem.sv
analyze -format sverilog ./rtl/debug/jtag_sba.sv
analyze -format sverilog ./rtl/debug/jtag_tap.sv
analyze -format sverilog ./rtl/debug/jtag_top.sv

analyze -format sverilog ./rtl/perips/flash_ctrl/flash_ctrl_reg_pkg.sv
analyze -format sverilog ./rtl/perips/flash_ctrl/flash_n25q/flash_n25q_pkg.sv
analyze -format sverilog ./rtl/perips/flash_ctrl/flash_n25q/flash_n25q_tran_pkg.sv
analyze -format sverilog ./rtl/perips/flash_ctrl/flash_n25q/flash_n25q_top.sv
analyze -format sverilog ./rtl/perips/flash_ctrl/flash_n25q/flash_n25q_tran_seq.sv
analyze -format sverilog ./rtl/perips/flash_ctrl/flash_ctrl_core.sv
analyze -format sverilog ./rtl/perips/flash_ctrl/flash_ctrl_reg_top.sv
analyze -format sverilog ./rtl/perips/flash_ctrl/flash_ctrl_top.sv

analyze -format sverilog ./rtl/perips/gpio/gpio_reg_pkg.sv
analyze -format sverilog ./rtl/perips/gpio/gpio_core.sv
analyze -format sverilog ./rtl/perips/gpio/gpio_reg_top.sv
analyze -format sverilog ./rtl/perips/gpio/gpio_top.sv

analyze -format sverilog ./rtl/perips/i2c/i2c_reg_pkg.sv
analyze -format sverilog ./rtl/perips/i2c/i2c_core.sv
analyze -format sverilog ./rtl/perips/i2c/i2c_master.sv
analyze -format sverilog ./rtl/perips/i2c/i2c_reg_top.sv
analyze -format sverilog ./rtl/perips/i2c/i2c_top.sv
analyze -format sverilog ./rtl/perips/i2c/i2c_slave.sv

analyze -format sverilog ./rtl/perips/pinmux/pinmux_reg_pkg.sv
analyze -format sverilog ./rtl/perips/pinmux/pinmux_core.sv
analyze -format sverilog ./rtl/perips/pinmux/pinmux_reg_top.sv
analyze -format sverilog ./rtl/perips/pinmux/pinmux_top.sv

analyze -format sverilog ./rtl/perips/rvic/rvic_reg_pkg.sv
analyze -format sverilog ./rtl/perips/rvic/rvic_core.sv
analyze -format sverilog ./rtl/perips/rvic/rvic_reg_top.sv
analyze -format sverilog ./rtl/perips/rvic/rvic_top.sv

analyze -format sverilog ./rtl/perips/spi/spi_reg_pkg.sv
analyze -format sverilog ./rtl/perips/spi/spi_core.sv
analyze -format sverilog ./rtl/perips/spi/spi_master.sv
analyze -format sverilog ./rtl/perips/spi/spi_reg_top.sv
analyze -format sverilog ./rtl/perips/spi/spi_top.sv
analyze -format sverilog ./rtl/perips/spi/spi_transmit_byte.sv

analyze -format sverilog ./rtl/perips/timer/timer_reg_pkg.sv
analyze -format sverilog ./rtl/perips/timer/timer_core.sv
analyze -format sverilog ./rtl/perips/timer/timer_reg_top.sv
analyze -format sverilog ./rtl/perips/timer/timer_top.sv

analyze -format sverilog ./rtl/perips/uart/uart_reg_pkg.sv
analyze -format sverilog ./rtl/perips/uart/uart_core.sv
analyze -format sverilog ./rtl/perips/uart/uart_reg_top.sv
analyze -format sverilog ./rtl/perips/uart/uart_rx.sv
analyze -format sverilog ./rtl/perips/uart/uart_top.sv
analyze -format sverilog ./rtl/perips/uart/uart_tx.sv


analyze -format sverilog ./rtl/perips/ram.sv
analyze -format sverilog ./rtl/perips/rom.sv

analyze -format sverilog ./rtl/sys_bus/obi_interconnect_master_sel.sv
analyze -format sverilog ./rtl/sys_bus/obi_interconnect_slave_sel.sv
analyze -format sverilog ./rtl/sys_bus/obi_interconnect.sv

analyze -format sverilog ./rtl/utils/cdc_2phase.sv
analyze -format sverilog ./rtl/utils/clk_div.sv
analyze -format sverilog ./rtl/utils/edge_detect.sv
analyze -format sverilog ./rtl/utils/gen_buf.sv
analyze -format sverilog ./rtl/utils/gen_dff.sv
analyze -format sverilog ./rtl/utils/prim_filter.sv
analyze -format sverilog ./rtl/utils/prim_subreg_arb.sv
analyze -format sverilog ./rtl/utils/prim_subreg_ext.sv
analyze -format sverilog ./rtl/utils/prim_subreg.sv
analyze -format sverilog ./rtl/utils/sync_fifo.sv
analyze -format sverilog ./rtl/utils/up_counter.sv

analyze -format sverilog ./rtl/tinyriscv_soc_top.sv