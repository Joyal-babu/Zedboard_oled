

connect_debug_port u_ila_0/probe1 [get_nets [list design_1_i/spi_control_top_0/inst/spi_data_genr_inst1/data]]
connect_debug_port u_ila_0/probe5 [get_nets [list design_1_i/spi_control_top_0/inst/spi_control_inst1/state]]
connect_debug_port u_ila_0/probe6 [get_nets [list design_1_i/spi_control_top_0/inst/spi_control_inst1/valid]]
connect_debug_port u_ila_1/probe0 [get_nets [list {design_1_i/spi_control_top_0/inst/spi_control_inst1/in6[1]} {design_1_i/spi_control_top_0/inst/spi_control_inst1/in6[2]} {design_1_i/spi_control_top_0/inst/spi_control_inst1/in6[3]} {design_1_i/spi_control_top_0/inst/spi_control_inst1/in6[4]} {design_1_i/spi_control_top_0/inst/spi_control_inst1/in6[5]} {design_1_i/spi_control_top_0/inst/spi_control_inst1/in6[6]} {design_1_i/spi_control_top_0/inst/spi_control_inst1/in6[7]}]]

set_property PACKAGE_PIN T22 [get_ports o_sdone_0]
set_property IOSTANDARD LVCMOS33 [get_ports o_sdone_0]
create_generated_clock -name design_1_i/spi_control_top_0/inst/spi_control_inst1/sclock -source [get_pins design_1_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0] -divide_by 10 [get_pins design_1_i/spi_control_top_0/inst/spi_control_inst1/sclock_reg/Q]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_1_clkfbout_buf_design_1_clk_wiz_0_0]
