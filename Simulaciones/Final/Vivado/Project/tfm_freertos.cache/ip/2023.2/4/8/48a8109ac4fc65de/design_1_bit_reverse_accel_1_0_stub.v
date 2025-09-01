// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Aug 15 18:28:44 2025
// Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_bit_reverse_accel_1_0_stub.v
// Design      : design_1_bit_reverse_accel_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bit_reverse_accel,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, s_axis_TVALID, s_axis_TREADY, 
  s_axis_TDATA, s_axis_TLAST, s_axis_TKEEP, s_axis_TSTRB, m_axis_TVALID, m_axis_TREADY, 
  m_axis_TDATA, m_axis_TLAST, m_axis_TKEEP, m_axis_TSTRB)
/* synthesis syn_black_box black_box_pad_pin="ap_rst_n,s_axis_TVALID,s_axis_TREADY,s_axis_TDATA[31:0],s_axis_TLAST[0:0],s_axis_TKEEP[3:0],s_axis_TSTRB[3:0],m_axis_TVALID,m_axis_TREADY,m_axis_TDATA[31:0],m_axis_TLAST[0:0],m_axis_TKEEP[3:0],m_axis_TSTRB[3:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  input s_axis_TVALID;
  output s_axis_TREADY;
  input [31:0]s_axis_TDATA;
  input [0:0]s_axis_TLAST;
  input [3:0]s_axis_TKEEP;
  input [3:0]s_axis_TSTRB;
  output m_axis_TVALID;
  input m_axis_TREADY;
  output [31:0]m_axis_TDATA;
  output [0:0]m_axis_TLAST;
  output [3:0]m_axis_TKEEP;
  output [3:0]m_axis_TSTRB;
endmodule
