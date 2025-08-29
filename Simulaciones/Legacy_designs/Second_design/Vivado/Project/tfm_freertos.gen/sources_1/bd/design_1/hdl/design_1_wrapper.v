//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Sat Aug 16 21:21:58 2025
//Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk,
    din_i,
    done_flag_o,
    dout_o,
    reset,
    start_flag_i);
  input clk;
  input [31:0]din_i;
  output done_flag_o;
  output [31:0]dout_o;
  input reset;
  input start_flag_i;

  wire clk;
  wire [31:0]din_i;
  wire done_flag_o;
  wire [31:0]dout_o;
  wire reset;
  wire start_flag_i;

  design_1 design_1_i
       (.clk(clk),
        .din_i(din_i),
        .done_flag_o(done_flag_o),
        .dout_o(dout_o),
        .reset(reset),
        .start_flag_i(start_flag_i));
endmodule
