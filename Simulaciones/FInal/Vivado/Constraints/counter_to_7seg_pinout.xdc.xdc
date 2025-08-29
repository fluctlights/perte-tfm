##Switches
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports reset]

## LEDs
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { clk_out }]; #IO_L18P_T2_A24_15 Sch=led[0]

set_property IOSTANDARD LVCMOS33 [get_ports {display_output[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_output[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_output[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_output[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_output[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_output[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_output[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_output[0]}]

set_property PACKAGE_PIN T10 [get_ports {display_output[7]}]
set_property PACKAGE_PIN R10 [get_ports {display_output[6]}]
set_property PACKAGE_PIN K16 [get_ports {display_output[5]}]
set_property PACKAGE_PIN K13 [get_ports {display_output[4]}]
set_property PACKAGE_PIN P15 [get_ports {display_output[3]}]
set_property PACKAGE_PIN T11 [get_ports {display_output[2]}]
set_property PACKAGE_PIN L18 [get_ports {display_output[1]}]
set_property PACKAGE_PIN H15 [get_ports {display_output[0]}]

set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports {AN[0]}]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports {AN[1]}]
set_property -dict {PACKAGE_PIN T9 IOSTANDARD LVCMOS33} [get_ports {AN[2]}]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports {AN[3]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {AN[4]}]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports {AN[5]}]
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports {AN[6]}]
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports {AN[7]}]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]


