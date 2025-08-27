//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Fri Aug 15 21:10:11 2025
//Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module design_1_wrapper
   (input [31:0] din_i,
    output done_flag_o,
    output [31:0]dout_o,
    input start_flag_i);

//  input [31:0]din_i;
//  output done_flag_o;
//  output [31:0]dout_o;
//  input start_flag_i;

  reg clk = 1;
  reg reset = 1;
  
//  wire [31:0]din_i;
//  wire done_flag_o;
//  wire [31:0]dout_o;
//  wire start_flag_i;

  design_1 design_1_i
       (.clk(clk),
        .din_i(din_i),
        .done_flag_o(done_flag_o),
        .dout_o(dout_o),
        .reset(reset),
        .start_flag_i(start_flag_i));
        
  // 100 MHz clock = 10 ns period
  always #5 clk = ~clk;

  initial begin
    #20 reset = 0;
  end
  
endmodule