############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project bit_reversal
set_top bit_reverse_accel
add_files bit_reversal/Diseno/bit_reversal_accel.cpp
add_files bit_reversal/Diseno/bit_reversal_accel.h
add_files -tb bit_reversal/Testbench/testbench.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7a200t-fbg676-2}
create_clock -period 10 -name default
config_cosim -tool xsim
config_export -flow syn -format ip_catalog -output /home/fluctlights/HlsProjects/bit_reversal/RTL_export -rtl verilog -vivado_clock 10
source "./bit_reversal/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog -output /home/fluctlights/HlsProjects/bit_reversal/RTL_export
