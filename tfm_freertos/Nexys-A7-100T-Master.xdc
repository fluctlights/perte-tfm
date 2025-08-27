
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
set_property SEVERITY {Warning} [get_drc_checks LUTLP-1]

## Clock
create_clock -period 10.00 [get_ports clk]
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <design_1_wrapper/clk>]

## Start Flag Input
set_property PACKAGE_PIN J15 [get_ports start_flag_i]
set_property IOSTANDARD LVCMOS33 [get_ports start_flag_i]

## Done Flag Output
set_property PACKAGE_PIN K15 [get_ports done_flag_o]
set_property IOSTANDARD LVCMOS33 [get_ports done_flag_o]

### DIN bus [31:0]
set_property -dict { PACKAGE_PIN V4   IOSTANDARD LVCMOS33 } [get_ports { din_i[0] }];
set_property -dict { PACKAGE_PIN W4   IOSTANDARD LVCMOS33 } [get_ports { din_i[1] }];
set_property -dict { PACKAGE_PIN Y4   IOSTANDARD LVCMOS33 } [get_ports { din_i[2] }];
set_property -dict { PACKAGE_PIN AA4  IOSTANDARD LVCMOS33 } [get_ports { din_i[3] }];
set_property -dict { PACKAGE_PIN AB4  IOSTANDARD LVCMOS33 } [get_ports { din_i[4] }];
set_property -dict { PACKAGE_PIN AC4  IOSTANDARD LVCMOS33 } [get_ports { din_i[5] }];
set_property -dict { PACKAGE_PIN AD4  IOSTANDARD LVCMOS33 } [get_ports { din_i[6] }];
set_property -dict { PACKAGE_PIN AE4  IOSTANDARD LVCMOS33 } [get_ports { din_i[7] }];
set_property -dict { PACKAGE_PIN AF4  IOSTANDARD LVCMOS33 } [get_ports { din_i[8] }];
set_property -dict { PACKAGE_PIN AG4  IOSTANDARD LVCMOS33 } [get_ports { din_i[9] }];
set_property -dict { PACKAGE_PIN AH4  IOSTANDARD LVCMOS33 } [get_ports { din_i[10] }];
set_property -dict { PACKAGE_PIN AJ4  IOSTANDARD LVCMOS33 } [get_ports { din_i[11] }];
set_property -dict { PACKAGE_PIN AK4  IOSTANDARD LVCMOS33 } [get_ports { din_i[12] }];
set_property -dict { PACKAGE_PIN AL4  IOSTANDARD LVCMOS33 } [get_ports { din_i[13] }];
set_property -dict { PACKAGE_PIN AM4  IOSTANDARD LVCMOS33 } [get_ports { din_i[14] }];
set_property -dict { PACKAGE_PIN AN4  IOSTANDARD LVCMOS33 } [get_ports { din_i[15] }];
set_property -dict { PACKAGE_PIN AP4  IOSTANDARD LVCMOS33 } [get_ports { din_i[16] }];
set_property -dict { PACKAGE_PIN AR4  IOSTANDARD LVCMOS33 } [get_ports { din_i[17] }];
set_property -dict { PACKAGE_PIN AT4  IOSTANDARD LVCMOS33 } [get_ports { din_i[18] }];
set_property -dict { PACKAGE_PIN AU4  IOSTANDARD LVCMOS33 } [get_ports { din_i[19] }];
set_property -dict { PACKAGE_PIN AV4  IOSTANDARD LVCMOS33 } [get_ports { din_i[20] }];
set_property -dict { PACKAGE_PIN AW4  IOSTANDARD LVCMOS33 } [get_ports { din_i[21] }];
set_property -dict { PACKAGE_PIN AY4  IOSTANDARD LVCMOS33 } [get_ports { din_i[22] }];
set_property -dict { PACKAGE_PIN BA4  IOSTANDARD LVCMOS33 } [get_ports { din_i[23] }];
set_property -dict { PACKAGE_PIN BB4  IOSTANDARD LVCMOS33 } [get_ports { din_i[24] }];
set_property -dict { PACKAGE_PIN BC4  IOSTANDARD LVCMOS33 } [get_ports { din_i[25] }];
set_property -dict { PACKAGE_PIN BD4  IOSTANDARD LVCMOS33 } [get_ports { din_i[26] }];
set_property -dict { PACKAGE_PIN BE4  IOSTANDARD LVCMOS33 } [get_ports { din_i[27] }];
set_property -dict { PACKAGE_PIN BF4  IOSTANDARD LVCMOS33 } [get_ports { din_i[28] }];
set_property -dict { PACKAGE_PIN BG4  IOSTANDARD LVCMOS33 } [get_ports { din_i[29] }];
set_property -dict { PACKAGE_PIN BH4  IOSTANDARD LVCMOS33 } [get_ports { din_i[30] }];
set_property -dict { PACKAGE_PIN BJ4  IOSTANDARD LVCMOS33 } [get_ports { din_i[31] }];

## DOUT bus [31:0]
set_property -dict { PACKAGE_PIN V5   IOSTANDARD LVCMOS33 } [get_ports { dout_o[0] }];
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports { dout_o[1] }];
set_property -dict { PACKAGE_PIN Y5   IOSTANDARD LVCMOS33 } [get_ports { dout_o[2] }];
set_property -dict { PACKAGE_PIN AA5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[3] }];
set_property -dict { PACKAGE_PIN AB5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[4] }];
set_property -dict { PACKAGE_PIN AC5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[5] }];
set_property -dict { PACKAGE_PIN AD5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[6] }];
set_property -dict { PACKAGE_PIN AE5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[7] }];
set_property -dict { PACKAGE_PIN AF5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[8] }];
set_property -dict { PACKAGE_PIN AG5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[9] }];
set_property -dict { PACKAGE_PIN AH5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[10] }];
set_property -dict { PACKAGE_PIN AJ5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[11] }];
set_property -dict { PACKAGE_PIN AK5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[12] }];
set_property -dict { PACKAGE_PIN AL5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[13] }];
set_property -dict { PACKAGE_PIN AM5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[14] }];
set_property -dict { PACKAGE_PIN AN5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[15] }];
set_property -dict { PACKAGE_PIN AP5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[16] }];
set_property -dict { PACKAGE_PIN AR5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[17] }];
set_property -dict { PACKAGE_PIN AT5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[18] }];
set_property -dict { PACKAGE_PIN AU5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[19] }];
set_property -dict { PACKAGE_PIN AV5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[20] }];
set_property -dict { PACKAGE_PIN AW5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[21] }];
set_property -dict { PACKAGE_PIN AY5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[22] }];
set_property -dict { PACKAGE_PIN BA5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[23] }];
set_property -dict { PACKAGE_PIN BB5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[24] }];
set_property -dict { PACKAGE_PIN BC5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[25] }];
set_property -dict { PACKAGE_PIN BD5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[26] }];
set_property -dict { PACKAGE_PIN BE5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[27] }];
set_property -dict { PACKAGE_PIN BF5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[28] }];
set_property -dict { PACKAGE_PIN BG5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[29] }];
set_property -dict { PACKAGE_PIN BH5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[30] }];
set_property -dict { PACKAGE_PIN BJ5  IOSTANDARD LVCMOS33 } [get_ports { dout_o[31] }];



