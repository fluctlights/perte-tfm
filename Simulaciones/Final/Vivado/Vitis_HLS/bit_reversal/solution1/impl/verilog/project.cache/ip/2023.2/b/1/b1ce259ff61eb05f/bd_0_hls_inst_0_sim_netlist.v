// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Aug  5 00:31:46 2025
// Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,bit_reverse_accel,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "bit_reverse_accel,Vivado 2023.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    s_axis_TVALID,
    s_axis_TREADY,
    s_axis_TLAST,
    s_axis_TDATA,
    s_axis_TKEEP,
    s_axis_TSTRB,
    m_axis_TVALID,
    m_axis_TREADY,
    m_axis_TLAST,
    m_axis_TDATA,
    m_axis_TKEEP,
    m_axis_TSTRB);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axis:m_axis, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input [0:0]s_axis_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [3:0]s_axis_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TSTRB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input [3:0]s_axis_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output [0:0]m_axis_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) output [3:0]m_axis_TSTRB;

  wire \<const0> ;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [31:0]m_axis_TDATA;
  wire [0:0]m_axis_TLAST;
  wire m_axis_TREADY;
  wire m_axis_TVALID;
  wire [31:0]s_axis_TDATA;
  wire s_axis_TREADY;
  wire s_axis_TVALID;
  wire [3:0]NLW_inst_m_axis_TKEEP_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_TSTRB_UNCONNECTED;

  assign m_axis_TKEEP[3] = \<const0> ;
  assign m_axis_TKEEP[2] = \<const0> ;
  assign m_axis_TKEEP[1] = \<const0> ;
  assign m_axis_TKEEP[0] = \<const0> ;
  assign m_axis_TSTRB[3] = \<const0> ;
  assign m_axis_TSTRB[2] = \<const0> ;
  assign m_axis_TSTRB[1] = \<const0> ;
  assign m_axis_TSTRB[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .m_axis_TDATA(m_axis_TDATA),
        .m_axis_TKEEP(NLW_inst_m_axis_TKEEP_UNCONNECTED[3:0]),
        .m_axis_TLAST(m_axis_TLAST),
        .m_axis_TREADY(m_axis_TREADY),
        .m_axis_TSTRB(NLW_inst_m_axis_TSTRB_UNCONNECTED[3:0]),
        .m_axis_TVALID(m_axis_TVALID),
        .s_axis_TDATA(s_axis_TDATA),
        .s_axis_TKEEP({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_TLAST(1'b0),
        .s_axis_TREADY(s_axis_TREADY),
        .s_axis_TSTRB({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_TVALID(s_axis_TVALID));
endmodule

(* ap_ST_fsm_pp0_stage0 = "1'b1" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    s_axis_TVALID,
    m_axis_TREADY,
    s_axis_TDATA,
    s_axis_TREADY,
    s_axis_TKEEP,
    s_axis_TSTRB,
    s_axis_TLAST,
    m_axis_TDATA,
    m_axis_TVALID,
    m_axis_TKEEP,
    m_axis_TSTRB,
    m_axis_TLAST);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input s_axis_TVALID;
  input m_axis_TREADY;
  input [31:0]s_axis_TDATA;
  output s_axis_TREADY;
  input [3:0]s_axis_TKEEP;
  input [3:0]s_axis_TSTRB;
  input [0:0]s_axis_TLAST;
  output [31:0]m_axis_TDATA;
  output m_axis_TVALID;
  output [3:0]m_axis_TKEEP;
  output [3:0]m_axis_TSTRB;
  output [0:0]m_axis_TLAST;

  wire \<const0> ;
  wire [31:0]B_V_data_1_data_out;
  wire B_V_data_1_sel_wr;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_idle;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire flow_control_loop_pipe_U_n_4;
  wire flow_control_loop_pipe_U_n_5;
  wire flow_control_loop_pipe_U_n_6;
  wire flow_control_loop_pipe_U_n_7;
  wire flow_control_loop_pipe_U_n_8;
  wire \i_fu_72_reg_n_3_[0] ;
  wire \i_fu_72_reg_n_3_[1] ;
  wire \i_fu_72_reg_n_3_[2] ;
  wire [31:0]m_axis_TDATA;
  wire [0:0]m_axis_TLAST;
  wire m_axis_TREADY;
  wire m_axis_TREADY_int_regslice;
  wire m_axis_TVALID;
  wire \output_word_last_reg_167_reg_n_3_[0] ;
  wire regslice_both_m_axis_V_data_V_U_n_5;
  wire regslice_both_m_axis_V_data_V_U_n_6;
  wire regslice_both_m_axis_V_data_V_U_n_7;
  wire regslice_both_m_axis_V_last_V_U_n_3;
  wire regslice_both_s_axis_V_data_V_U_n_10;
  wire regslice_both_s_axis_V_data_V_U_n_6;
  wire regslice_both_s_axis_V_data_V_U_n_7;
  wire [31:0]reversed_reg_162;
  wire [31:0]s_axis_TDATA;
  wire s_axis_TREADY;
  wire s_axis_TVALID;
  wire s_axis_TVALID_int_regslice;

  assign m_axis_TKEEP[3] = \<const0> ;
  assign m_axis_TKEEP[2] = \<const0> ;
  assign m_axis_TKEEP[1] = \<const0> ;
  assign m_axis_TKEEP[0] = \<const0> ;
  assign m_axis_TSTRB[3] = \<const0> ;
  assign m_axis_TSTRB[2] = \<const0> ;
  assign m_axis_TSTRB[1] = \<const0> ;
  assign m_axis_TSTRB[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_s_axis_V_data_V_U_n_7),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_s_axis_V_data_V_U_n_10),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h01)) 
    ap_idle_INST_0
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ap_idle));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_flow_control_loop_pipe flow_control_loop_pipe_U
       (.\B_V_data_1_state_reg[0] (flow_control_loop_pipe_U_n_4),
        .\B_V_data_1_state_reg[0]_0 (flow_control_loop_pipe_U_n_6),
        .ap_clk(ap_clk),
        .ap_loop_exit_ready_pp0_iter1_reg_reg(\i_fu_72_reg_n_3_[0] ),
        .ap_loop_init(ap_loop_init),
        .ap_loop_init_reg_0(flow_control_loop_pipe_U_n_8),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .\i_fu_72_reg[1] (flow_control_loop_pipe_U_n_5),
        .\i_fu_72_reg[1]_0 (\i_fu_72_reg_n_3_[1] ),
        .\i_fu_72_reg[2] (regslice_both_m_axis_V_data_V_U_n_5),
        .\i_fu_72_reg[2]_0 (\i_fu_72_reg_n_3_[2] ),
        .\output_word_last_reg_167_reg[0] (flow_control_loop_pipe_U_n_7),
        .\output_word_last_reg_167_reg[0]_0 (\output_word_last_reg_167_reg_n_3_[0] ),
        .s_axis_TVALID_int_regslice(s_axis_TVALID_int_regslice));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_72_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_s_axis_V_data_V_U_n_6),
        .Q(\i_fu_72_reg_n_3_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_72_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_6),
        .Q(\i_fu_72_reg_n_3_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_72_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_4),
        .Q(\i_fu_72_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \output_word_last_reg_167_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_7),
        .Q(\output_word_last_reg_167_reg_n_3_[0] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both regslice_both_m_axis_V_data_V_U
       (.B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .B_V_data_1_sel_wr_reg_0(regslice_both_m_axis_V_last_V_U_n_3),
        .\B_V_data_1_state_reg[0]_0 (m_axis_TVALID),
        .\B_V_data_1_state_reg[0]_1 (regslice_both_m_axis_V_data_V_U_n_5),
        .\B_V_data_1_state_reg[0]_2 (flow_control_loop_pipe_U_n_8),
        .\B_V_data_1_state_reg[1]_0 (regslice_both_m_axis_V_data_V_U_n_6),
        .Q(reversed_reg_162),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg(regslice_both_m_axis_V_data_V_U_n_7),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .m_axis_TDATA(m_axis_TDATA),
        .m_axis_TREADY(m_axis_TREADY),
        .m_axis_TREADY_int_regslice(m_axis_TREADY_int_regslice));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both__parameterized1 regslice_both_m_axis_V_last_V_U
       (.\B_V_data_1_payload_A_reg[0]_0 (\output_word_last_reg_167_reg_n_3_[0] ),
        .B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .B_V_data_1_sel_wr_reg_0(regslice_both_m_axis_V_data_V_U_n_7),
        .\B_V_data_1_state_reg[1]_0 (regslice_both_m_axis_V_last_V_U_n_3),
        .\B_V_data_1_state_reg[1]_1 (flow_control_loop_pipe_U_n_8),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .m_axis_TLAST(m_axis_TLAST),
        .m_axis_TREADY(m_axis_TREADY),
        .m_axis_TREADY_int_regslice(m_axis_TREADY_int_regslice),
        .m_axis_TVALID(m_axis_TVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both_0 regslice_both_s_axis_V_data_V_U
       (.\B_V_data_1_state_reg[0]_0 (regslice_both_s_axis_V_data_V_U_n_6),
        .\B_V_data_1_state_reg[1]_0 (s_axis_TREADY),
        .D({B_V_data_1_data_out[0],B_V_data_1_data_out[1],B_V_data_1_data_out[2],B_V_data_1_data_out[3],B_V_data_1_data_out[4],B_V_data_1_data_out[5],B_V_data_1_data_out[6],B_V_data_1_data_out[7],B_V_data_1_data_out[8],B_V_data_1_data_out[9],B_V_data_1_data_out[10],B_V_data_1_data_out[11],B_V_data_1_data_out[12],B_V_data_1_data_out[13],B_V_data_1_data_out[14],B_V_data_1_data_out[15],B_V_data_1_data_out[16],B_V_data_1_data_out[17],B_V_data_1_data_out[18],B_V_data_1_data_out[19],B_V_data_1_data_out[20],B_V_data_1_data_out[21],B_V_data_1_data_out[22],B_V_data_1_data_out[23],B_V_data_1_data_out[24],B_V_data_1_data_out[25],B_V_data_1_data_out[26],B_V_data_1_data_out[27],B_V_data_1_data_out[28],B_V_data_1_data_out[29],B_V_data_1_data_out[30],B_V_data_1_data_out[31]}),
        .E(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_done_0(regslice_both_m_axis_V_data_V_U_n_6),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg(regslice_both_s_axis_V_data_V_U_n_7),
        .ap_enable_reg_pp0_iter1_reg_0(regslice_both_s_axis_V_data_V_U_n_10),
        .ap_enable_reg_pp0_iter1_reg_1(flow_control_loop_pipe_U_n_5),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_loop_init(ap_loop_init),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .\i_fu_72_reg[0] (regslice_both_m_axis_V_data_V_U_n_5),
        .\i_fu_72_reg[0]_0 (\i_fu_72_reg_n_3_[0] ),
        .\i_fu_72_reg[0]_1 (\i_fu_72_reg_n_3_[2] ),
        .\i_fu_72_reg[0]_2 (\i_fu_72_reg_n_3_[1] ),
        .s_axis_TDATA(s_axis_TDATA),
        .s_axis_TVALID(s_axis_TVALID),
        .s_axis_TVALID_int_regslice(s_axis_TVALID_int_regslice));
  FDRE \reversed_reg_162_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[31]),
        .Q(reversed_reg_162[0]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[10] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[21]),
        .Q(reversed_reg_162[10]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[11] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[20]),
        .Q(reversed_reg_162[11]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[12] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[19]),
        .Q(reversed_reg_162[12]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[13] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[18]),
        .Q(reversed_reg_162[13]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[14] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[17]),
        .Q(reversed_reg_162[14]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[15] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[16]),
        .Q(reversed_reg_162[15]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[16] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[15]),
        .Q(reversed_reg_162[16]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[17] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[14]),
        .Q(reversed_reg_162[17]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[18] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[13]),
        .Q(reversed_reg_162[18]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[19] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[12]),
        .Q(reversed_reg_162[19]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[30]),
        .Q(reversed_reg_162[1]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[20] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[11]),
        .Q(reversed_reg_162[20]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[21] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[10]),
        .Q(reversed_reg_162[21]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[22] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[9]),
        .Q(reversed_reg_162[22]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[23] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[8]),
        .Q(reversed_reg_162[23]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[24] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[7]),
        .Q(reversed_reg_162[24]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[25] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[6]),
        .Q(reversed_reg_162[25]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[26] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[5]),
        .Q(reversed_reg_162[26]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[27] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[4]),
        .Q(reversed_reg_162[27]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[28] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[3]),
        .Q(reversed_reg_162[28]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[29] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[2]),
        .Q(reversed_reg_162[29]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[29]),
        .Q(reversed_reg_162[2]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[30] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[1]),
        .Q(reversed_reg_162[30]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[31] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[0]),
        .Q(reversed_reg_162[31]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[28]),
        .Q(reversed_reg_162[3]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[27]),
        .Q(reversed_reg_162[4]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[26]),
        .Q(reversed_reg_162[5]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[25]),
        .Q(reversed_reg_162[6]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[24]),
        .Q(reversed_reg_162[7]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[23]),
        .Q(reversed_reg_162[8]),
        .R(1'b0));
  FDRE \reversed_reg_162_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(B_V_data_1_data_out[22]),
        .Q(reversed_reg_162[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_flow_control_loop_pipe
   (ap_loop_init,
    \B_V_data_1_state_reg[0] ,
    \i_fu_72_reg[1] ,
    \B_V_data_1_state_reg[0]_0 ,
    \output_word_last_reg_167_reg[0] ,
    ap_loop_init_reg_0,
    ap_ready,
    ap_clk,
    s_axis_TVALID_int_regslice,
    \i_fu_72_reg[2] ,
    ap_start,
    \i_fu_72_reg[2]_0 ,
    \i_fu_72_reg[1]_0 ,
    \output_word_last_reg_167_reg[0]_0 ,
    ap_loop_exit_ready_pp0_iter1_reg_reg,
    ap_rst_n);
  output ap_loop_init;
  output \B_V_data_1_state_reg[0] ;
  output \i_fu_72_reg[1] ;
  output \B_V_data_1_state_reg[0]_0 ;
  output \output_word_last_reg_167_reg[0] ;
  output ap_loop_init_reg_0;
  output ap_ready;
  input ap_clk;
  input s_axis_TVALID_int_regslice;
  input \i_fu_72_reg[2] ;
  input ap_start;
  input \i_fu_72_reg[2]_0 ;
  input \i_fu_72_reg[1]_0 ;
  input \output_word_last_reg_167_reg[0]_0 ;
  input ap_loop_exit_ready_pp0_iter1_reg_reg;
  input ap_rst_n;

  wire \B_V_data_1_state_reg[0] ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire ap_clk;
  wire ap_loop_exit_ready_pp0_iter1_reg_reg;
  wire ap_loop_init;
  wire ap_loop_init_i_1_n_3;
  wire ap_loop_init_reg_0;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire \i_fu_72[1]_i_2_n_3 ;
  wire \i_fu_72[2]_i_2_n_3 ;
  wire \i_fu_72_reg[1] ;
  wire \i_fu_72_reg[1]_0 ;
  wire \i_fu_72_reg[2] ;
  wire \i_fu_72_reg[2]_0 ;
  wire \output_word_last_reg_167[0]_i_2_n_3 ;
  wire \output_word_last_reg_167_reg[0] ;
  wire \output_word_last_reg_167_reg[0]_0 ;
  wire s_axis_TVALID_int_regslice;

  LUT6 #(
    .INIT(64'hFFFFFFFF0010FFFF)) 
    \B_V_data_1_state[0]_i_2 
       (.I0(ap_loop_init),
        .I1(ap_loop_exit_ready_pp0_iter1_reg_reg),
        .I2(\i_fu_72_reg[2]_0 ),
        .I3(\i_fu_72_reg[1]_0 ),
        .I4(ap_start),
        .I5(s_axis_TVALID_int_regslice),
        .O(ap_loop_init_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    ap_done_INST_0_i_1
       (.I0(\i_fu_72_reg[1]_0 ),
        .I1(\i_fu_72_reg[2]_0 ),
        .I2(ap_loop_exit_ready_pp0_iter1_reg_reg),
        .I3(ap_loop_init),
        .O(\i_fu_72_reg[1] ));
  LUT6 #(
    .INIT(64'hCFCFCFCFFF4FCFCF)) 
    ap_loop_init_i_1
       (.I0(s_axis_TVALID_int_regslice),
        .I1(ap_loop_init),
        .I2(ap_rst_n),
        .I3(\i_fu_72_reg[1] ),
        .I4(ap_start),
        .I5(\i_fu_72_reg[2] ),
        .O(ap_loop_init_i_1_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1_n_3),
        .Q(ap_loop_init),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    ap_ready_INST_0
       (.I0(ap_loop_init),
        .I1(ap_loop_exit_ready_pp0_iter1_reg_reg),
        .I2(\i_fu_72_reg[2]_0 ),
        .I3(\i_fu_72_reg[1]_0 ),
        .I4(ap_start),
        .I5(\i_fu_72_reg[2] ),
        .O(ap_ready));
  LUT6 #(
    .INIT(64'hFFFFF7FF00000400)) 
    \i_fu_72[1]_i_1 
       (.I0(\i_fu_72[1]_i_2_n_3 ),
        .I1(s_axis_TVALID_int_regslice),
        .I2(\i_fu_72_reg[2] ),
        .I3(ap_start),
        .I4(\i_fu_72_reg[1] ),
        .I5(\i_fu_72_reg[1]_0 ),
        .O(\B_V_data_1_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF88F)) 
    \i_fu_72[1]_i_2 
       (.I0(ap_loop_init),
        .I1(ap_start),
        .I2(ap_loop_exit_ready_pp0_iter1_reg_reg),
        .I3(\i_fu_72_reg[1]_0 ),
        .O(\i_fu_72[1]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \i_fu_72[2]_i_1 
       (.I0(\i_fu_72[2]_i_2_n_3 ),
        .I1(s_axis_TVALID_int_regslice),
        .I2(\i_fu_72_reg[2] ),
        .I3(ap_start),
        .I4(\i_fu_72_reg[1] ),
        .I5(\i_fu_72_reg[2]_0 ),
        .O(\B_V_data_1_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h07707000)) 
    \i_fu_72[2]_i_2 
       (.I0(ap_loop_init),
        .I1(ap_start),
        .I2(ap_loop_exit_ready_pp0_iter1_reg_reg),
        .I3(\i_fu_72_reg[1]_0 ),
        .I4(\i_fu_72_reg[2]_0 ),
        .O(\i_fu_72[2]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCFF4F0040)) 
    \output_word_last_reg_167[0]_i_1 
       (.I0(\i_fu_72_reg[1] ),
        .I1(\output_word_last_reg_167_reg[0]_0 ),
        .I2(ap_start),
        .I3(s_axis_TVALID_int_regslice),
        .I4(\output_word_last_reg_167[0]_i_2_n_3 ),
        .I5(\i_fu_72_reg[2] ),
        .O(\output_word_last_reg_167_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007000)) 
    \output_word_last_reg_167[0]_i_2 
       (.I0(ap_start),
        .I1(ap_loop_init),
        .I2(ap_loop_exit_ready_pp0_iter1_reg_reg),
        .I3(\i_fu_72_reg[1]_0 ),
        .I4(\i_fu_72_reg[2]_0 ),
        .O(\output_word_last_reg_167[0]_i_2_n_3 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both
   (m_axis_TREADY_int_regslice,
    \B_V_data_1_state_reg[0]_0 ,
    \B_V_data_1_state_reg[0]_1 ,
    \B_V_data_1_state_reg[1]_0 ,
    ap_enable_reg_pp0_iter1_reg,
    m_axis_TDATA,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    m_axis_TREADY,
    \B_V_data_1_state_reg[0]_2 ,
    ap_enable_reg_pp0_iter1,
    ap_loop_exit_ready_pp0_iter1_reg,
    ap_enable_reg_pp0_iter2,
    B_V_data_1_sel_wr_reg_0,
    B_V_data_1_sel_wr,
    Q);
  output m_axis_TREADY_int_regslice;
  output \B_V_data_1_state_reg[0]_0 ;
  output \B_V_data_1_state_reg[0]_1 ;
  output \B_V_data_1_state_reg[1]_0 ;
  output ap_enable_reg_pp0_iter1_reg;
  output [31:0]m_axis_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input m_axis_TREADY;
  input \B_V_data_1_state_reg[0]_2 ;
  input ap_enable_reg_pp0_iter1;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter2;
  input B_V_data_1_sel_wr_reg_0;
  input B_V_data_1_sel_wr;
  input [31:0]Q;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A_reg_n_3_[0] ;
  wire \B_V_data_1_payload_A_reg_n_3_[10] ;
  wire \B_V_data_1_payload_A_reg_n_3_[11] ;
  wire \B_V_data_1_payload_A_reg_n_3_[12] ;
  wire \B_V_data_1_payload_A_reg_n_3_[13] ;
  wire \B_V_data_1_payload_A_reg_n_3_[14] ;
  wire \B_V_data_1_payload_A_reg_n_3_[15] ;
  wire \B_V_data_1_payload_A_reg_n_3_[16] ;
  wire \B_V_data_1_payload_A_reg_n_3_[17] ;
  wire \B_V_data_1_payload_A_reg_n_3_[18] ;
  wire \B_V_data_1_payload_A_reg_n_3_[19] ;
  wire \B_V_data_1_payload_A_reg_n_3_[1] ;
  wire \B_V_data_1_payload_A_reg_n_3_[20] ;
  wire \B_V_data_1_payload_A_reg_n_3_[21] ;
  wire \B_V_data_1_payload_A_reg_n_3_[22] ;
  wire \B_V_data_1_payload_A_reg_n_3_[23] ;
  wire \B_V_data_1_payload_A_reg_n_3_[24] ;
  wire \B_V_data_1_payload_A_reg_n_3_[25] ;
  wire \B_V_data_1_payload_A_reg_n_3_[26] ;
  wire \B_V_data_1_payload_A_reg_n_3_[27] ;
  wire \B_V_data_1_payload_A_reg_n_3_[28] ;
  wire \B_V_data_1_payload_A_reg_n_3_[29] ;
  wire \B_V_data_1_payload_A_reg_n_3_[2] ;
  wire \B_V_data_1_payload_A_reg_n_3_[30] ;
  wire \B_V_data_1_payload_A_reg_n_3_[31] ;
  wire \B_V_data_1_payload_A_reg_n_3_[3] ;
  wire \B_V_data_1_payload_A_reg_n_3_[4] ;
  wire \B_V_data_1_payload_A_reg_n_3_[5] ;
  wire \B_V_data_1_payload_A_reg_n_3_[6] ;
  wire \B_V_data_1_payload_A_reg_n_3_[7] ;
  wire \B_V_data_1_payload_A_reg_n_3_[8] ;
  wire \B_V_data_1_payload_A_reg_n_3_[9] ;
  wire \B_V_data_1_payload_B_reg_n_3_[0] ;
  wire \B_V_data_1_payload_B_reg_n_3_[10] ;
  wire \B_V_data_1_payload_B_reg_n_3_[11] ;
  wire \B_V_data_1_payload_B_reg_n_3_[12] ;
  wire \B_V_data_1_payload_B_reg_n_3_[13] ;
  wire \B_V_data_1_payload_B_reg_n_3_[14] ;
  wire \B_V_data_1_payload_B_reg_n_3_[15] ;
  wire \B_V_data_1_payload_B_reg_n_3_[16] ;
  wire \B_V_data_1_payload_B_reg_n_3_[17] ;
  wire \B_V_data_1_payload_B_reg_n_3_[18] ;
  wire \B_V_data_1_payload_B_reg_n_3_[19] ;
  wire \B_V_data_1_payload_B_reg_n_3_[1] ;
  wire \B_V_data_1_payload_B_reg_n_3_[20] ;
  wire \B_V_data_1_payload_B_reg_n_3_[21] ;
  wire \B_V_data_1_payload_B_reg_n_3_[22] ;
  wire \B_V_data_1_payload_B_reg_n_3_[23] ;
  wire \B_V_data_1_payload_B_reg_n_3_[24] ;
  wire \B_V_data_1_payload_B_reg_n_3_[25] ;
  wire \B_V_data_1_payload_B_reg_n_3_[26] ;
  wire \B_V_data_1_payload_B_reg_n_3_[27] ;
  wire \B_V_data_1_payload_B_reg_n_3_[28] ;
  wire \B_V_data_1_payload_B_reg_n_3_[29] ;
  wire \B_V_data_1_payload_B_reg_n_3_[2] ;
  wire \B_V_data_1_payload_B_reg_n_3_[30] ;
  wire \B_V_data_1_payload_B_reg_n_3_[31] ;
  wire \B_V_data_1_payload_B_reg_n_3_[3] ;
  wire \B_V_data_1_payload_B_reg_n_3_[4] ;
  wire \B_V_data_1_payload_B_reg_n_3_[5] ;
  wire \B_V_data_1_payload_B_reg_n_3_[6] ;
  wire \B_V_data_1_payload_B_reg_n_3_[7] ;
  wire \B_V_data_1_payload_B_reg_n_3_[8] ;
  wire \B_V_data_1_payload_B_reg_n_3_[9] ;
  wire B_V_data_1_sel_rd_i_1_n_3;
  wire B_V_data_1_sel_rd_reg_n_3;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_0;
  wire B_V_data_1_sel_wr_i_1__1_n_3;
  wire B_V_data_1_sel_wr_i_2_n_3;
  wire B_V_data_1_sel_wr_reg_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__0_n_3 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[0]_1 ;
  wire \B_V_data_1_state_reg[0]_2 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [31:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [31:0]m_axis_TDATA;
  wire m_axis_TREADY;
  wire m_axis_TREADY_int_regslice;

  LUT3 #(
    .INIT(8'h45)) 
    \B_V_data_1_payload_A[31]_i_1__0 
       (.I0(B_V_data_1_sel_wr_0),
        .I1(m_axis_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[0]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[10]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[11]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[12]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[13]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[14]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[15]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[16]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[17]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[18]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[19]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[1]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[20]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[21]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[22]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[23]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[24]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[25]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[26]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[27]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[28]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[29]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[2]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[30]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[31]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[3]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[4]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[5]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[6]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[7]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[8]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(Q[9]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_payload_B[31]_i_1__0 
       (.I0(B_V_data_1_sel_wr_0),
        .I1(m_axis_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[0]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[10]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[11]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[12]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[13]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[14]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[15]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[16]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[17]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[18]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[19]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[1]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[20]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[21]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[22]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[23]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[24]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[25]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[26]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[27]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[28]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[29]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[2]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[30]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[31]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[3]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[4]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[5]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[6]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[7]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[8]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(Q[9]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1
       (.I0(m_axis_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(B_V_data_1_sel_rd_i_1_n_3));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_3),
        .Q(B_V_data_1_sel_rd_reg_n_3),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(\B_V_data_1_state_reg[0]_2 ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(m_axis_TREADY_int_regslice),
        .I3(B_V_data_1_sel_wr_reg_0),
        .I4(B_V_data_1_sel_wr_i_2_n_3),
        .I5(B_V_data_1_sel_wr),
        .O(ap_enable_reg_pp0_iter1_reg));
  LUT6 #(
    .INIT(64'h7F7FFF7F80800080)) 
    B_V_data_1_sel_wr_i_1__1
       (.I0(\B_V_data_1_state_reg[0]_2 ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(m_axis_TREADY_int_regslice),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .I4(m_axis_TREADY),
        .I5(B_V_data_1_sel_wr_0),
        .O(B_V_data_1_sel_wr_i_1__1_n_3));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    B_V_data_1_sel_wr_i_2
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(m_axis_TREADY),
        .O(B_V_data_1_sel_wr_i_2_n_3));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__1_n_3),
        .Q(B_V_data_1_sel_wr_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hAAA02A002A002A00)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(ap_rst_n),
        .I1(m_axis_TREADY),
        .I2(m_axis_TREADY_int_regslice),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .I4(\B_V_data_1_state_reg[0]_2 ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(\B_V_data_1_state[0]_i_1__0_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \B_V_data_1_state[1]_i_1__1 
       (.I0(m_axis_TREADY),
        .I1(m_axis_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_3 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(m_axis_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h77775550)) 
    ap_done_INST_0_i_2
       (.I0(m_axis_TREADY_int_regslice),
        .I1(m_axis_TREADY),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .O(\B_V_data_1_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2220FFFF2220FAF0)) 
    ap_ready_INST_0_i_1
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(m_axis_TREADY),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(m_axis_TREADY_int_regslice),
        .I5(ap_enable_reg_pp0_iter2),
        .O(\B_V_data_1_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[0]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[0] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[10]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[10] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[11]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[11] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[12]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[12] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[13]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[13] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[14]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[14] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[15]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[15] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[16]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[16] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[17]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[17] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[18]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[18] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[19]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[19] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[1]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[1] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[20]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[20] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[21]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[21] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[22]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[22] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[23]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[23] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[24]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[24] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[24] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[25]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[25] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[25] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[26]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[26] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[26] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[27]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[27] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[27] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[28]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[28] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[28] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[29]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[29] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[29] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[2]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[2] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[30]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[30] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[30] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[31]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[31] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[31] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[3]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[3] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[4]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[4] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[5]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[5] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[6]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[6] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[7]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[7] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[8]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[8] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[9]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[9] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(m_axis_TDATA[9]));
endmodule

(* ORIG_REF_NAME = "bit_reverse_accel_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both_0
   (\B_V_data_1_state_reg[1]_0 ,
    ap_rst_n_inv,
    s_axis_TVALID_int_regslice,
    \B_V_data_1_state_reg[0]_0 ,
    ap_enable_reg_pp0_iter1_reg,
    ap_done,
    E,
    ap_enable_reg_pp0_iter1_reg_0,
    D,
    ap_clk,
    \i_fu_72_reg[0] ,
    ap_start,
    \i_fu_72_reg[0]_0 ,
    ap_loop_init,
    ap_enable_reg_pp0_iter1,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg_1,
    ap_loop_exit_ready_pp0_iter1_reg,
    ap_done_0,
    s_axis_TVALID,
    \i_fu_72_reg[0]_1 ,
    \i_fu_72_reg[0]_2 ,
    ap_enable_reg_pp0_iter2,
    s_axis_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output ap_rst_n_inv;
  output s_axis_TVALID_int_regslice;
  output \B_V_data_1_state_reg[0]_0 ;
  output ap_enable_reg_pp0_iter1_reg;
  output ap_done;
  output [0:0]E;
  output ap_enable_reg_pp0_iter1_reg_0;
  output [31:0]D;
  input ap_clk;
  input \i_fu_72_reg[0] ;
  input ap_start;
  input \i_fu_72_reg[0]_0 ;
  input ap_loop_init;
  input ap_enable_reg_pp0_iter1;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg_1;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input ap_done_0;
  input s_axis_TVALID;
  input \i_fu_72_reg[0]_1 ;
  input \i_fu_72_reg[0]_2 ;
  input ap_enable_reg_pp0_iter2;
  input [31:0]s_axis_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A_reg_n_3_[0] ;
  wire \B_V_data_1_payload_A_reg_n_3_[10] ;
  wire \B_V_data_1_payload_A_reg_n_3_[11] ;
  wire \B_V_data_1_payload_A_reg_n_3_[12] ;
  wire \B_V_data_1_payload_A_reg_n_3_[13] ;
  wire \B_V_data_1_payload_A_reg_n_3_[14] ;
  wire \B_V_data_1_payload_A_reg_n_3_[15] ;
  wire \B_V_data_1_payload_A_reg_n_3_[16] ;
  wire \B_V_data_1_payload_A_reg_n_3_[17] ;
  wire \B_V_data_1_payload_A_reg_n_3_[18] ;
  wire \B_V_data_1_payload_A_reg_n_3_[19] ;
  wire \B_V_data_1_payload_A_reg_n_3_[1] ;
  wire \B_V_data_1_payload_A_reg_n_3_[20] ;
  wire \B_V_data_1_payload_A_reg_n_3_[21] ;
  wire \B_V_data_1_payload_A_reg_n_3_[22] ;
  wire \B_V_data_1_payload_A_reg_n_3_[23] ;
  wire \B_V_data_1_payload_A_reg_n_3_[24] ;
  wire \B_V_data_1_payload_A_reg_n_3_[25] ;
  wire \B_V_data_1_payload_A_reg_n_3_[26] ;
  wire \B_V_data_1_payload_A_reg_n_3_[27] ;
  wire \B_V_data_1_payload_A_reg_n_3_[28] ;
  wire \B_V_data_1_payload_A_reg_n_3_[29] ;
  wire \B_V_data_1_payload_A_reg_n_3_[2] ;
  wire \B_V_data_1_payload_A_reg_n_3_[30] ;
  wire \B_V_data_1_payload_A_reg_n_3_[31] ;
  wire \B_V_data_1_payload_A_reg_n_3_[3] ;
  wire \B_V_data_1_payload_A_reg_n_3_[4] ;
  wire \B_V_data_1_payload_A_reg_n_3_[5] ;
  wire \B_V_data_1_payload_A_reg_n_3_[6] ;
  wire \B_V_data_1_payload_A_reg_n_3_[7] ;
  wire \B_V_data_1_payload_A_reg_n_3_[8] ;
  wire \B_V_data_1_payload_A_reg_n_3_[9] ;
  wire \B_V_data_1_payload_B_reg_n_3_[0] ;
  wire \B_V_data_1_payload_B_reg_n_3_[10] ;
  wire \B_V_data_1_payload_B_reg_n_3_[11] ;
  wire \B_V_data_1_payload_B_reg_n_3_[12] ;
  wire \B_V_data_1_payload_B_reg_n_3_[13] ;
  wire \B_V_data_1_payload_B_reg_n_3_[14] ;
  wire \B_V_data_1_payload_B_reg_n_3_[15] ;
  wire \B_V_data_1_payload_B_reg_n_3_[16] ;
  wire \B_V_data_1_payload_B_reg_n_3_[17] ;
  wire \B_V_data_1_payload_B_reg_n_3_[18] ;
  wire \B_V_data_1_payload_B_reg_n_3_[19] ;
  wire \B_V_data_1_payload_B_reg_n_3_[1] ;
  wire \B_V_data_1_payload_B_reg_n_3_[20] ;
  wire \B_V_data_1_payload_B_reg_n_3_[21] ;
  wire \B_V_data_1_payload_B_reg_n_3_[22] ;
  wire \B_V_data_1_payload_B_reg_n_3_[23] ;
  wire \B_V_data_1_payload_B_reg_n_3_[24] ;
  wire \B_V_data_1_payload_B_reg_n_3_[25] ;
  wire \B_V_data_1_payload_B_reg_n_3_[26] ;
  wire \B_V_data_1_payload_B_reg_n_3_[27] ;
  wire \B_V_data_1_payload_B_reg_n_3_[28] ;
  wire \B_V_data_1_payload_B_reg_n_3_[29] ;
  wire \B_V_data_1_payload_B_reg_n_3_[2] ;
  wire \B_V_data_1_payload_B_reg_n_3_[30] ;
  wire \B_V_data_1_payload_B_reg_n_3_[31] ;
  wire \B_V_data_1_payload_B_reg_n_3_[3] ;
  wire \B_V_data_1_payload_B_reg_n_3_[4] ;
  wire \B_V_data_1_payload_B_reg_n_3_[5] ;
  wire \B_V_data_1_payload_B_reg_n_3_[6] ;
  wire \B_V_data_1_payload_B_reg_n_3_[7] ;
  wire \B_V_data_1_payload_B_reg_n_3_[8] ;
  wire \B_V_data_1_payload_B_reg_n_3_[9] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__0_n_3;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1_n_3;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_3 ;
  wire \B_V_data_1_state[0]_i_2__1_n_3 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [31:0]D;
  wire [0:0]E;
  wire ap_clk;
  wire ap_done;
  wire ap_done_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire \i_fu_72[0]_i_2_n_3 ;
  wire \i_fu_72_reg[0] ;
  wire \i_fu_72_reg[0]_0 ;
  wire \i_fu_72_reg[0]_1 ;
  wire \i_fu_72_reg[0]_2 ;
  wire [31:0]s_axis_TDATA;
  wire s_axis_TVALID;
  wire s_axis_TVALID_int_regslice;

  LUT3 #(
    .INIT(8'h45)) 
    \B_V_data_1_payload_A[31]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(s_axis_TVALID_int_regslice),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[0]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[10]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[11]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[12]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[13]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[14]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[15]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[16]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[17]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[18]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[19]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[1]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[20]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[21]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[22]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[23]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[24]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[25]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[26]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[27]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[28]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[29]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[2]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[30]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[31]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[3]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[4]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[5]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[6]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[7]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[8]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[9]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_payload_B[31]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(s_axis_TVALID_int_regslice),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[0]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[10]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[11]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[12]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[13]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[14]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[15]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[16]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[17]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[18]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[19]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[1]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[20]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[21]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[22]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[23]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[24]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[25]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[26]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[27]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[28]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[29]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[2]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[30]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[31]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[3]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[4]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[5]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[6]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[7]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[8]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[9]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFBFF0400)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(ap_enable_reg_pp0_iter1_reg_1),
        .I1(ap_start),
        .I2(\i_fu_72_reg[0] ),
        .I3(s_axis_TVALID_int_regslice),
        .I4(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__0_n_3));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_3),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(s_axis_TVALID),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1_n_3));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1_n_3),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888088)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(s_axis_TVALID_int_regslice),
        .I2(ap_enable_reg_pp0_iter1_reg_1),
        .I3(ap_start),
        .I4(\i_fu_72_reg[0] ),
        .I5(\B_V_data_1_state[0]_i_2__1_n_3 ),
        .O(\B_V_data_1_state[0]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \B_V_data_1_state[0]_i_2__1 
       (.I0(s_axis_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(s_axis_TVALID),
        .I3(ap_rst_n),
        .O(\B_V_data_1_state[0]_i_2__1_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h04FF0404FFFFFFFF)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(\i_fu_72_reg[0] ),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter1_reg_1),
        .I3(s_axis_TVALID),
        .I4(\B_V_data_1_state_reg[1]_0 ),
        .I5(s_axis_TVALID_int_regslice),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_3 ),
        .Q(s_axis_TVALID_int_regslice),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h0000FB00)) 
    ap_done_INST_0
       (.I0(s_axis_TVALID_int_regslice),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter1_reg_1),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(ap_done_0),
        .O(ap_done));
  LUT6 #(
    .INIT(64'hA0A0A0A000E00000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(s_axis_TVALID_int_regslice),
        .I2(ap_rst_n),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(ap_start),
        .I5(\i_fu_72_reg[0] ),
        .O(ap_enable_reg_pp0_iter1_reg));
  LUT6 #(
    .INIT(64'hFFFFAABA0000AA8A)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(s_axis_TVALID_int_regslice),
        .I2(ap_start),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(\i_fu_72_reg[0] ),
        .I5(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter1_reg_0));
  LUT6 #(
    .INIT(64'hFFFF2020DFDF0020)) 
    \i_fu_72[0]_i_1 
       (.I0(s_axis_TVALID_int_regslice),
        .I1(\i_fu_72_reg[0] ),
        .I2(ap_start),
        .I3(\i_fu_72[0]_i_2_n_3 ),
        .I4(\i_fu_72_reg[0]_0 ),
        .I5(ap_loop_init),
        .O(\B_V_data_1_state_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_fu_72[0]_i_2 
       (.I0(\i_fu_72_reg[0]_1 ),
        .I1(\i_fu_72_reg[0]_2 ),
        .O(\i_fu_72[0]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[0]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[31] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[31] ),
        .I2(B_V_data_1_sel),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[10]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[21] ),
        .I2(B_V_data_1_sel),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[11]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[20] ),
        .I2(B_V_data_1_sel),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[12]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[19] ),
        .I2(B_V_data_1_sel),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[13]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[18] ),
        .I2(B_V_data_1_sel),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[14]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[17] ),
        .I2(B_V_data_1_sel),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[15]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[16] ),
        .I2(B_V_data_1_sel),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[16]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[15] ),
        .I2(B_V_data_1_sel),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[17]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[14] ),
        .I2(B_V_data_1_sel),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[18]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[13] ),
        .I2(B_V_data_1_sel),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[19]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[12] ),
        .I2(B_V_data_1_sel),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[1]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[30] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[30] ),
        .I2(B_V_data_1_sel),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[20]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[11] ),
        .I2(B_V_data_1_sel),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[21]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[10] ),
        .I2(B_V_data_1_sel),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[22]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[9] ),
        .I2(B_V_data_1_sel),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[23]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[8] ),
        .I2(B_V_data_1_sel),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[24]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[7] ),
        .I2(B_V_data_1_sel),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[25]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[6] ),
        .I2(B_V_data_1_sel),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[26]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[5] ),
        .I2(B_V_data_1_sel),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[27]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[4] ),
        .I2(B_V_data_1_sel),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[28]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[3] ),
        .I2(B_V_data_1_sel),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[29]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[2] ),
        .I2(B_V_data_1_sel),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[2]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[29] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[29] ),
        .I2(B_V_data_1_sel),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[30]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[1] ),
        .I2(B_V_data_1_sel),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h00FB)) 
    \reversed_reg_162[31]_i_1 
       (.I0(s_axis_TVALID_int_regslice),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter1_reg_1),
        .I3(\i_fu_72_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[31]_i_2 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[0] ),
        .I2(B_V_data_1_sel),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[3]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[28] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[28] ),
        .I2(B_V_data_1_sel),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[4]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[27] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[27] ),
        .I2(B_V_data_1_sel),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[5]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[26] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[26] ),
        .I2(B_V_data_1_sel),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[6]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[25] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[25] ),
        .I2(B_V_data_1_sel),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[7]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[24] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[24] ),
        .I2(B_V_data_1_sel),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[8]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[23] ),
        .I2(B_V_data_1_sel),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reversed_reg_162[9]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[22] ),
        .I2(B_V_data_1_sel),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "bit_reverse_accel_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both__parameterized1
   (\B_V_data_1_state_reg[1]_0 ,
    B_V_data_1_sel_wr,
    m_axis_TLAST,
    ap_rst_n_inv,
    ap_clk,
    B_V_data_1_sel_wr_reg_0,
    m_axis_TVALID,
    m_axis_TREADY_int_regslice,
    ap_enable_reg_pp0_iter1,
    \B_V_data_1_state_reg[1]_1 ,
    ap_rst_n,
    m_axis_TREADY,
    \B_V_data_1_payload_A_reg[0]_0 );
  output \B_V_data_1_state_reg[1]_0 ;
  output B_V_data_1_sel_wr;
  output [0:0]m_axis_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input B_V_data_1_sel_wr_reg_0;
  input m_axis_TVALID;
  input m_axis_TREADY_int_regslice;
  input ap_enable_reg_pp0_iter1;
  input \B_V_data_1_state_reg[1]_1 ;
  input ap_rst_n;
  input m_axis_TREADY;
  input \B_V_data_1_payload_A_reg[0]_0 ;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1_n_3 ;
  wire \B_V_data_1_payload_A_reg[0]_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1_n_3 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__1_n_3;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_reg_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__1_n_3 ;
  wire \B_V_data_1_state[0]_i_2__0_n_3 ;
  wire \B_V_data_1_state[0]_i_3_n_3 ;
  wire \B_V_data_1_state[1]_i_2__0_n_3 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire \B_V_data_1_state_reg[1]_1 ;
  wire \B_V_data_1_state_reg_n_3_[0] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [0:0]m_axis_TLAST;
  wire m_axis_TREADY;
  wire m_axis_TREADY_int_regslice;
  wire m_axis_TVALID;

  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \B_V_data_1_payload_A[0]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[0]_0 ),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(\B_V_data_1_state_reg_n_3_[0] ),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1_n_3 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1_n_3 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \B_V_data_1_payload_B[0]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[0]_0 ),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(\B_V_data_1_state_reg_n_3_[0] ),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1_n_3 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1_n_3 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__1
       (.I0(\B_V_data_1_state_reg_n_3_[0] ),
        .I1(m_axis_TREADY),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__1_n_3));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__1_n_3),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_reg_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h80000000AAAAAAAA)) 
    \B_V_data_1_state[0]_i_1__1 
       (.I0(ap_rst_n),
        .I1(\B_V_data_1_state[0]_i_2__0_n_3 ),
        .I2(m_axis_TREADY_int_regslice),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\B_V_data_1_state_reg[1]_1 ),
        .I5(\B_V_data_1_state[0]_i_3_n_3 ),
        .O(\B_V_data_1_state[0]_i_1__1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_state[0]_i_2__0 
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(m_axis_TREADY),
        .I2(m_axis_TVALID),
        .O(\B_V_data_1_state[0]_i_2__0_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \B_V_data_1_state[0]_i_3 
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(m_axis_TREADY),
        .I2(\B_V_data_1_state_reg_n_3_[0] ),
        .O(\B_V_data_1_state[0]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hD5DDDDDDDDDDDDDD)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(\B_V_data_1_state[1]_i_2__0_n_3 ),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(m_axis_TVALID),
        .I3(m_axis_TREADY_int_regslice),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(\B_V_data_1_state_reg[1]_1 ),
        .O(B_V_data_1_state));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \B_V_data_1_state[1]_i_2__0 
       (.I0(\B_V_data_1_state_reg_n_3_[0] ),
        .I1(m_axis_TREADY),
        .O(\B_V_data_1_state[1]_i_2__0_n_3 ));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__1_n_3 ),
        .Q(\B_V_data_1_state_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_TLAST[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(m_axis_TLAST));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
