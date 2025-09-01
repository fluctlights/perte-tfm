//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Tue Aug  5 00:31:02 2025
//Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst_n,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tstrb,
    m_axis_tvalid,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tready,
    s_axis_tstrb,
    s_axis_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) output [0:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) output [3:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis " *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis " *) input [0:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis " *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis " *) input [3:0]s_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis " *) input s_axis_tvalid;

  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_n_0_1;
  wire [31:0]hls_inst_m_axis_TDATA;
  wire [3:0]hls_inst_m_axis_TKEEP;
  wire [0:0]hls_inst_m_axis_TLAST;
  wire hls_inst_m_axis_TREADY;
  wire [3:0]hls_inst_m_axis_TSTRB;
  wire hls_inst_m_axis_TVALID;
  wire [31:0]s_axis_0_1_TDATA;
  wire [3:0]s_axis_0_1_TKEEP;
  wire [0:0]s_axis_0_1_TLAST;
  wire s_axis_0_1_TREADY;
  wire [3:0]s_axis_0_1_TSTRB;
  wire s_axis_0_1_TVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_m_axis_TREADY = m_axis_tready;
  assign m_axis_tdata[31:0] = hls_inst_m_axis_TDATA;
  assign m_axis_tkeep[3:0] = hls_inst_m_axis_TKEEP;
  assign m_axis_tlast[0] = hls_inst_m_axis_TLAST;
  assign m_axis_tstrb[3:0] = hls_inst_m_axis_TSTRB;
  assign m_axis_tvalid = hls_inst_m_axis_TVALID;
  assign s_axis_0_1_TDATA = s_axis_tdata[31:0];
  assign s_axis_0_1_TKEEP = s_axis_tkeep[3:0];
  assign s_axis_0_1_TLAST = s_axis_tlast[0];
  assign s_axis_0_1_TSTRB = s_axis_tstrb[3:0];
  assign s_axis_0_1_TVALID = s_axis_tvalid;
  assign s_axis_tready = s_axis_0_1_TREADY;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst_n(ap_rst_n_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .m_axis_TDATA(hls_inst_m_axis_TDATA),
        .m_axis_TKEEP(hls_inst_m_axis_TKEEP),
        .m_axis_TLAST(hls_inst_m_axis_TLAST),
        .m_axis_TREADY(hls_inst_m_axis_TREADY),
        .m_axis_TSTRB(hls_inst_m_axis_TSTRB),
        .m_axis_TVALID(hls_inst_m_axis_TVALID),
        .s_axis_TDATA(s_axis_0_1_TDATA),
        .s_axis_TKEEP(s_axis_0_1_TKEEP),
        .s_axis_TLAST(s_axis_0_1_TLAST),
        .s_axis_TREADY(s_axis_0_1_TREADY),
        .s_axis_TSTRB(s_axis_0_1_TSTRB),
        .s_axis_TVALID(s_axis_0_1_TVALID));
endmodule
