## Clock signal
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clkin]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clkin]


set_input_delay -clock [get_clocks sys_clk_pin] -rise -min 0.500 [get_ports clkin]
