#set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_hpd_tri_i[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {HDMI_OEN[0]}]
#set_property PACKAGE_PIN E18 [get_ports {hdmi_hpd_tri_i[0]}]
#set_property PACKAGE_PIN F17 [get_ports {HDMI_OEN[0]}]
#set_property PACKAGE_PIN H16 [get_ports TMDS_clk_p]
#set_property PACKAGE_PIN D19 [get_ports {TMDS_data_p[0]}]
#set_property PACKAGE_PIN C20 [get_ports {TMDS_data_p[1]}]
#set_property PACKAGE_PIN B19 [get_ports {TMDS_data_p[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {pl_led4_tri_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pl_led4_tri_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pl_led4_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pl_led4_tri_o[0]}]
set_property PACKAGE_PIN M15 [get_ports {pl_led4_tri_o[0]}]
set_property PACKAGE_PIN G14 [get_ports {pl_led4_tri_o[1]}]
set_property PACKAGE_PIN M17 [get_ports {pl_led4_tri_o[2]}]
set_property PACKAGE_PIN G15 [get_ports {pl_led4_tri_o[3]}]


set_property PACKAGE_PIN T14 [get_ports lvds_clk_p_o]
set_property PACKAGE_PIN N18 [get_ports {lvds_data_p_o[0]}]
set_property PACKAGE_PIN N20 [get_ports {lvds_data_p_o[1]}]
set_property PACKAGE_PIN T20 [get_ports {lvds_data_p_o[2]}]
set_property PACKAGE_PIN T16 [get_ports {lvds_data_p_o[3]}]
set_property IOSTANDARD BLVDS_25 [get_ports lvds_clk_p_o]
set_property IOSTANDARD BLVDS_25 [get_ports {lvds_data_p_o[0]}]
set_property IOSTANDARD BLVDS_25 [get_ports {lvds_data_n_o[0]}]
set_property IOSTANDARD BLVDS_25 [get_ports {lvds_data_p_o[1]}]
set_property IOSTANDARD BLVDS_25 [get_ports {lvds_data_p_o[2]}]
set_property IOSTANDARD BLVDS_25 [get_ports {lvds_data_p_o[3]}]
set_property PACKAGE_PIN G14 [get_ports {PL_LED4[1]}]
set_property PACKAGE_PIN M17 [get_ports {PL_LED4[2]}]
set_property PACKAGE_PIN M15 [get_ports {PL_LED4[3]}]
set_property PACKAGE_PIN G15 [get_ports led_o]
set_property PACKAGE_PIN K17 [get_ports clk_fpga_i]

set_property IOSTANDARD LVCMOS33 [get_ports {PL_LED4[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports clk_fpga_i]
set_property IOSTANDARD LVCMOS33 [get_ports led_o]
set_property IOSTANDARD LVCMOS33 [get_ports {PL_LED4[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PL_LED4[1]}]

