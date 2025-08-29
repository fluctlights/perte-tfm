// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Aug 15 19:01:30 2025
// Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo2axis_0_0_stub.v
// Design      : design_1_fifo2axis_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fifo2axis,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, fifo_data, wr_en, s_axis_tdata, 
  s_axis_tvalid, s_axis_tready, start_accel, s_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="rst,fifo_data[31:0],wr_en,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tready,start_accel,s_axis_tlast" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input [31:0]fifo_data;
  input wr_en;
  output [31:0]s_axis_tdata;
  output s_axis_tvalid;
  input s_axis_tready;
  output start_accel;
  input s_axis_tlast;
endmodule
