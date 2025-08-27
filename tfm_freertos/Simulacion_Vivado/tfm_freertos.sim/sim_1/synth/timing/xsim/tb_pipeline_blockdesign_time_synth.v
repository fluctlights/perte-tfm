// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Aug 16 14:34:03 2025
// Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/fluctlights/VivadoProjects/tfm_freertos/tfm_freertos.sim/sim_1/synth/timing/xsim/tb_pipeline_blockdesign_time_synth.v
// Design      : design_1_wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* HW_HANDOFF = "design_1.hwdef" *) 
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

  wire [31:0]bit_reverse_accel_1_m_axis_TDATA;
  wire bit_reverse_accel_1_m_axis_TLAST;
  wire bit_reverse_accel_1_s_axis_TREADY;
  wire clk;
  wire [31:0]din_i;
  wire done_flag_o;
  wire [31:0]dout_o;
  wire [31:0]fifo2axis_0_s_axis_tdata;
  wire fifo2axis_0_s_axis_tvalid;
  wire fifo2axis_0_start_accel;
  wire start_flag_i;
  wire NLW_bit_reverse_accel_1_m_axis_TVALID_UNCONNECTED;
  wire [3:0]NLW_bit_reverse_accel_1_m_axis_TKEEP_UNCONNECTED;
  wire [3:0]NLW_bit_reverse_accel_1_m_axis_TSTRB_UNCONNECTED;

  (* IMPORTED_FROM = "/home/fluctlights/VivadoProjects/fifo_freertos_pruebas/fifo_freertos.gen/sources_1/bd/design_1/ip/design_1_axis2fifo_0_0/design_1_axis2fifo_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "axis2fifo,Vivado 2023.2" *) 
  design_1_axis2fifo_0_0 axis2fifo_0
       (.clk(clk),
        .done(done_flag_o),
        .dout(dout_o),
        .last(bit_reverse_accel_1_m_axis_TLAST),
        .rst(1'b0),
        .s_axis_tdata(bit_reverse_accel_1_m_axis_TDATA));
  (* IMPORTED_FROM = "/home/fluctlights/VivadoProjects/fifo_freertos_pruebas/fifo_freertos.gen/sources_1/bd/design_1/ip/design_1_bit_reverse_accel_1_0/design_1_bit_reverse_accel_1_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "bit_reverse_accel,Vivado 2023.2" *) 
  design_1_bit_reverse_accel_1_0 bit_reverse_accel_1
       (.ap_clk(clk),
        .ap_rst_n(fifo2axis_0_start_accel),
        .m_axis_TDATA(bit_reverse_accel_1_m_axis_TDATA),
        .m_axis_TKEEP(NLW_bit_reverse_accel_1_m_axis_TKEEP_UNCONNECTED[3:0]),
        .m_axis_TLAST(bit_reverse_accel_1_m_axis_TLAST),
        .m_axis_TREADY(1'b1),
        .m_axis_TSTRB(NLW_bit_reverse_accel_1_m_axis_TSTRB_UNCONNECTED[3:0]),
        .m_axis_TVALID(NLW_bit_reverse_accel_1_m_axis_TVALID_UNCONNECTED),
        .s_axis_TDATA(fifo2axis_0_s_axis_tdata),
        .s_axis_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_TLAST(1'b0),
        .s_axis_TREADY(bit_reverse_accel_1_s_axis_TREADY),
        .s_axis_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_TVALID(fifo2axis_0_s_axis_tvalid));
  (* IMPORTED_FROM = "/home/fluctlights/VivadoProjects/fifo_freertos_pruebas/fifo_freertos.gen/sources_1/bd/design_1/ip/design_1_fifo2axis_0_0/design_1_fifo2axis_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "fifo2axis,Vivado 2023.2" *) 
  design_1_fifo2axis_0_0 fifo2axis_0
       (.clk(clk),
        .fifo_data(din_i),
        .rst(1'b0),
        .s_axis_tdata(fifo2axis_0_s_axis_tdata),
        .s_axis_tlast(bit_reverse_accel_1_m_axis_TLAST),
        .s_axis_tready(bit_reverse_accel_1_s_axis_TREADY),
        .s_axis_tvalid(fifo2axis_0_s_axis_tvalid),
        .start(start_flag_i),
        .start_accel(fifo2axis_0_start_accel));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axis2fifo_0_0,axis2fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis2fifo,Vivado 2023.2" *) 
module design_1_axis2fifo_0_0
   (clk,
    rst,
    s_axis_tdata,
    last,
    dout,
    done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input [31:0]s_axis_tdata;
  input last;
  output [31:0]dout;
  output done;

  wire clk;
  wire done;
  wire [31:0]dout;
  wire last;
  wire rst;
  wire [31:0]s_axis_tdata;

  design_1_axis2fifo_0_0_axis2fifo inst
       (.clk(clk),
        .done(done),
        .dout(dout),
        .last(last),
        .rst(rst),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "axis2fifo" *) 
module design_1_axis2fifo_0_0_axis2fifo
   (dout,
    done,
    rst,
    last,
    clk,
    s_axis_tdata);
  output [31:0]dout;
  output done;
  input rst;
  input last;
  input clk;
  input [31:0]s_axis_tdata;

  wire buffer;
  wire \buffer[0][31]_i_2_n_0 ;
  wire \buffer[1][31]_i_1_n_0 ;
  wire \buffer[1][31]_i_2_n_0 ;
  wire \buffer[2][31]_i_1_n_0 ;
  wire \buffer[2][31]_i_2_n_0 ;
  wire \buffer[3][31]_i_1_n_0 ;
  wire buffer_index;
  wire \buffer_index[0]_i_1_n_0 ;
  wire \buffer_index[0]_i_2_n_0 ;
  wire \buffer_index[1]_i_1_n_0 ;
  wire \buffer_index[1]_i_3_n_0 ;
  wire \buffer_index_reg_n_0_[0] ;
  wire \buffer_index_reg_n_0_[1] ;
  wire [31:0]\buffer_reg[0] ;
  wire [31:0]\buffer_reg[1] ;
  wire [31:0]\buffer_reg[2] ;
  wire [31:0]\buffer_reg[3] ;
  wire clk;
  wire done;
  wire done_i_1_n_0;
  wire [31:0]dout;
  wire \dout[31]_i_1_n_0 ;
  wire last;
  wire next_state;
  wire \next_state[0]_i_10_n_0 ;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[0]_i_2_n_0 ;
  wire \next_state[0]_i_4_n_0 ;
  wire \next_state[0]_i_5_n_0 ;
  wire \next_state[0]_i_6_n_0 ;
  wire \next_state[0]_i_7_n_0 ;
  wire \next_state[0]_i_8_n_0 ;
  wire \next_state[0]_i_9_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state[1]_i_2_n_0 ;
  wire \next_state[2]_i_1_n_0 ;
  wire \next_state_reg_n_0_[0] ;
  wire \next_state_reg_n_0_[1] ;
  wire \next_state_reg_n_0_[2] ;
  wire [31:0]p_0_in;
  wire rst;
  wire [31:0]s_axis_tdata;

  LUT6 #(
    .INIT(64'h0000000E00000000)) 
    \buffer[0][31]_i_1 
       (.I0(\next_state[0]_i_2_n_0 ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state_reg_n_0_[1] ),
        .I4(rst),
        .I5(\buffer[0][31]_i_2_n_0 ),
        .O(buffer));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \buffer[0][31]_i_2 
       (.I0(\buffer_index_reg_n_0_[0] ),
        .I1(\buffer_index_reg_n_0_[1] ),
        .O(\buffer[0][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000E00000000)) 
    \buffer[1][31]_i_1 
       (.I0(\next_state[0]_i_2_n_0 ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state_reg_n_0_[1] ),
        .I4(rst),
        .I5(\buffer[1][31]_i_2_n_0 ),
        .O(\buffer[1][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buffer[1][31]_i_2 
       (.I0(\buffer_index_reg_n_0_[0] ),
        .I1(\buffer_index_reg_n_0_[1] ),
        .O(\buffer[1][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000E00000000)) 
    \buffer[2][31]_i_1 
       (.I0(\next_state[0]_i_2_n_0 ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state_reg_n_0_[1] ),
        .I4(rst),
        .I5(\buffer[2][31]_i_2_n_0 ),
        .O(\buffer[2][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buffer[2][31]_i_2 
       (.I0(\buffer_index_reg_n_0_[1] ),
        .I1(\buffer_index_reg_n_0_[0] ),
        .O(\buffer[2][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000E00000000)) 
    \buffer[3][31]_i_1 
       (.I0(\next_state[0]_i_2_n_0 ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state_reg_n_0_[1] ),
        .I4(rst),
        .I5(\next_state[1]_i_2_n_0 ),
        .O(\buffer[3][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCCCCF03031310)) 
    \buffer_index[0]_i_1 
       (.I0(last),
        .I1(\buffer_index[0]_i_2_n_0 ),
        .I2(\next_state_reg_n_0_[0] ),
        .I3(\next_state[0]_i_2_n_0 ),
        .I4(\next_state_reg_n_0_[1] ),
        .I5(\buffer_index_reg_n_0_[0] ),
        .O(\buffer_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \buffer_index[0]_i_2 
       (.I0(\next_state_reg_n_0_[0] ),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(\buffer_index_reg_n_0_[0] ),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\next_state_reg_n_0_[2] ),
        .O(\buffer_index[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h07FF7000)) 
    \buffer_index[1]_i_1 
       (.I0(last),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\buffer_index_reg_n_0_[0] ),
        .I3(buffer_index),
        .I4(\buffer_index_reg_n_0_[1] ),
        .O(\buffer_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111111155555554)) 
    \buffer_index[1]_i_2 
       (.I0(\buffer_index[0]_i_2_n_0 ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state[0]_i_4_n_0 ),
        .I3(\next_state[0]_i_5_n_0 ),
        .I4(\buffer_index[1]_i_3_n_0 ),
        .I5(\next_state_reg_n_0_[1] ),
        .O(buffer_index));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \buffer_index[1]_i_3 
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_tdata[18]),
        .I2(s_axis_tdata[27]),
        .I3(s_axis_tdata[26]),
        .O(\buffer_index[1]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\buffer_index[0]_i_1_n_0 ),
        .Q(\buffer_index_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\buffer_index[1]_i_1_n_0 ),
        .Q(\buffer_index_reg_n_0_[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][0] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[0]),
        .Q(\buffer_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][10] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[10]),
        .Q(\buffer_reg[0] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][11] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[11]),
        .Q(\buffer_reg[0] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][12] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[12]),
        .Q(\buffer_reg[0] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][13] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[13]),
        .Q(\buffer_reg[0] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][14] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[14]),
        .Q(\buffer_reg[0] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][15] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[15]),
        .Q(\buffer_reg[0] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][16] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[16]),
        .Q(\buffer_reg[0] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][17] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[17]),
        .Q(\buffer_reg[0] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][18] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[18]),
        .Q(\buffer_reg[0] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][19] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[19]),
        .Q(\buffer_reg[0] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][1] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[1]),
        .Q(\buffer_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][20] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[20]),
        .Q(\buffer_reg[0] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][21] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[21]),
        .Q(\buffer_reg[0] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][22] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[22]),
        .Q(\buffer_reg[0] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][23] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[23]),
        .Q(\buffer_reg[0] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][24] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[24]),
        .Q(\buffer_reg[0] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][25] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[25]),
        .Q(\buffer_reg[0] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][26] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[26]),
        .Q(\buffer_reg[0] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][27] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[27]),
        .Q(\buffer_reg[0] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][28] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[28]),
        .Q(\buffer_reg[0] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][29] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[29]),
        .Q(\buffer_reg[0] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][2] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[2]),
        .Q(\buffer_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][30] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[30]),
        .Q(\buffer_reg[0] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][31] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[31]),
        .Q(\buffer_reg[0] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][3] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[3]),
        .Q(\buffer_reg[0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][4] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[4]),
        .Q(\buffer_reg[0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][5] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[5]),
        .Q(\buffer_reg[0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][6] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[6]),
        .Q(\buffer_reg[0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][7] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[7]),
        .Q(\buffer_reg[0] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][8] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[8]),
        .Q(\buffer_reg[0] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][9] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[9]),
        .Q(\buffer_reg[0] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][0] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\buffer_reg[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][10] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(\buffer_reg[1] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][11] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(\buffer_reg[1] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][12] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(\buffer_reg[1] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][13] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(\buffer_reg[1] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][14] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(\buffer_reg[1] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][15] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(\buffer_reg[1] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][16] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(\buffer_reg[1] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][17] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(\buffer_reg[1] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][18] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(\buffer_reg[1] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][19] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(\buffer_reg[1] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][1] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\buffer_reg[1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][20] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(\buffer_reg[1] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][21] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(\buffer_reg[1] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][22] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(\buffer_reg[1] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][23] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(\buffer_reg[1] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][24] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(\buffer_reg[1] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][25] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(\buffer_reg[1] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][26] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(\buffer_reg[1] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][27] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(\buffer_reg[1] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][28] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(\buffer_reg[1] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][29] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(\buffer_reg[1] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][2] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\buffer_reg[1] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][30] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(\buffer_reg[1] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][31] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(\buffer_reg[1] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][3] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\buffer_reg[1] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][4] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\buffer_reg[1] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][5] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\buffer_reg[1] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][6] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\buffer_reg[1] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][7] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\buffer_reg[1] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][8] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(\buffer_reg[1] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][9] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(\buffer_reg[1] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][0] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\buffer_reg[2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][10] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(\buffer_reg[2] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][11] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(\buffer_reg[2] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][12] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(\buffer_reg[2] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][13] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(\buffer_reg[2] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][14] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(\buffer_reg[2] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][15] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(\buffer_reg[2] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][16] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(\buffer_reg[2] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][17] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(\buffer_reg[2] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][18] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(\buffer_reg[2] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][19] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(\buffer_reg[2] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][1] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\buffer_reg[2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][20] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(\buffer_reg[2] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][21] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(\buffer_reg[2] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][22] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(\buffer_reg[2] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][23] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(\buffer_reg[2] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][24] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(\buffer_reg[2] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][25] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(\buffer_reg[2] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][26] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(\buffer_reg[2] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][27] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(\buffer_reg[2] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][28] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(\buffer_reg[2] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][29] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(\buffer_reg[2] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][2] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\buffer_reg[2] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][30] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(\buffer_reg[2] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][31] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(\buffer_reg[2] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][3] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\buffer_reg[2] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][4] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\buffer_reg[2] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][5] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\buffer_reg[2] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][6] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\buffer_reg[2] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][7] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\buffer_reg[2] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][8] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(\buffer_reg[2] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][9] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(\buffer_reg[2] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][0] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\buffer_reg[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][10] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(\buffer_reg[3] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][11] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(\buffer_reg[3] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][12] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(\buffer_reg[3] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][13] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(\buffer_reg[3] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][14] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(\buffer_reg[3] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][15] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(\buffer_reg[3] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][16] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(\buffer_reg[3] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][17] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(\buffer_reg[3] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][18] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(\buffer_reg[3] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][19] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(\buffer_reg[3] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][1] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\buffer_reg[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][20] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(\buffer_reg[3] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][21] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(\buffer_reg[3] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][22] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(\buffer_reg[3] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][23] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(\buffer_reg[3] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][24] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(\buffer_reg[3] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][25] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(\buffer_reg[3] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][26] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(\buffer_reg[3] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][27] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(\buffer_reg[3] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][28] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(\buffer_reg[3] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][29] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(\buffer_reg[3] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][2] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\buffer_reg[3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][30] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(\buffer_reg[3] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][31] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(\buffer_reg[3] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][3] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\buffer_reg[3] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][4] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\buffer_reg[3] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][5] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\buffer_reg[3] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][6] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\buffer_reg[3] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][7] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\buffer_reg[3] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][8] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(\buffer_reg[3] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][9] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(\buffer_reg[3] [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFD10)) 
    done_i_1
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[1] ),
        .I3(done),
        .O(done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(done_i_1_n_0),
        .Q(done));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[0]_i_1 
       (.I0(\buffer_reg[2] [0]),
        .I1(\buffer_reg[3] [0]),
        .I2(\buffer_reg[0] [0]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[10]_i_1 
       (.I0(\buffer_reg[2] [10]),
        .I1(\buffer_reg[3] [10]),
        .I2(\buffer_reg[0] [10]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[11]_i_1 
       (.I0(\buffer_reg[2] [11]),
        .I1(\buffer_reg[3] [11]),
        .I2(\buffer_reg[0] [11]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [11]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[12]_i_1 
       (.I0(\buffer_reg[2] [12]),
        .I1(\buffer_reg[3] [12]),
        .I2(\buffer_reg[0] [12]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [12]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[13]_i_1 
       (.I0(\buffer_reg[2] [13]),
        .I1(\buffer_reg[3] [13]),
        .I2(\buffer_reg[0] [13]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [13]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[14]_i_1 
       (.I0(\buffer_reg[2] [14]),
        .I1(\buffer_reg[3] [14]),
        .I2(\buffer_reg[0] [14]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [14]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[15]_i_1 
       (.I0(\buffer_reg[2] [15]),
        .I1(\buffer_reg[3] [15]),
        .I2(\buffer_reg[0] [15]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [15]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[16]_i_1 
       (.I0(\buffer_reg[2] [16]),
        .I1(\buffer_reg[3] [16]),
        .I2(\buffer_reg[0] [16]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [16]),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[17]_i_1 
       (.I0(\buffer_reg[2] [17]),
        .I1(\buffer_reg[3] [17]),
        .I2(\buffer_reg[0] [17]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [17]),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[18]_i_1 
       (.I0(\buffer_reg[2] [18]),
        .I1(\buffer_reg[3] [18]),
        .I2(\buffer_reg[0] [18]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [18]),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[19]_i_1 
       (.I0(\buffer_reg[2] [19]),
        .I1(\buffer_reg[3] [19]),
        .I2(\buffer_reg[0] [19]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [19]),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[1]_i_1 
       (.I0(\buffer_reg[2] [1]),
        .I1(\buffer_reg[3] [1]),
        .I2(\buffer_reg[0] [1]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[20]_i_1 
       (.I0(\buffer_reg[2] [20]),
        .I1(\buffer_reg[3] [20]),
        .I2(\buffer_reg[0] [20]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [20]),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[21]_i_1 
       (.I0(\buffer_reg[2] [21]),
        .I1(\buffer_reg[3] [21]),
        .I2(\buffer_reg[0] [21]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [21]),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[22]_i_1 
       (.I0(\buffer_reg[2] [22]),
        .I1(\buffer_reg[3] [22]),
        .I2(\buffer_reg[0] [22]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [22]),
        .O(p_0_in[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[23]_i_1 
       (.I0(\buffer_reg[2] [23]),
        .I1(\buffer_reg[3] [23]),
        .I2(\buffer_reg[0] [23]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [23]),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[24]_i_1 
       (.I0(\buffer_reg[2] [24]),
        .I1(\buffer_reg[3] [24]),
        .I2(\buffer_reg[0] [24]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [24]),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[25]_i_1 
       (.I0(\buffer_reg[2] [25]),
        .I1(\buffer_reg[3] [25]),
        .I2(\buffer_reg[0] [25]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [25]),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[26]_i_1 
       (.I0(\buffer_reg[2] [26]),
        .I1(\buffer_reg[3] [26]),
        .I2(\buffer_reg[0] [26]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [26]),
        .O(p_0_in[26]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[27]_i_1 
       (.I0(\buffer_reg[2] [27]),
        .I1(\buffer_reg[3] [27]),
        .I2(\buffer_reg[0] [27]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [27]),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[28]_i_1 
       (.I0(\buffer_reg[2] [28]),
        .I1(\buffer_reg[3] [28]),
        .I2(\buffer_reg[0] [28]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [28]),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[29]_i_1 
       (.I0(\buffer_reg[2] [29]),
        .I1(\buffer_reg[3] [29]),
        .I2(\buffer_reg[0] [29]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [29]),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[2]_i_1 
       (.I0(\buffer_reg[2] [2]),
        .I1(\buffer_reg[3] [2]),
        .I2(\buffer_reg[0] [2]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[30]_i_1 
       (.I0(\buffer_reg[2] [30]),
        .I1(\buffer_reg[3] [30]),
        .I2(\buffer_reg[0] [30]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [30]),
        .O(p_0_in[30]));
  LUT4 #(
    .INIT(16'h0010)) 
    \dout[31]_i_1 
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[1] ),
        .I3(rst),
        .O(\dout[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[31]_i_2 
       (.I0(\buffer_reg[2] [31]),
        .I1(\buffer_reg[3] [31]),
        .I2(\buffer_reg[0] [31]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [31]),
        .O(p_0_in[31]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[3]_i_1 
       (.I0(\buffer_reg[2] [3]),
        .I1(\buffer_reg[3] [3]),
        .I2(\buffer_reg[0] [3]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[4]_i_1 
       (.I0(\buffer_reg[2] [4]),
        .I1(\buffer_reg[3] [4]),
        .I2(\buffer_reg[0] [4]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[5]_i_1 
       (.I0(\buffer_reg[2] [5]),
        .I1(\buffer_reg[3] [5]),
        .I2(\buffer_reg[0] [5]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[6]_i_1 
       (.I0(\buffer_reg[2] [6]),
        .I1(\buffer_reg[3] [6]),
        .I2(\buffer_reg[0] [6]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[7]_i_1 
       (.I0(\buffer_reg[2] [7]),
        .I1(\buffer_reg[3] [7]),
        .I2(\buffer_reg[0] [7]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[8]_i_1 
       (.I0(\buffer_reg[2] [8]),
        .I1(\buffer_reg[3] [8]),
        .I2(\buffer_reg[0] [8]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[9]_i_1 
       (.I0(\buffer_reg[2] [9]),
        .I1(\buffer_reg[3] [9]),
        .I2(\buffer_reg[0] [9]),
        .I3(\buffer_index_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[10] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[11] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[12] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(dout[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[13] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(dout[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[14] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(dout[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[15] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(dout[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[16] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[16]),
        .Q(dout[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[17] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[17]),
        .Q(dout[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[18] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[18]),
        .Q(dout[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[19] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[19]),
        .Q(dout[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[20] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[20]),
        .Q(dout[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[21] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[21]),
        .Q(dout[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[22] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[22]),
        .Q(dout[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[23] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[23]),
        .Q(dout[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[24] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[24]),
        .Q(dout[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[25] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[25]),
        .Q(dout[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[26] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[26]),
        .Q(dout[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[27] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[27]),
        .Q(dout[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[28] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[28]),
        .Q(dout[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[29] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[29]),
        .Q(dout[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[30] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[30]),
        .Q(dout[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[31] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[31]),
        .Q(dout[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[8] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[9] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(dout[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0005FFFF000C0000)) 
    \next_state[0]_i_1 
       (.I0(last),
        .I1(\next_state[0]_i_2_n_0 ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state_reg_n_0_[1] ),
        .I4(next_state),
        .I5(\next_state_reg_n_0_[0] ),
        .O(\next_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \next_state[0]_i_10 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[6]),
        .I2(s_axis_tdata[5]),
        .I3(s_axis_tdata[4]),
        .O(\next_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \next_state[0]_i_2 
       (.I0(\next_state[0]_i_4_n_0 ),
        .I1(\next_state[0]_i_5_n_0 ),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[18]),
        .I4(s_axis_tdata[27]),
        .I5(s_axis_tdata[26]),
        .O(\next_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FD00FD00FD)) 
    \next_state[0]_i_3 
       (.I0(\next_state_reg_n_0_[1] ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(rst),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_index_reg_n_0_[1] ),
        .O(next_state));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \next_state[0]_i_4 
       (.I0(\next_state[0]_i_6_n_0 ),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[17]),
        .I3(s_axis_tdata[22]),
        .I4(s_axis_tdata[23]),
        .O(\next_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \next_state[0]_i_5 
       (.I0(s_axis_tdata[30]),
        .I1(s_axis_tdata[31]),
        .I2(\next_state[0]_i_7_n_0 ),
        .I3(\next_state[0]_i_8_n_0 ),
        .I4(\next_state[0]_i_9_n_0 ),
        .I5(\next_state[0]_i_10_n_0 ),
        .O(\next_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \next_state[0]_i_6 
       (.I0(s_axis_tdata[28]),
        .I1(s_axis_tdata[29]),
        .I2(s_axis_tdata[24]),
        .I3(s_axis_tdata[25]),
        .I4(s_axis_tdata[21]),
        .I5(s_axis_tdata[20]),
        .O(\next_state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \next_state[0]_i_7 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[14]),
        .I2(s_axis_tdata[13]),
        .I3(s_axis_tdata[12]),
        .O(\next_state[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \next_state[0]_i_8 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tdata[8]),
        .O(\next_state[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \next_state[0]_i_9 
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[2]),
        .O(\next_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC0020CCCC002C)) 
    \next_state[1]_i_1 
       (.I0(last),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(\next_state_reg_n_0_[0] ),
        .I3(\next_state_reg_n_0_[2] ),
        .I4(rst),
        .I5(\next_state[1]_i_2_n_0 ),
        .O(\next_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \next_state[1]_i_2 
       (.I0(\buffer_index_reg_n_0_[0] ),
        .I1(\buffer_index_reg_n_0_[1] ),
        .O(\next_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF002F000F000F000)) 
    \next_state[2]_i_1 
       (.I0(\next_state_reg_n_0_[1] ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(rst),
        .I4(\buffer_index_reg_n_0_[0] ),
        .I5(\buffer_index_reg_n_0_[1] ),
        .O(\next_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\next_state[2]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_bit_reverse_accel_1_0,bit_reverse_accel,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "bit_reverse_accel,Vivado 2023.2" *) (* hls_module = "yes" *) 
module design_1_bit_reverse_accel_1_0
   (ap_clk,
    ap_rst_n,
    s_axis_TVALID,
    s_axis_TREADY,
    s_axis_TDATA,
    s_axis_TLAST,
    s_axis_TKEEP,
    s_axis_TSTRB,
    m_axis_TVALID,
    m_axis_TREADY,
    m_axis_TDATA,
    m_axis_TLAST,
    m_axis_TKEEP,
    m_axis_TSTRB);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axis:m_axis, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input [0:0]s_axis_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [3:0]s_axis_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TSTRB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input [3:0]s_axis_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output [0:0]m_axis_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) output [3:0]m_axis_TSTRB;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
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
  (* ap_ST_fsm_pp0_stage0 = "4'b0001" *) 
  (* ap_ST_fsm_pp0_stage1 = "4'b0010" *) 
  (* ap_ST_fsm_pp0_stage2 = "4'b0100" *) 
  (* ap_ST_fsm_pp0_stage3 = "4'b1000" *) 
  design_1_bit_reverse_accel_1_0_bit_reverse_accel inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
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

(* ORIG_REF_NAME = "bit_reverse_accel" *) (* ap_ST_fsm_pp0_stage0 = "4'b0001" *) (* ap_ST_fsm_pp0_stage1 = "4'b0010" *) 
(* ap_ST_fsm_pp0_stage2 = "4'b0100" *) (* ap_ST_fsm_pp0_stage3 = "4'b1000" *) (* hls_module = "yes" *) 
module design_1_bit_reverse_accel_1_0_bit_reverse_accel
   (ap_clk,
    ap_rst_n,
    s_axis_TDATA,
    s_axis_TVALID,
    s_axis_TREADY,
    s_axis_TKEEP,
    s_axis_TSTRB,
    s_axis_TLAST,
    m_axis_TDATA,
    m_axis_TVALID,
    m_axis_TREADY,
    m_axis_TKEEP,
    m_axis_TSTRB,
    m_axis_TLAST);
  input ap_clk;
  input ap_rst_n;
  input [31:0]s_axis_TDATA;
  input s_axis_TVALID;
  output s_axis_TREADY;
  input [3:0]s_axis_TKEEP;
  input [3:0]s_axis_TSTRB;
  input [0:0]s_axis_TLAST;
  output [31:0]m_axis_TDATA;
  output m_axis_TVALID;
  input m_axis_TREADY;
  output [3:0]m_axis_TKEEP;
  output [3:0]m_axis_TSTRB;
  output [0:0]m_axis_TLAST;

  wire \<const0> ;
  wire B_V_data_1_sel_wr;
  wire ap_CS_fsm_pp0_stage2;
  wire ap_CS_fsm_pp0_stage3;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[1] ;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire data_in0__0;
  wire [31:0]m_axis_TDATA;
  wire [0:0]m_axis_TLAST;
  wire m_axis_TREADY;
  wire m_axis_TVALID;
  wire regslice_both_m_axis_V_data_V_U_n_0;
  wire regslice_both_m_axis_V_data_V_U_n_3;
  wire regslice_both_m_axis_V_data_V_U_n_4;
  wire regslice_both_m_axis_V_data_V_U_n_5;
  wire regslice_both_m_axis_V_data_V_U_n_6;
  wire regslice_both_m_axis_V_last_V_U_n_0;
  wire regslice_both_s_axis_V_data_V_U_n_10;
  wire regslice_both_s_axis_V_data_V_U_n_11;
  wire regslice_both_s_axis_V_data_V_U_n_12;
  wire regslice_both_s_axis_V_data_V_U_n_13;
  wire regslice_both_s_axis_V_data_V_U_n_14;
  wire regslice_both_s_axis_V_data_V_U_n_15;
  wire regslice_both_s_axis_V_data_V_U_n_16;
  wire regslice_both_s_axis_V_data_V_U_n_17;
  wire regslice_both_s_axis_V_data_V_U_n_18;
  wire regslice_both_s_axis_V_data_V_U_n_19;
  wire regslice_both_s_axis_V_data_V_U_n_2;
  wire regslice_both_s_axis_V_data_V_U_n_20;
  wire regslice_both_s_axis_V_data_V_U_n_21;
  wire regslice_both_s_axis_V_data_V_U_n_22;
  wire regslice_both_s_axis_V_data_V_U_n_23;
  wire regslice_both_s_axis_V_data_V_U_n_24;
  wire regslice_both_s_axis_V_data_V_U_n_25;
  wire regslice_both_s_axis_V_data_V_U_n_26;
  wire regslice_both_s_axis_V_data_V_U_n_27;
  wire regslice_both_s_axis_V_data_V_U_n_28;
  wire regslice_both_s_axis_V_data_V_U_n_29;
  wire regslice_both_s_axis_V_data_V_U_n_30;
  wire regslice_both_s_axis_V_data_V_U_n_31;
  wire regslice_both_s_axis_V_data_V_U_n_32;
  wire regslice_both_s_axis_V_data_V_U_n_33;
  wire regslice_both_s_axis_V_data_V_U_n_34;
  wire regslice_both_s_axis_V_data_V_U_n_35;
  wire regslice_both_s_axis_V_data_V_U_n_36;
  wire regslice_both_s_axis_V_data_V_U_n_37;
  wire regslice_both_s_axis_V_data_V_U_n_6;
  wire regslice_both_s_axis_V_data_V_U_n_7;
  wire regslice_both_s_axis_V_data_V_U_n_8;
  wire regslice_both_s_axis_V_data_V_U_n_9;
  wire [31:0]s_axis_TDATA;
  wire s_axis_TREADY;
  wire s_axis_TVALID;

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
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(\ap_CS_fsm_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_pp0_stage3),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_m_axis_V_data_V_U_n_3),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  design_1_bit_reverse_accel_1_0_bit_reverse_accel_regslice_both regslice_both_m_axis_V_data_V_U
       (.\B_V_data_1_payload_A_reg[31]_0 ({regslice_both_s_axis_V_data_V_U_n_7,regslice_both_s_axis_V_data_V_U_n_8,regslice_both_s_axis_V_data_V_U_n_9,regslice_both_s_axis_V_data_V_U_n_10,regslice_both_s_axis_V_data_V_U_n_11,regslice_both_s_axis_V_data_V_U_n_12,regslice_both_s_axis_V_data_V_U_n_13,regslice_both_s_axis_V_data_V_U_n_14,regslice_both_s_axis_V_data_V_U_n_15,regslice_both_s_axis_V_data_V_U_n_16,regslice_both_s_axis_V_data_V_U_n_17,regslice_both_s_axis_V_data_V_U_n_18,regslice_both_s_axis_V_data_V_U_n_19,regslice_both_s_axis_V_data_V_U_n_20,regslice_both_s_axis_V_data_V_U_n_21,regslice_both_s_axis_V_data_V_U_n_22,regslice_both_s_axis_V_data_V_U_n_23,regslice_both_s_axis_V_data_V_U_n_24,regslice_both_s_axis_V_data_V_U_n_25,regslice_both_s_axis_V_data_V_U_n_26,regslice_both_s_axis_V_data_V_U_n_27,regslice_both_s_axis_V_data_V_U_n_28,regslice_both_s_axis_V_data_V_U_n_29,regslice_both_s_axis_V_data_V_U_n_30,regslice_both_s_axis_V_data_V_U_n_31,regslice_both_s_axis_V_data_V_U_n_32,regslice_both_s_axis_V_data_V_U_n_33,regslice_both_s_axis_V_data_V_U_n_34,regslice_both_s_axis_V_data_V_U_n_35,regslice_both_s_axis_V_data_V_U_n_36,regslice_both_s_axis_V_data_V_U_n_37,data_in0__0}),
        .B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .B_V_data_1_sel_wr_reg_0(regslice_both_m_axis_V_last_V_U_n_0),
        .\B_V_data_1_state_reg[0]_0 (m_axis_TVALID),
        .\B_V_data_1_state_reg[0]_1 (regslice_both_m_axis_V_data_V_U_n_3),
        .\B_V_data_1_state_reg[1]_0 (regslice_both_m_axis_V_data_V_U_n_0),
        .\B_V_data_1_state_reg[1]_1 (regslice_both_m_axis_V_data_V_U_n_6),
        .D(ap_NS_fsm[1]),
        .Q({ap_CS_fsm_pp0_stage3,ap_CS_fsm_pp0_stage2,\ap_CS_fsm_reg_n_0_[1] ,\ap_CS_fsm_reg_n_0_[0] }),
        .\ap_CS_fsm_reg[0] (regslice_both_m_axis_V_data_V_U_n_4),
        .\ap_CS_fsm_reg[1] (regslice_both_s_axis_V_data_V_U_n_6),
        .\ap_CS_fsm_reg[3] (regslice_both_m_axis_V_data_V_U_n_5),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg(regslice_both_s_axis_V_data_V_U_n_2),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .m_axis_TDATA(m_axis_TDATA),
        .m_axis_TREADY(m_axis_TREADY));
  design_1_bit_reverse_accel_1_0_bit_reverse_accel_regslice_both__parameterized1 regslice_both_m_axis_V_last_V_U
       (.\B_V_data_1_payload_A_reg[0]_0 (regslice_both_s_axis_V_data_V_U_n_6),
        .B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .B_V_data_1_sel_wr_reg_0(regslice_both_m_axis_V_data_V_U_n_6),
        .\B_V_data_1_state_reg[0]_0 (regslice_both_m_axis_V_data_V_U_n_5),
        .\B_V_data_1_state_reg[0]_1 (regslice_both_m_axis_V_data_V_U_n_4),
        .\B_V_data_1_state_reg[1]_0 (regslice_both_m_axis_V_last_V_U_n_0),
        .Q(ap_CS_fsm_pp0_stage3),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .m_axis_TLAST(m_axis_TLAST),
        .m_axis_TREADY(m_axis_TREADY));
  design_1_bit_reverse_accel_1_0_bit_reverse_accel_regslice_both_0 regslice_both_s_axis_V_data_V_U
       (.\B_V_data_1_payload_B_reg[0]_0 ({regslice_both_s_axis_V_data_V_U_n_7,regslice_both_s_axis_V_data_V_U_n_8,regslice_both_s_axis_V_data_V_U_n_9,regslice_both_s_axis_V_data_V_U_n_10,regslice_both_s_axis_V_data_V_U_n_11,regslice_both_s_axis_V_data_V_U_n_12,regslice_both_s_axis_V_data_V_U_n_13,regslice_both_s_axis_V_data_V_U_n_14,regslice_both_s_axis_V_data_V_U_n_15,regslice_both_s_axis_V_data_V_U_n_16,regslice_both_s_axis_V_data_V_U_n_17,regslice_both_s_axis_V_data_V_U_n_18,regslice_both_s_axis_V_data_V_U_n_19,regslice_both_s_axis_V_data_V_U_n_20,regslice_both_s_axis_V_data_V_U_n_21,regslice_both_s_axis_V_data_V_U_n_22,regslice_both_s_axis_V_data_V_U_n_23,regslice_both_s_axis_V_data_V_U_n_24,regslice_both_s_axis_V_data_V_U_n_25,regslice_both_s_axis_V_data_V_U_n_26,regslice_both_s_axis_V_data_V_U_n_27,regslice_both_s_axis_V_data_V_U_n_28,regslice_both_s_axis_V_data_V_U_n_29,regslice_both_s_axis_V_data_V_U_n_30,regslice_both_s_axis_V_data_V_U_n_31,regslice_both_s_axis_V_data_V_U_n_32,regslice_both_s_axis_V_data_V_U_n_33,regslice_both_s_axis_V_data_V_U_n_34,regslice_both_s_axis_V_data_V_U_n_35,regslice_both_s_axis_V_data_V_U_n_36,regslice_both_s_axis_V_data_V_U_n_37,data_in0__0}),
        .B_V_data_1_sel_rd_reg_0(regslice_both_m_axis_V_data_V_U_n_4),
        .\B_V_data_1_state_reg[0]_0 (regslice_both_s_axis_V_data_V_U_n_2),
        .\B_V_data_1_state_reg[0]_1 (regslice_both_s_axis_V_data_V_U_n_6),
        .\B_V_data_1_state_reg[1]_0 (s_axis_TREADY),
        .\B_V_data_1_state_reg[1]_1 (regslice_both_m_axis_V_data_V_U_n_5),
        .D({ap_NS_fsm[3:2],ap_NS_fsm[0]}),
        .Q({ap_CS_fsm_pp0_stage3,ap_CS_fsm_pp0_stage2,\ap_CS_fsm_reg_n_0_[1] ,\ap_CS_fsm_reg_n_0_[0] }),
        .\ap_CS_fsm_reg[2] (regslice_both_m_axis_V_data_V_U_n_0),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .m_axis_TREADY(m_axis_TREADY),
        .m_axis_TVALID(m_axis_TVALID),
        .s_axis_TDATA(s_axis_TDATA),
        .s_axis_TVALID(s_axis_TVALID));
endmodule

(* ORIG_REF_NAME = "bit_reverse_accel_regslice_both" *) 
module design_1_bit_reverse_accel_1_0_bit_reverse_accel_regslice_both
   (\B_V_data_1_state_reg[1]_0 ,
    \B_V_data_1_state_reg[0]_0 ,
    D,
    \B_V_data_1_state_reg[0]_1 ,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[3] ,
    \B_V_data_1_state_reg[1]_1 ,
    m_axis_TDATA,
    ap_rst_n_inv,
    ap_clk,
    m_axis_TREADY,
    ap_enable_reg_pp0_iter1,
    Q,
    \ap_CS_fsm_reg[1] ,
    ap_enable_reg_pp0_iter1_reg,
    ap_rst_n,
    B_V_data_1_sel_wr_reg_0,
    B_V_data_1_sel_wr,
    \B_V_data_1_payload_A_reg[31]_0 );
  output \B_V_data_1_state_reg[1]_0 ;
  output \B_V_data_1_state_reg[0]_0 ;
  output [0:0]D;
  output \B_V_data_1_state_reg[0]_1 ;
  output \ap_CS_fsm_reg[0] ;
  output \ap_CS_fsm_reg[3] ;
  output \B_V_data_1_state_reg[1]_1 ;
  output [31:0]m_axis_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input m_axis_TREADY;
  input ap_enable_reg_pp0_iter1;
  input [3:0]Q;
  input \ap_CS_fsm_reg[1] ;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_rst_n;
  input B_V_data_1_sel_wr_reg_0;
  input B_V_data_1_sel_wr;
  input [31:0]\B_V_data_1_payload_A_reg[31]_0 ;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [31:0]\B_V_data_1_payload_A_reg[31]_0 ;
  wire \B_V_data_1_payload_A_reg_n_0_[0] ;
  wire \B_V_data_1_payload_A_reg_n_0_[10] ;
  wire \B_V_data_1_payload_A_reg_n_0_[11] ;
  wire \B_V_data_1_payload_A_reg_n_0_[12] ;
  wire \B_V_data_1_payload_A_reg_n_0_[13] ;
  wire \B_V_data_1_payload_A_reg_n_0_[14] ;
  wire \B_V_data_1_payload_A_reg_n_0_[15] ;
  wire \B_V_data_1_payload_A_reg_n_0_[16] ;
  wire \B_V_data_1_payload_A_reg_n_0_[17] ;
  wire \B_V_data_1_payload_A_reg_n_0_[18] ;
  wire \B_V_data_1_payload_A_reg_n_0_[19] ;
  wire \B_V_data_1_payload_A_reg_n_0_[1] ;
  wire \B_V_data_1_payload_A_reg_n_0_[20] ;
  wire \B_V_data_1_payload_A_reg_n_0_[21] ;
  wire \B_V_data_1_payload_A_reg_n_0_[22] ;
  wire \B_V_data_1_payload_A_reg_n_0_[23] ;
  wire \B_V_data_1_payload_A_reg_n_0_[24] ;
  wire \B_V_data_1_payload_A_reg_n_0_[25] ;
  wire \B_V_data_1_payload_A_reg_n_0_[26] ;
  wire \B_V_data_1_payload_A_reg_n_0_[27] ;
  wire \B_V_data_1_payload_A_reg_n_0_[28] ;
  wire \B_V_data_1_payload_A_reg_n_0_[29] ;
  wire \B_V_data_1_payload_A_reg_n_0_[2] ;
  wire \B_V_data_1_payload_A_reg_n_0_[30] ;
  wire \B_V_data_1_payload_A_reg_n_0_[31] ;
  wire \B_V_data_1_payload_A_reg_n_0_[3] ;
  wire \B_V_data_1_payload_A_reg_n_0_[4] ;
  wire \B_V_data_1_payload_A_reg_n_0_[5] ;
  wire \B_V_data_1_payload_A_reg_n_0_[6] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_A_reg_n_0_[8] ;
  wire \B_V_data_1_payload_A_reg_n_0_[9] ;
  wire \B_V_data_1_payload_B_reg_n_0_[0] ;
  wire \B_V_data_1_payload_B_reg_n_0_[10] ;
  wire \B_V_data_1_payload_B_reg_n_0_[11] ;
  wire \B_V_data_1_payload_B_reg_n_0_[12] ;
  wire \B_V_data_1_payload_B_reg_n_0_[13] ;
  wire \B_V_data_1_payload_B_reg_n_0_[14] ;
  wire \B_V_data_1_payload_B_reg_n_0_[15] ;
  wire \B_V_data_1_payload_B_reg_n_0_[16] ;
  wire \B_V_data_1_payload_B_reg_n_0_[17] ;
  wire \B_V_data_1_payload_B_reg_n_0_[18] ;
  wire \B_V_data_1_payload_B_reg_n_0_[19] ;
  wire \B_V_data_1_payload_B_reg_n_0_[1] ;
  wire \B_V_data_1_payload_B_reg_n_0_[20] ;
  wire \B_V_data_1_payload_B_reg_n_0_[21] ;
  wire \B_V_data_1_payload_B_reg_n_0_[22] ;
  wire \B_V_data_1_payload_B_reg_n_0_[23] ;
  wire \B_V_data_1_payload_B_reg_n_0_[24] ;
  wire \B_V_data_1_payload_B_reg_n_0_[25] ;
  wire \B_V_data_1_payload_B_reg_n_0_[26] ;
  wire \B_V_data_1_payload_B_reg_n_0_[27] ;
  wire \B_V_data_1_payload_B_reg_n_0_[28] ;
  wire \B_V_data_1_payload_B_reg_n_0_[29] ;
  wire \B_V_data_1_payload_B_reg_n_0_[2] ;
  wire \B_V_data_1_payload_B_reg_n_0_[30] ;
  wire \B_V_data_1_payload_B_reg_n_0_[31] ;
  wire \B_V_data_1_payload_B_reg_n_0_[3] ;
  wire \B_V_data_1_payload_B_reg_n_0_[4] ;
  wire \B_V_data_1_payload_B_reg_n_0_[5] ;
  wire \B_V_data_1_payload_B_reg_n_0_[6] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg_n_0_[8] ;
  wire \B_V_data_1_payload_B_reg_n_0_[9] ;
  wire B_V_data_1_sel_rd_i_1__0_n_0;
  wire B_V_data_1_sel_rd_reg_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_0;
  wire B_V_data_1_sel_wr_i_1__0_n_0;
  wire B_V_data_1_sel_wr_reg_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__1_n_0 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[0]_1 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire \B_V_data_1_state_reg[1]_1 ;
  wire [0:0]D;
  wire [3:0]Q;
  wire \ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [31:0]m_axis_TDATA;
  wire m_axis_TREADY;

  LUT3 #(
    .INIT(8'h45)) 
    \B_V_data_1_payload_A[31]_i_1__0 
       (.I0(B_V_data_1_sel_wr_0),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_A));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [0]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [10]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [11]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [12]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [13]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [14]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [15]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [16]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [17]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [18]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [19]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [1]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [20]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [21]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [22]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [23]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [24]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [25]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [26]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [27]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [28]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [29]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [2]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [30]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [31]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [3]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [4]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [5]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [6]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [8]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[31]_0 [9]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_payload_B[31]_i_1__0 
       (.I0(B_V_data_1_sel_wr_0),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_B));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [0]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [10]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [11]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [12]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [13]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [14]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [15]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [16]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [17]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [18]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [19]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [1]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [20]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [21]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [22]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [23]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [24]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [25]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [26]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [27]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [28]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [29]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [2]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [30]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [31]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [3]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [4]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [5]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [6]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [8]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[31]_0 [9]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(m_axis_TREADY),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(B_V_data_1_sel_rd_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_0),
        .Q(B_V_data_1_sel_rd_reg_n_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h1FE0)) 
    B_V_data_1_sel_wr_i_1
       (.I0(\ap_CS_fsm_reg[0] ),
        .I1(\ap_CS_fsm_reg[3] ),
        .I2(B_V_data_1_sel_wr_reg_0),
        .I3(B_V_data_1_sel_wr),
        .O(\B_V_data_1_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000F0F1FFFF0F0E)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(Q[2]),
        .I4(\ap_CS_fsm_reg[0] ),
        .I5(B_V_data_1_sel_wr_0),
        .O(B_V_data_1_sel_wr_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__0_n_0),
        .Q(B_V_data_1_sel_wr_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA8AAAAAAA8A8A8A8)) 
    \B_V_data_1_state[0]_i_1__1 
       (.I0(ap_rst_n),
        .I1(\ap_CS_fsm_reg[0] ),
        .I2(\ap_CS_fsm_reg[3] ),
        .I3(m_axis_TREADY),
        .I4(\B_V_data_1_state_reg[1]_0 ),
        .I5(\B_V_data_1_state_reg[0]_0 ),
        .O(\B_V_data_1_state[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hDDDFDDDD)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(m_axis_TREADY),
        .I2(\ap_CS_fsm_reg[0] ),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_state));
  LUT6 #(
    .INIT(64'hAA2A000000000000)) 
    \B_V_data_1_state[1]_i_3 
       (.I0(Q[0]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(m_axis_TREADY),
        .I4(ap_enable_reg_pp0_iter1_reg),
        .I5(\B_V_data_1_state_reg[1]_0 ),
        .O(\ap_CS_fsm_reg[0] ));
  LUT5 #(
    .INIT(32'hF000E000)) 
    \B_V_data_1_state[1]_i_4 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(ap_enable_reg_pp0_iter1_reg),
        .I4(Q[2]),
        .O(\ap_CS_fsm_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__1_n_0 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFBF000000BF00)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(m_axis_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q[0]),
        .I4(\ap_CS_fsm_reg[1] ),
        .I5(Q[1]),
        .O(D));
  LUT6 #(
    .INIT(64'h5555C00000000000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(\ap_CS_fsm_reg[0] ),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(Q[3]),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(ap_rst_n),
        .O(\B_V_data_1_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[0]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[10]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[11]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[12]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[13]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[14]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[15]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[16]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[17]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[18]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[19]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[1]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[20]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[21]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[22]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[23]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[24]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[25]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[26]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[27]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[28]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[29]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[2]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[30]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[30] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[30] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[31]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[31] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[31] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[3]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[4]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[5]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[6]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[7]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[8]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_TDATA[9]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(m_axis_TDATA[9]));
endmodule

(* ORIG_REF_NAME = "bit_reverse_accel_regslice_both" *) 
module design_1_bit_reverse_accel_1_0_bit_reverse_accel_regslice_both_0
   (\B_V_data_1_state_reg[1]_0 ,
    ap_rst_n_inv,
    \B_V_data_1_state_reg[0]_0 ,
    D,
    \B_V_data_1_state_reg[0]_1 ,
    \B_V_data_1_payload_B_reg[0]_0 ,
    ap_clk,
    ap_rst_n,
    Q,
    \ap_CS_fsm_reg[2] ,
    m_axis_TREADY,
    m_axis_TVALID,
    ap_enable_reg_pp0_iter1,
    B_V_data_1_sel_rd_reg_0,
    \B_V_data_1_state_reg[1]_1 ,
    s_axis_TVALID,
    s_axis_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output ap_rst_n_inv;
  output \B_V_data_1_state_reg[0]_0 ;
  output [2:0]D;
  output \B_V_data_1_state_reg[0]_1 ;
  output [31:0]\B_V_data_1_payload_B_reg[0]_0 ;
  input ap_clk;
  input ap_rst_n;
  input [3:0]Q;
  input \ap_CS_fsm_reg[2] ;
  input m_axis_TREADY;
  input m_axis_TVALID;
  input ap_enable_reg_pp0_iter1;
  input B_V_data_1_sel_rd_reg_0;
  input \B_V_data_1_state_reg[1]_1 ;
  input s_axis_TVALID;
  input [31:0]s_axis_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A_reg_n_0_[0] ;
  wire \B_V_data_1_payload_A_reg_n_0_[10] ;
  wire \B_V_data_1_payload_A_reg_n_0_[11] ;
  wire \B_V_data_1_payload_A_reg_n_0_[12] ;
  wire \B_V_data_1_payload_A_reg_n_0_[13] ;
  wire \B_V_data_1_payload_A_reg_n_0_[14] ;
  wire \B_V_data_1_payload_A_reg_n_0_[15] ;
  wire \B_V_data_1_payload_A_reg_n_0_[16] ;
  wire \B_V_data_1_payload_A_reg_n_0_[17] ;
  wire \B_V_data_1_payload_A_reg_n_0_[18] ;
  wire \B_V_data_1_payload_A_reg_n_0_[19] ;
  wire \B_V_data_1_payload_A_reg_n_0_[1] ;
  wire \B_V_data_1_payload_A_reg_n_0_[20] ;
  wire \B_V_data_1_payload_A_reg_n_0_[21] ;
  wire \B_V_data_1_payload_A_reg_n_0_[22] ;
  wire \B_V_data_1_payload_A_reg_n_0_[23] ;
  wire \B_V_data_1_payload_A_reg_n_0_[24] ;
  wire \B_V_data_1_payload_A_reg_n_0_[25] ;
  wire \B_V_data_1_payload_A_reg_n_0_[26] ;
  wire \B_V_data_1_payload_A_reg_n_0_[27] ;
  wire \B_V_data_1_payload_A_reg_n_0_[28] ;
  wire \B_V_data_1_payload_A_reg_n_0_[29] ;
  wire \B_V_data_1_payload_A_reg_n_0_[2] ;
  wire \B_V_data_1_payload_A_reg_n_0_[30] ;
  wire \B_V_data_1_payload_A_reg_n_0_[31] ;
  wire \B_V_data_1_payload_A_reg_n_0_[3] ;
  wire \B_V_data_1_payload_A_reg_n_0_[4] ;
  wire \B_V_data_1_payload_A_reg_n_0_[5] ;
  wire \B_V_data_1_payload_A_reg_n_0_[6] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_A_reg_n_0_[8] ;
  wire \B_V_data_1_payload_A_reg_n_0_[9] ;
  wire [31:0]\B_V_data_1_payload_B_reg[0]_0 ;
  wire \B_V_data_1_payload_B_reg_n_0_[0] ;
  wire \B_V_data_1_payload_B_reg_n_0_[10] ;
  wire \B_V_data_1_payload_B_reg_n_0_[11] ;
  wire \B_V_data_1_payload_B_reg_n_0_[12] ;
  wire \B_V_data_1_payload_B_reg_n_0_[13] ;
  wire \B_V_data_1_payload_B_reg_n_0_[14] ;
  wire \B_V_data_1_payload_B_reg_n_0_[15] ;
  wire \B_V_data_1_payload_B_reg_n_0_[16] ;
  wire \B_V_data_1_payload_B_reg_n_0_[17] ;
  wire \B_V_data_1_payload_B_reg_n_0_[18] ;
  wire \B_V_data_1_payload_B_reg_n_0_[19] ;
  wire \B_V_data_1_payload_B_reg_n_0_[1] ;
  wire \B_V_data_1_payload_B_reg_n_0_[20] ;
  wire \B_V_data_1_payload_B_reg_n_0_[21] ;
  wire \B_V_data_1_payload_B_reg_n_0_[22] ;
  wire \B_V_data_1_payload_B_reg_n_0_[23] ;
  wire \B_V_data_1_payload_B_reg_n_0_[24] ;
  wire \B_V_data_1_payload_B_reg_n_0_[25] ;
  wire \B_V_data_1_payload_B_reg_n_0_[26] ;
  wire \B_V_data_1_payload_B_reg_n_0_[27] ;
  wire \B_V_data_1_payload_B_reg_n_0_[28] ;
  wire \B_V_data_1_payload_B_reg_n_0_[29] ;
  wire \B_V_data_1_payload_B_reg_n_0_[2] ;
  wire \B_V_data_1_payload_B_reg_n_0_[30] ;
  wire \B_V_data_1_payload_B_reg_n_0_[31] ;
  wire \B_V_data_1_payload_B_reg_n_0_[3] ;
  wire \B_V_data_1_payload_B_reg_n_0_[4] ;
  wire \B_V_data_1_payload_B_reg_n_0_[5] ;
  wire \B_V_data_1_payload_B_reg_n_0_[6] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg_n_0_[8] ;
  wire \B_V_data_1_payload_B_reg_n_0_[9] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1_n_0;
  wire B_V_data_1_sel_rd_reg_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__1_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__0_n_0 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[0]_1 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire \B_V_data_1_state_reg[1]_1 ;
  wire [2:0]D;
  wire [3:0]Q;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire m_axis_TREADY;
  wire m_axis_TVALID;
  wire [31:0]s_axis_TDATA;
  wire s_axis_TVALID;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[0]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[31] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[31] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[10]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[11]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[12]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[13]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[14]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[15]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[16]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[17]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[18]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[19]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[1]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[30] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[30] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[20]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[21]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[22]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[23]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[24]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[25]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[26]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[27]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[28]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[29]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[2]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[30]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [30]));
  LUT3 #(
    .INIT(8'h45)) 
    \B_V_data_1_payload_A[31]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_A));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[31]_i_2 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[3]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[4]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[5]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[6]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[7]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[8]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B_V_data_1_payload_A[9]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[0]_0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[0]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[10]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[11]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[12]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[13]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[14]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[15]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[16]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[17]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[18]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[19]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[1]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[20]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[21]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[22]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[23]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[24]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[25]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[26]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[27]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[28]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[29]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[2]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[30]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[31]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[3]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[4]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[5]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[6]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[8]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_TDATA[9]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_payload_B[31]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_B));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[0]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[10]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[11]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[12]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[13]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[14]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[15]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[16]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[17]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[18]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[19]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[1]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[20]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[21]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[22]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[23]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[24]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[25]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[26]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[27]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[28]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[29]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[2]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[30]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[31]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[3]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[4]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[5]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[6]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[8]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_TDATA[9]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000F0F1FFFF0F0E)) 
    B_V_data_1_sel_rd_i_1
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\B_V_data_1_state_reg[0]_1 ),
        .I3(Q[2]),
        .I4(B_V_data_1_sel_rd_reg_0),
        .I5(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__1
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(s_axis_TVALID),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__1_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h8A808A808A80AA80)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(ap_rst_n),
        .I1(s_axis_TVALID),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .I4(\B_V_data_1_state_reg[1]_1 ),
        .I5(B_V_data_1_sel_rd_reg_0),
        .O(\B_V_data_1_state[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFDFFFDFD)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_state_reg[1]_1 ),
        .I3(s_axis_TVALID),
        .I4(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_0 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hEFEEEEEE22222222)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[3]),
        .I1(\B_V_data_1_state_reg[0]_1 ),
        .I2(m_axis_TREADY),
        .I3(m_axis_TVALID),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(Q[0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(\ap_CS_fsm_reg[2] ),
        .O(\B_V_data_1_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(Q[2]),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(\ap_CS_fsm_reg[2] ),
        .I3(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(Q[3]),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(\ap_CS_fsm_reg[2] ),
        .I3(Q[2]),
        .O(D[2]));
endmodule

(* ORIG_REF_NAME = "bit_reverse_accel_regslice_both" *) 
module design_1_bit_reverse_accel_1_0_bit_reverse_accel_regslice_both__parameterized1
   (\B_V_data_1_state_reg[1]_0 ,
    B_V_data_1_sel_wr,
    m_axis_TLAST,
    ap_rst_n_inv,
    ap_clk,
    B_V_data_1_sel_wr_reg_0,
    ap_rst_n,
    \B_V_data_1_state_reg[0]_0 ,
    \B_V_data_1_state_reg[0]_1 ,
    m_axis_TREADY,
    Q,
    \B_V_data_1_payload_A_reg[0]_0 );
  output \B_V_data_1_state_reg[1]_0 ;
  output B_V_data_1_sel_wr;
  output [0:0]m_axis_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input B_V_data_1_sel_wr_reg_0;
  input ap_rst_n;
  input \B_V_data_1_state_reg[0]_0 ;
  input \B_V_data_1_state_reg[0]_1 ;
  input m_axis_TREADY;
  input [0:0]Q;
  input \B_V_data_1_payload_A_reg[0]_0 ;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1_n_0 ;
  wire \B_V_data_1_payload_A_reg[0]_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__1_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_reg_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_0 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[0]_1 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [0:0]m_axis_TLAST;
  wire m_axis_TREADY;

  LUT6 #(
    .INIT(64'hF2FFF2F202000202)) 
    \B_V_data_1_payload_A[0]_i_1 
       (.I0(Q),
        .I1(\B_V_data_1_payload_A_reg[0]_0 ),
        .I2(B_V_data_1_sel_wr),
        .I3(\B_V_data_1_state_reg[1]_0 ),
        .I4(\B_V_data_1_state_reg_n_0_[0] ),
        .I5(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2FFF2F2F20002020)) 
    \B_V_data_1_payload_B[0]_i_1 
       (.I0(Q),
        .I1(\B_V_data_1_payload_A_reg[0]_0 ),
        .I2(B_V_data_1_sel_wr),
        .I3(\B_V_data_1_state_reg[1]_0 ),
        .I4(\B_V_data_1_state_reg_n_0_[0] ),
        .I5(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__1
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(m_axis_TREADY),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__1_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_reg_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hAAA2AAAA88808880)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(\B_V_data_1_state_reg[0]_1 ),
        .I4(m_axis_TREADY),
        .I5(\B_V_data_1_state_reg_n_0_[0] ),
        .O(\B_V_data_1_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBBBFB)) 
    \B_V_data_1_state[1]_i_1__1 
       (.I0(m_axis_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(\B_V_data_1_state_reg[0]_1 ),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_TLAST[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(m_axis_TLAST));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_fifo2axis_0_0,fifo2axis,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fifo2axis,Vivado 2023.2" *) 
module design_1_fifo2axis_0_0
   (clk,
    rst,
    fifo_data,
    start,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    start_accel,
    s_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input [31:0]fifo_data;
  input start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) output [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) output s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) input s_axis_tready;
  output start_accel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;

  wire \<const0> ;
  wire clk;
  wire [31:0]fifo_data;
  wire rst;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire start;
  wire start_accel;

  assign s_axis_tvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_fifo2axis_0_0_fifo2axis inst
       (.clk(clk),
        .fifo_data(fifo_data),
        .rst(rst),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .start(start));
  LUT1 #(
    .INIT(2'h1)) 
    start_accel_INST_0
       (.I0(rst),
        .O(start_accel));
endmodule

(* ORIG_REF_NAME = "fifo2axis" *) 
module design_1_fifo2axis_0_0_fifo2axis
   (s_axis_tdata,
    rst,
    s_axis_tready,
    start,
    clk,
    s_axis_tlast,
    fifo_data);
  output [31:0]s_axis_tdata;
  input rst;
  input s_axis_tready;
  input start;
  input clk;
  input s_axis_tlast;
  input [31:0]fifo_data;

  wire \buffer[0][31]_i_1_n_0 ;
  wire \buffer[1][31]_i_1_n_0 ;
  wire \buffer[2][31]_i_1_n_0 ;
  wire \buffer[3][31]_i_1_n_0 ;
  wire \buffer_index[0]_i_1_n_0 ;
  wire \buffer_index[1]_i_1_n_0 ;
  wire \buffer_index_reg_n_0_[0] ;
  wire \buffer_index_reg_n_0_[1] ;
  wire [31:0]\buffer_reg[0] ;
  wire [31:0]\buffer_reg[1] ;
  wire [31:0]\buffer_reg[2] ;
  wire [31:0]\buffer_reg[3] ;
  wire clk;
  wire [0:0]data1;
  wire [31:0]fifo_data;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[0]_i_2_n_0 ;
  wire \next_state[0]_i_3_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state[2]_i_1_n_0 ;
  wire \next_state[2]_i_2_n_0 ;
  wire \next_state[2]_i_3_n_0 ;
  wire \next_state_reg_n_0_[0] ;
  wire \next_state_reg_n_0_[1] ;
  wire \next_state_reg_n_0_[2] ;
  wire rst;
  wire [31:0]s_axis_tdata;
  wire [31:0]s_axis_tdata0;
  wire \s_axis_tdata[31]_i_1_n_0 ;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire \send_index[0]_i_1_n_0 ;
  wire \send_index[1]_i_1_n_0 ;
  wire \send_index_reg_n_0_[0] ;
  wire \send_index_reg_n_0_[1] ;
  wire start;

  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \buffer[0][31]_i_1 
       (.I0(\buffer_index_reg_n_0_[0] ),
        .I1(\buffer_index_reg_n_0_[1] ),
        .I2(rst),
        .I3(\next_state_reg_n_0_[0] ),
        .I4(\next_state_reg_n_0_[2] ),
        .I5(\next_state_reg_n_0_[1] ),
        .O(\buffer[0][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \buffer[1][31]_i_1 
       (.I0(\buffer_index_reg_n_0_[1] ),
        .I1(\buffer_index_reg_n_0_[0] ),
        .I2(rst),
        .I3(\next_state_reg_n_0_[0] ),
        .I4(\next_state_reg_n_0_[2] ),
        .I5(\next_state_reg_n_0_[1] ),
        .O(\buffer[1][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \buffer[2][31]_i_1 
       (.I0(\buffer_index_reg_n_0_[0] ),
        .I1(\buffer_index_reg_n_0_[1] ),
        .I2(rst),
        .I3(\next_state_reg_n_0_[0] ),
        .I4(\next_state_reg_n_0_[2] ),
        .I5(\next_state_reg_n_0_[1] ),
        .O(\buffer[2][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \buffer[3][31]_i_1 
       (.I0(\buffer_index_reg_n_0_[1] ),
        .I1(\buffer_index_reg_n_0_[0] ),
        .I2(rst),
        .I3(\next_state_reg_n_0_[0] ),
        .I4(\next_state_reg_n_0_[2] ),
        .I5(\next_state_reg_n_0_[1] ),
        .O(\buffer[3][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE11FF00FE11EE00)) 
    \buffer_index[0]_i_1 
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(\buffer_index_reg_n_0_[1] ),
        .I3(\buffer_index_reg_n_0_[0] ),
        .I4(\next_state_reg_n_0_[0] ),
        .I5(start),
        .O(\buffer_index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF1F0F0F0F1F0E0E0)) 
    \buffer_index[1]_i_1 
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(\buffer_index_reg_n_0_[1] ),
        .I3(\buffer_index_reg_n_0_[0] ),
        .I4(\next_state_reg_n_0_[0] ),
        .I5(start),
        .O(\buffer_index[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\buffer_index[0]_i_1_n_0 ),
        .Q(\buffer_index_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\buffer_index[1]_i_1_n_0 ),
        .Q(\buffer_index_reg_n_0_[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][0] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[0]),
        .Q(\buffer_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][10] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[10]),
        .Q(\buffer_reg[0] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][11] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[11]),
        .Q(\buffer_reg[0] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][12] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[12]),
        .Q(\buffer_reg[0] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][13] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[13]),
        .Q(\buffer_reg[0] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][14] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[14]),
        .Q(\buffer_reg[0] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][15] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[15]),
        .Q(\buffer_reg[0] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][16] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[16]),
        .Q(\buffer_reg[0] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][17] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[17]),
        .Q(\buffer_reg[0] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][18] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[18]),
        .Q(\buffer_reg[0] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][19] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[19]),
        .Q(\buffer_reg[0] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][1] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[1]),
        .Q(\buffer_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][20] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[20]),
        .Q(\buffer_reg[0] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][21] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[21]),
        .Q(\buffer_reg[0] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][22] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[22]),
        .Q(\buffer_reg[0] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][23] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[23]),
        .Q(\buffer_reg[0] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][24] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[24]),
        .Q(\buffer_reg[0] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][25] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[25]),
        .Q(\buffer_reg[0] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][26] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[26]),
        .Q(\buffer_reg[0] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][27] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[27]),
        .Q(\buffer_reg[0] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][28] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[28]),
        .Q(\buffer_reg[0] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][29] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[29]),
        .Q(\buffer_reg[0] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][2] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[2]),
        .Q(\buffer_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][30] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[30]),
        .Q(\buffer_reg[0] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][31] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[31]),
        .Q(\buffer_reg[0] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][3] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[3]),
        .Q(\buffer_reg[0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][4] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[4]),
        .Q(\buffer_reg[0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][5] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[5]),
        .Q(\buffer_reg[0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][6] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[6]),
        .Q(\buffer_reg[0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][7] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[7]),
        .Q(\buffer_reg[0] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][8] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[8]),
        .Q(\buffer_reg[0] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0][9] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[9]),
        .Q(\buffer_reg[0] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][0] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[0]),
        .Q(\buffer_reg[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][10] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[10]),
        .Q(\buffer_reg[1] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][11] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[11]),
        .Q(\buffer_reg[1] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][12] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[12]),
        .Q(\buffer_reg[1] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][13] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[13]),
        .Q(\buffer_reg[1] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][14] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[14]),
        .Q(\buffer_reg[1] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][15] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[15]),
        .Q(\buffer_reg[1] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][16] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[16]),
        .Q(\buffer_reg[1] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][17] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[17]),
        .Q(\buffer_reg[1] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][18] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[18]),
        .Q(\buffer_reg[1] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][19] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[19]),
        .Q(\buffer_reg[1] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][1] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[1]),
        .Q(\buffer_reg[1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][20] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[20]),
        .Q(\buffer_reg[1] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][21] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[21]),
        .Q(\buffer_reg[1] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][22] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[22]),
        .Q(\buffer_reg[1] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][23] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[23]),
        .Q(\buffer_reg[1] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][24] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[24]),
        .Q(\buffer_reg[1] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][25] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[25]),
        .Q(\buffer_reg[1] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][26] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[26]),
        .Q(\buffer_reg[1] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][27] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[27]),
        .Q(\buffer_reg[1] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][28] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[28]),
        .Q(\buffer_reg[1] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][29] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[29]),
        .Q(\buffer_reg[1] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][2] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[2]),
        .Q(\buffer_reg[1] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][30] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[30]),
        .Q(\buffer_reg[1] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][31] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[31]),
        .Q(\buffer_reg[1] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][3] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[3]),
        .Q(\buffer_reg[1] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][4] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[4]),
        .Q(\buffer_reg[1] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][5] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[5]),
        .Q(\buffer_reg[1] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][6] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[6]),
        .Q(\buffer_reg[1] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][7] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[7]),
        .Q(\buffer_reg[1] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][8] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[8]),
        .Q(\buffer_reg[1] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1][9] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[9]),
        .Q(\buffer_reg[1] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][0] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[0]),
        .Q(\buffer_reg[2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][10] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[10]),
        .Q(\buffer_reg[2] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][11] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[11]),
        .Q(\buffer_reg[2] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][12] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[12]),
        .Q(\buffer_reg[2] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][13] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[13]),
        .Q(\buffer_reg[2] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][14] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[14]),
        .Q(\buffer_reg[2] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][15] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[15]),
        .Q(\buffer_reg[2] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][16] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[16]),
        .Q(\buffer_reg[2] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][17] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[17]),
        .Q(\buffer_reg[2] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][18] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[18]),
        .Q(\buffer_reg[2] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][19] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[19]),
        .Q(\buffer_reg[2] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][1] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[1]),
        .Q(\buffer_reg[2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][20] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[20]),
        .Q(\buffer_reg[2] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][21] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[21]),
        .Q(\buffer_reg[2] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][22] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[22]),
        .Q(\buffer_reg[2] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][23] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[23]),
        .Q(\buffer_reg[2] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][24] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[24]),
        .Q(\buffer_reg[2] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][25] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[25]),
        .Q(\buffer_reg[2] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][26] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[26]),
        .Q(\buffer_reg[2] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][27] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[27]),
        .Q(\buffer_reg[2] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][28] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[28]),
        .Q(\buffer_reg[2] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][29] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[29]),
        .Q(\buffer_reg[2] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][2] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[2]),
        .Q(\buffer_reg[2] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][30] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[30]),
        .Q(\buffer_reg[2] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][31] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[31]),
        .Q(\buffer_reg[2] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][3] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[3]),
        .Q(\buffer_reg[2] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][4] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[4]),
        .Q(\buffer_reg[2] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][5] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[5]),
        .Q(\buffer_reg[2] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][6] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[6]),
        .Q(\buffer_reg[2] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][7] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[7]),
        .Q(\buffer_reg[2] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][8] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[8]),
        .Q(\buffer_reg[2] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2][9] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[9]),
        .Q(\buffer_reg[2] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][0] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[0]),
        .Q(\buffer_reg[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][10] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[10]),
        .Q(\buffer_reg[3] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][11] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[11]),
        .Q(\buffer_reg[3] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][12] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[12]),
        .Q(\buffer_reg[3] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][13] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[13]),
        .Q(\buffer_reg[3] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][14] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[14]),
        .Q(\buffer_reg[3] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][15] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[15]),
        .Q(\buffer_reg[3] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][16] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[16]),
        .Q(\buffer_reg[3] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][17] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[17]),
        .Q(\buffer_reg[3] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][18] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[18]),
        .Q(\buffer_reg[3] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][19] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[19]),
        .Q(\buffer_reg[3] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][1] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[1]),
        .Q(\buffer_reg[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][20] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[20]),
        .Q(\buffer_reg[3] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][21] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[21]),
        .Q(\buffer_reg[3] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][22] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[22]),
        .Q(\buffer_reg[3] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][23] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[23]),
        .Q(\buffer_reg[3] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][24] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[24]),
        .Q(\buffer_reg[3] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][25] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[25]),
        .Q(\buffer_reg[3] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][26] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[26]),
        .Q(\buffer_reg[3] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][27] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[27]),
        .Q(\buffer_reg[3] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][28] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[28]),
        .Q(\buffer_reg[3] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][29] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[29]),
        .Q(\buffer_reg[3] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][2] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[2]),
        .Q(\buffer_reg[3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][30] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[30]),
        .Q(\buffer_reg[3] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][31] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[31]),
        .Q(\buffer_reg[3] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][3] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[3]),
        .Q(\buffer_reg[3] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][4] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[4]),
        .Q(\buffer_reg[3] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][5] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[5]),
        .Q(\buffer_reg[3] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][6] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[6]),
        .Q(\buffer_reg[3] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][7] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[7]),
        .Q(\buffer_reg[3] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][8] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[8]),
        .Q(\buffer_reg[3] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3][9] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[9]),
        .Q(\buffer_reg[3] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0AFF0A0A0C0C0C0C)) 
    \next_state[0]_i_1 
       (.I0(\next_state[0]_i_2_n_0 ),
        .I1(\next_state[0]_i_3_n_0 ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state[2]_i_3_n_0 ),
        .I4(\next_state_reg_n_0_[0] ),
        .I5(\next_state_reg_n_0_[1] ),
        .O(\next_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FF0)) 
    \next_state[0]_i_2 
       (.I0(\send_index_reg_n_0_[1] ),
        .I1(\send_index_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[0] ),
        .I3(s_axis_tready),
        .O(\next_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F70)) 
    \next_state[0]_i_3 
       (.I0(\buffer_index_reg_n_0_[1] ),
        .I1(\buffer_index_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[0] ),
        .I3(start),
        .O(\next_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0AFF0F0F03030000)) 
    \next_state[1]_i_1 
       (.I0(\next_state[2]_i_2_n_0 ),
        .I1(data1),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state[2]_i_3_n_0 ),
        .I4(\next_state_reg_n_0_[0] ),
        .I5(\next_state_reg_n_0_[1] ),
        .O(\next_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \next_state[1]_i_2 
       (.I0(\buffer_index_reg_n_0_[1] ),
        .I1(\buffer_index_reg_n_0_[0] ),
        .O(data1));
  LUT6 #(
    .INIT(64'h0F00003350000000)) 
    \next_state[2]_i_1 
       (.I0(\next_state[2]_i_2_n_0 ),
        .I1(s_axis_tlast),
        .I2(\next_state[2]_i_3_n_0 ),
        .I3(\next_state_reg_n_0_[0] ),
        .I4(\next_state_reg_n_0_[1] ),
        .I5(\next_state_reg_n_0_[2] ),
        .O(\next_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \next_state[2]_i_2 
       (.I0(\send_index_reg_n_0_[1] ),
        .I1(\send_index_reg_n_0_[0] ),
        .I2(s_axis_tready),
        .O(\next_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \next_state[2]_i_3 
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(s_axis_tready),
        .I2(rst),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .O(\next_state[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\next_state[2]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[0]_i_1 
       (.I0(\buffer_reg[2] [0]),
        .I1(\buffer_reg[3] [0]),
        .I2(\buffer_reg[0] [0]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [0]),
        .O(s_axis_tdata0[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[10]_i_1 
       (.I0(\buffer_reg[2] [10]),
        .I1(\buffer_reg[3] [10]),
        .I2(\buffer_reg[0] [10]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [10]),
        .O(s_axis_tdata0[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[11]_i_1 
       (.I0(\buffer_reg[2] [11]),
        .I1(\buffer_reg[3] [11]),
        .I2(\buffer_reg[0] [11]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [11]),
        .O(s_axis_tdata0[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[12]_i_1 
       (.I0(\buffer_reg[2] [12]),
        .I1(\buffer_reg[3] [12]),
        .I2(\buffer_reg[0] [12]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [12]),
        .O(s_axis_tdata0[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[13]_i_1 
       (.I0(\buffer_reg[2] [13]),
        .I1(\buffer_reg[3] [13]),
        .I2(\buffer_reg[0] [13]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [13]),
        .O(s_axis_tdata0[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[14]_i_1 
       (.I0(\buffer_reg[2] [14]),
        .I1(\buffer_reg[3] [14]),
        .I2(\buffer_reg[0] [14]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [14]),
        .O(s_axis_tdata0[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[15]_i_1 
       (.I0(\buffer_reg[2] [15]),
        .I1(\buffer_reg[3] [15]),
        .I2(\buffer_reg[0] [15]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [15]),
        .O(s_axis_tdata0[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[16]_i_1 
       (.I0(\buffer_reg[2] [16]),
        .I1(\buffer_reg[3] [16]),
        .I2(\buffer_reg[0] [16]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [16]),
        .O(s_axis_tdata0[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[17]_i_1 
       (.I0(\buffer_reg[2] [17]),
        .I1(\buffer_reg[3] [17]),
        .I2(\buffer_reg[0] [17]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [17]),
        .O(s_axis_tdata0[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[18]_i_1 
       (.I0(\buffer_reg[2] [18]),
        .I1(\buffer_reg[3] [18]),
        .I2(\buffer_reg[0] [18]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [18]),
        .O(s_axis_tdata0[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[19]_i_1 
       (.I0(\buffer_reg[2] [19]),
        .I1(\buffer_reg[3] [19]),
        .I2(\buffer_reg[0] [19]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [19]),
        .O(s_axis_tdata0[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[1]_i_1 
       (.I0(\buffer_reg[2] [1]),
        .I1(\buffer_reg[3] [1]),
        .I2(\buffer_reg[0] [1]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [1]),
        .O(s_axis_tdata0[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[20]_i_1 
       (.I0(\buffer_reg[2] [20]),
        .I1(\buffer_reg[3] [20]),
        .I2(\buffer_reg[0] [20]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [20]),
        .O(s_axis_tdata0[20]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[21]_i_1 
       (.I0(\buffer_reg[2] [21]),
        .I1(\buffer_reg[3] [21]),
        .I2(\buffer_reg[0] [21]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [21]),
        .O(s_axis_tdata0[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[22]_i_1 
       (.I0(\buffer_reg[2] [22]),
        .I1(\buffer_reg[3] [22]),
        .I2(\buffer_reg[0] [22]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [22]),
        .O(s_axis_tdata0[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[23]_i_1 
       (.I0(\buffer_reg[2] [23]),
        .I1(\buffer_reg[3] [23]),
        .I2(\buffer_reg[0] [23]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [23]),
        .O(s_axis_tdata0[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[24]_i_1 
       (.I0(\buffer_reg[2] [24]),
        .I1(\buffer_reg[3] [24]),
        .I2(\buffer_reg[0] [24]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [24]),
        .O(s_axis_tdata0[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[25]_i_1 
       (.I0(\buffer_reg[2] [25]),
        .I1(\buffer_reg[3] [25]),
        .I2(\buffer_reg[0] [25]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [25]),
        .O(s_axis_tdata0[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[26]_i_1 
       (.I0(\buffer_reg[2] [26]),
        .I1(\buffer_reg[3] [26]),
        .I2(\buffer_reg[0] [26]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [26]),
        .O(s_axis_tdata0[26]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[27]_i_1 
       (.I0(\buffer_reg[2] [27]),
        .I1(\buffer_reg[3] [27]),
        .I2(\buffer_reg[0] [27]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [27]),
        .O(s_axis_tdata0[27]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[28]_i_1 
       (.I0(\buffer_reg[2] [28]),
        .I1(\buffer_reg[3] [28]),
        .I2(\buffer_reg[0] [28]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [28]),
        .O(s_axis_tdata0[28]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[29]_i_1 
       (.I0(\buffer_reg[2] [29]),
        .I1(\buffer_reg[3] [29]),
        .I2(\buffer_reg[0] [29]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [29]),
        .O(s_axis_tdata0[29]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[2]_i_1 
       (.I0(\buffer_reg[2] [2]),
        .I1(\buffer_reg[3] [2]),
        .I2(\buffer_reg[0] [2]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [2]),
        .O(s_axis_tdata0[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[30]_i_1 
       (.I0(\buffer_reg[2] [30]),
        .I1(\buffer_reg[3] [30]),
        .I2(\buffer_reg[0] [30]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [30]),
        .O(s_axis_tdata0[30]));
  LUT4 #(
    .INIT(16'h2000)) 
    \s_axis_tdata[31]_i_1 
       (.I0(s_axis_tready),
        .I1(\next_state_reg_n_0_[2] ),
        .I2(\next_state_reg_n_0_[0] ),
        .I3(\next_state_reg_n_0_[1] ),
        .O(\s_axis_tdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[31]_i_2 
       (.I0(\buffer_reg[2] [31]),
        .I1(\buffer_reg[3] [31]),
        .I2(\buffer_reg[0] [31]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [31]),
        .O(s_axis_tdata0[31]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[3]_i_1 
       (.I0(\buffer_reg[2] [3]),
        .I1(\buffer_reg[3] [3]),
        .I2(\buffer_reg[0] [3]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [3]),
        .O(s_axis_tdata0[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[4]_i_1 
       (.I0(\buffer_reg[2] [4]),
        .I1(\buffer_reg[3] [4]),
        .I2(\buffer_reg[0] [4]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [4]),
        .O(s_axis_tdata0[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[5]_i_1 
       (.I0(\buffer_reg[2] [5]),
        .I1(\buffer_reg[3] [5]),
        .I2(\buffer_reg[0] [5]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [5]),
        .O(s_axis_tdata0[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[6]_i_1 
       (.I0(\buffer_reg[2] [6]),
        .I1(\buffer_reg[3] [6]),
        .I2(\buffer_reg[0] [6]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [6]),
        .O(s_axis_tdata0[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[7]_i_1 
       (.I0(\buffer_reg[2] [7]),
        .I1(\buffer_reg[3] [7]),
        .I2(\buffer_reg[0] [7]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [7]),
        .O(s_axis_tdata0[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[8]_i_1 
       (.I0(\buffer_reg[2] [8]),
        .I1(\buffer_reg[3] [8]),
        .I2(\buffer_reg[0] [8]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [8]),
        .O(s_axis_tdata0[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axis_tdata[9]_i_1 
       (.I0(\buffer_reg[2] [9]),
        .I1(\buffer_reg[3] [9]),
        .I2(\buffer_reg[0] [9]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [9]),
        .O(s_axis_tdata0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[0]),
        .Q(s_axis_tdata[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[10] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[10]),
        .Q(s_axis_tdata[10]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[11] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[11]),
        .Q(s_axis_tdata[11]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[12] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[12]),
        .Q(s_axis_tdata[12]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[13] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[13]),
        .Q(s_axis_tdata[13]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[14] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[14]),
        .Q(s_axis_tdata[14]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[15] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[15]),
        .Q(s_axis_tdata[15]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[16] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[16]),
        .Q(s_axis_tdata[16]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[17] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[17]),
        .Q(s_axis_tdata[17]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[18] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[18]),
        .Q(s_axis_tdata[18]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[19] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[19]),
        .Q(s_axis_tdata[19]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[1]),
        .Q(s_axis_tdata[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[20] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[20]),
        .Q(s_axis_tdata[20]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[21] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[21]),
        .Q(s_axis_tdata[21]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[22] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[22]),
        .Q(s_axis_tdata[22]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[23] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[23]),
        .Q(s_axis_tdata[23]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[24] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[24]),
        .Q(s_axis_tdata[24]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[25] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[25]),
        .Q(s_axis_tdata[25]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[26] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[26]),
        .Q(s_axis_tdata[26]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[27] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[27]),
        .Q(s_axis_tdata[27]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[28] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[28]),
        .Q(s_axis_tdata[28]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[29] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[29]),
        .Q(s_axis_tdata[29]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[2]),
        .Q(s_axis_tdata[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[30] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[30]),
        .Q(s_axis_tdata[30]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[31] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[31]),
        .Q(s_axis_tdata[31]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[3]),
        .Q(s_axis_tdata[3]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[4]),
        .Q(s_axis_tdata[4]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[5]),
        .Q(s_axis_tdata[5]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[6]),
        .Q(s_axis_tdata[6]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[7]),
        .Q(s_axis_tdata[7]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[8] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[8]),
        .Q(s_axis_tdata[8]));
  FDCE #(
    .INIT(1'b0)) 
    \s_axis_tdata_reg[9] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[9]),
        .Q(s_axis_tdata[9]));
  LUT6 #(
    .INIT(64'hFFBF4000BFBF4000)) 
    \send_index[0]_i_1 
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(s_axis_tready),
        .I3(\next_state_reg_n_0_[0] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\send_index_reg_n_0_[1] ),
        .O(\send_index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFBF40000000)) 
    \send_index[1]_i_1 
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(s_axis_tready),
        .I3(\next_state_reg_n_0_[0] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\send_index_reg_n_0_[1] ),
        .O(\send_index[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \send_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\send_index[0]_i_1_n_0 ),
        .Q(\send_index_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \send_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\send_index[1]_i_1_n_0 ),
        .Q(\send_index_reg_n_0_[1] ));
endmodule

(* NotValidForBitStream *)
module design_1_wrapper
   (din_i,
    done_flag_o,
    dout_o,
    start_flag_i);
  input [31:0]din_i;
  output done_flag_o;
  output [31:0]dout_o;
  input start_flag_i;

  wire clk;
  wire [31:0]din_i;
  wire [31:0]din_i_IBUF;
  wire done_flag_o;
  wire done_flag_o_OBUF;
  wire [31:0]dout_o;
  wire [31:0]dout_o_OBUF;
  wire start_flag_i;
  wire start_flag_i_IBUF;

initial begin
 $sdf_annotate("tb_pipeline_blockdesign_time_synth.sdf",,,,"tool_control");
end
  (* HW_HANDOFF = "design_1.hwdef" *) 
  design_1 design_1_i
       (.clk(clk),
        .din_i(din_i_IBUF),
        .done_flag_o(done_flag_o_OBUF),
        .dout_o(dout_o_OBUF),
        .reset(1'b0),
        .start_flag_i(start_flag_i_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    design_1_i_i_1
       (.I0(clk),
        .O(clk));
  IBUF \din_i_IBUF[0]_inst 
       (.I(din_i[0]),
        .O(din_i_IBUF[0]));
  IBUF \din_i_IBUF[10]_inst 
       (.I(din_i[10]),
        .O(din_i_IBUF[10]));
  IBUF \din_i_IBUF[11]_inst 
       (.I(din_i[11]),
        .O(din_i_IBUF[11]));
  IBUF \din_i_IBUF[12]_inst 
       (.I(din_i[12]),
        .O(din_i_IBUF[12]));
  IBUF \din_i_IBUF[13]_inst 
       (.I(din_i[13]),
        .O(din_i_IBUF[13]));
  IBUF \din_i_IBUF[14]_inst 
       (.I(din_i[14]),
        .O(din_i_IBUF[14]));
  IBUF \din_i_IBUF[15]_inst 
       (.I(din_i[15]),
        .O(din_i_IBUF[15]));
  IBUF \din_i_IBUF[16]_inst 
       (.I(din_i[16]),
        .O(din_i_IBUF[16]));
  IBUF \din_i_IBUF[17]_inst 
       (.I(din_i[17]),
        .O(din_i_IBUF[17]));
  IBUF \din_i_IBUF[18]_inst 
       (.I(din_i[18]),
        .O(din_i_IBUF[18]));
  IBUF \din_i_IBUF[19]_inst 
       (.I(din_i[19]),
        .O(din_i_IBUF[19]));
  IBUF \din_i_IBUF[1]_inst 
       (.I(din_i[1]),
        .O(din_i_IBUF[1]));
  IBUF \din_i_IBUF[20]_inst 
       (.I(din_i[20]),
        .O(din_i_IBUF[20]));
  IBUF \din_i_IBUF[21]_inst 
       (.I(din_i[21]),
        .O(din_i_IBUF[21]));
  IBUF \din_i_IBUF[22]_inst 
       (.I(din_i[22]),
        .O(din_i_IBUF[22]));
  IBUF \din_i_IBUF[23]_inst 
       (.I(din_i[23]),
        .O(din_i_IBUF[23]));
  IBUF \din_i_IBUF[24]_inst 
       (.I(din_i[24]),
        .O(din_i_IBUF[24]));
  IBUF \din_i_IBUF[25]_inst 
       (.I(din_i[25]),
        .O(din_i_IBUF[25]));
  IBUF \din_i_IBUF[26]_inst 
       (.I(din_i[26]),
        .O(din_i_IBUF[26]));
  IBUF \din_i_IBUF[27]_inst 
       (.I(din_i[27]),
        .O(din_i_IBUF[27]));
  IBUF \din_i_IBUF[28]_inst 
       (.I(din_i[28]),
        .O(din_i_IBUF[28]));
  IBUF \din_i_IBUF[29]_inst 
       (.I(din_i[29]),
        .O(din_i_IBUF[29]));
  IBUF \din_i_IBUF[2]_inst 
       (.I(din_i[2]),
        .O(din_i_IBUF[2]));
  IBUF \din_i_IBUF[30]_inst 
       (.I(din_i[30]),
        .O(din_i_IBUF[30]));
  IBUF \din_i_IBUF[31]_inst 
       (.I(din_i[31]),
        .O(din_i_IBUF[31]));
  IBUF \din_i_IBUF[3]_inst 
       (.I(din_i[3]),
        .O(din_i_IBUF[3]));
  IBUF \din_i_IBUF[4]_inst 
       (.I(din_i[4]),
        .O(din_i_IBUF[4]));
  IBUF \din_i_IBUF[5]_inst 
       (.I(din_i[5]),
        .O(din_i_IBUF[5]));
  IBUF \din_i_IBUF[6]_inst 
       (.I(din_i[6]),
        .O(din_i_IBUF[6]));
  IBUF \din_i_IBUF[7]_inst 
       (.I(din_i[7]),
        .O(din_i_IBUF[7]));
  IBUF \din_i_IBUF[8]_inst 
       (.I(din_i[8]),
        .O(din_i_IBUF[8]));
  IBUF \din_i_IBUF[9]_inst 
       (.I(din_i[9]),
        .O(din_i_IBUF[9]));
  OBUF done_flag_o_OBUF_inst
       (.I(done_flag_o_OBUF),
        .O(done_flag_o));
  OBUF \dout_o_OBUF[0]_inst 
       (.I(dout_o_OBUF[0]),
        .O(dout_o[0]));
  OBUF \dout_o_OBUF[10]_inst 
       (.I(dout_o_OBUF[10]),
        .O(dout_o[10]));
  OBUF \dout_o_OBUF[11]_inst 
       (.I(dout_o_OBUF[11]),
        .O(dout_o[11]));
  OBUF \dout_o_OBUF[12]_inst 
       (.I(dout_o_OBUF[12]),
        .O(dout_o[12]));
  OBUF \dout_o_OBUF[13]_inst 
       (.I(dout_o_OBUF[13]),
        .O(dout_o[13]));
  OBUF \dout_o_OBUF[14]_inst 
       (.I(dout_o_OBUF[14]),
        .O(dout_o[14]));
  OBUF \dout_o_OBUF[15]_inst 
       (.I(dout_o_OBUF[15]),
        .O(dout_o[15]));
  OBUF \dout_o_OBUF[16]_inst 
       (.I(dout_o_OBUF[16]),
        .O(dout_o[16]));
  OBUF \dout_o_OBUF[17]_inst 
       (.I(dout_o_OBUF[17]),
        .O(dout_o[17]));
  OBUF \dout_o_OBUF[18]_inst 
       (.I(dout_o_OBUF[18]),
        .O(dout_o[18]));
  OBUF \dout_o_OBUF[19]_inst 
       (.I(dout_o_OBUF[19]),
        .O(dout_o[19]));
  OBUF \dout_o_OBUF[1]_inst 
       (.I(dout_o_OBUF[1]),
        .O(dout_o[1]));
  OBUF \dout_o_OBUF[20]_inst 
       (.I(dout_o_OBUF[20]),
        .O(dout_o[20]));
  OBUF \dout_o_OBUF[21]_inst 
       (.I(dout_o_OBUF[21]),
        .O(dout_o[21]));
  OBUF \dout_o_OBUF[22]_inst 
       (.I(dout_o_OBUF[22]),
        .O(dout_o[22]));
  OBUF \dout_o_OBUF[23]_inst 
       (.I(dout_o_OBUF[23]),
        .O(dout_o[23]));
  OBUF \dout_o_OBUF[24]_inst 
       (.I(dout_o_OBUF[24]),
        .O(dout_o[24]));
  OBUF \dout_o_OBUF[25]_inst 
       (.I(dout_o_OBUF[25]),
        .O(dout_o[25]));
  OBUF \dout_o_OBUF[26]_inst 
       (.I(dout_o_OBUF[26]),
        .O(dout_o[26]));
  OBUF \dout_o_OBUF[27]_inst 
       (.I(dout_o_OBUF[27]),
        .O(dout_o[27]));
  OBUF \dout_o_OBUF[28]_inst 
       (.I(dout_o_OBUF[28]),
        .O(dout_o[28]));
  OBUF \dout_o_OBUF[29]_inst 
       (.I(dout_o_OBUF[29]),
        .O(dout_o[29]));
  OBUF \dout_o_OBUF[2]_inst 
       (.I(dout_o_OBUF[2]),
        .O(dout_o[2]));
  OBUF \dout_o_OBUF[30]_inst 
       (.I(dout_o_OBUF[30]),
        .O(dout_o[30]));
  OBUF \dout_o_OBUF[31]_inst 
       (.I(dout_o_OBUF[31]),
        .O(dout_o[31]));
  OBUF \dout_o_OBUF[3]_inst 
       (.I(dout_o_OBUF[3]),
        .O(dout_o[3]));
  OBUF \dout_o_OBUF[4]_inst 
       (.I(dout_o_OBUF[4]),
        .O(dout_o[4]));
  OBUF \dout_o_OBUF[5]_inst 
       (.I(dout_o_OBUF[5]),
        .O(dout_o[5]));
  OBUF \dout_o_OBUF[6]_inst 
       (.I(dout_o_OBUF[6]),
        .O(dout_o[6]));
  OBUF \dout_o_OBUF[7]_inst 
       (.I(dout_o_OBUF[7]),
        .O(dout_o[7]));
  OBUF \dout_o_OBUF[8]_inst 
       (.I(dout_o_OBUF[8]),
        .O(dout_o[8]));
  OBUF \dout_o_OBUF[9]_inst 
       (.I(dout_o_OBUF[9]),
        .O(dout_o[9]));
  IBUF start_flag_i_IBUF_inst
       (.I(start_flag_i),
        .O(start_flag_i_IBUF));
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
