//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Fri Aug 15 21:20:08 2025
//Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=2,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk,
    din_i,
    done_flag_o,
    dout_o,
    reset,
    start_flag_i);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [31:0]din_i;
  output done_flag_o;
  output [31:0]dout_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  input start_flag_i;

  wire axis2fifo_0_data_ready;
  wire [31:0]axis2fifo_0_dout;
  wire [31:0]bit_reverse_accel_1_m_axis_TDATA;
  wire [0:0]bit_reverse_accel_1_m_axis_TLAST;
  wire bit_reverse_accel_1_s_axis_TREADY;
  wire clk_1;
  wire [31:0]din_0_1;
  wire [31:0]fifo2axis_0_s_axis_tdata;
  wire fifo2axis_0_s_axis_tvalid;
  wire fifo2axis_0_start_accel;
  wire reset_1;
  wire wr_en_0_1;

  assign clk_1 = clk;
  assign din_0_1 = din_i[31:0];
  assign done_flag_o = axis2fifo_0_data_ready;
  assign dout_o[31:0] = axis2fifo_0_dout;
  assign reset_1 = reset;
  assign wr_en_0_1 = start_flag_i;
  design_1_axis2fifo_0_0 axis2fifo_0
       (.clk(clk_1),
        .done(axis2fifo_0_data_ready),
        .dout(axis2fifo_0_dout),
        .last(bit_reverse_accel_1_m_axis_TLAST),
        .rst(reset_1),
        .s_axis_tdata(bit_reverse_accel_1_m_axis_TDATA));
  design_1_bit_reverse_accel_1_0 bit_reverse_accel_1
       (.ap_clk(clk_1),
        .ap_rst_n(fifo2axis_0_start_accel),
        .m_axis_TDATA(bit_reverse_accel_1_m_axis_TDATA),
        .m_axis_TLAST(bit_reverse_accel_1_m_axis_TLAST),
        .m_axis_TREADY(1'b1),
        .s_axis_TDATA(fifo2axis_0_s_axis_tdata),
        .s_axis_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_TLAST(1'b0),
        .s_axis_TREADY(bit_reverse_accel_1_s_axis_TREADY),
        .s_axis_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_TVALID(fifo2axis_0_s_axis_tvalid));
  design_1_fifo2axis_0_0 fifo2axis_0
       (.clk(clk_1),
        .fifo_data(din_0_1),
        .rst(reset_1),
        .s_axis_tdata(fifo2axis_0_s_axis_tdata),
        .s_axis_tlast(bit_reverse_accel_1_m_axis_TLAST),
        .s_axis_tready(bit_reverse_accel_1_s_axis_TREADY),
        .s_axis_tvalid(fifo2axis_0_s_axis_tvalid),
        .start(wr_en_0_1),
        .start_accel(fifo2axis_0_start_accel));
endmodule
