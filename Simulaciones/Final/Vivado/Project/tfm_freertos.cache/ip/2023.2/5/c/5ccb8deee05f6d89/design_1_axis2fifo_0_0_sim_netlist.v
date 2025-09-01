// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Aug 15 18:25:56 2025
// Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axis2fifo_0_0_sim_netlist.v
// Design      : design_1_axis2fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis2fifo
   (dout,
    data_ready,
    rst,
    last,
    clk,
    s_axis_tdata);
  output [31:0]dout;
  output data_ready;
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
  wire \buffer_index[1]_i_1_n_0 ;
  wire \buffer_index[1]_i_3_n_0 ;
  wire \buffer_index[1]_i_4_n_0 ;
  wire \buffer_index[1]_i_5_n_0 ;
  wire \buffer_index_reg_n_0_[0] ;
  wire \buffer_index_reg_n_0_[1] ;
  wire [31:0]\buffer_reg[0] ;
  wire [31:0]\buffer_reg[1] ;
  wire [31:0]\buffer_reg[2] ;
  wire [31:0]\buffer_reg[3] ;
  wire clk;
  wire data_ready;
  wire data_ready_i_1_n_0;
  wire data_ready_i_2_n_0;
  wire [31:0]dout;
  wire \dout[31]_i_1_n_0 ;
  wire last;
  wire \next_state[0]_i_10_n_0 ;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[0]_i_2_n_0 ;
  wire \next_state[0]_i_3_n_0 ;
  wire \next_state[0]_i_4_n_0 ;
  wire \next_state[0]_i_5_n_0 ;
  wire \next_state[0]_i_6_n_0 ;
  wire \next_state[0]_i_7_n_0 ;
  wire \next_state[0]_i_8_n_0 ;
  wire \next_state[0]_i_9_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
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
    .INIT(64'h000000000000000E)) 
    \buffer[3][31]_i_1 
       (.I0(\next_state[0]_i_2_n_0 ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state_reg_n_0_[1] ),
        .I4(rst),
        .I5(data_ready_i_2_n_0),
        .O(\buffer[3][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0F70)) 
    \buffer_index[0]_i_1 
       (.I0(\next_state_reg_n_0_[0] ),
        .I1(last),
        .I2(buffer_index),
        .I3(\buffer_index_reg_n_0_[0] ),
        .O(\buffer_index[0]_i_1_n_0 ));
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
    .INIT(64'h0000000000AAFFFC)) 
    \buffer_index[1]_i_2 
       (.I0(data_ready_i_2_n_0),
        .I1(\buffer_index[1]_i_3_n_0 ),
        .I2(\next_state[0]_i_4_n_0 ),
        .I3(\next_state_reg_n_0_[0] ),
        .I4(\next_state_reg_n_0_[1] ),
        .I5(\next_state_reg_n_0_[2] ),
        .O(buffer_index));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \buffer_index[1]_i_3 
       (.I0(\buffer_index[1]_i_4_n_0 ),
        .I1(\next_state[0]_i_10_n_0 ),
        .I2(\next_state[0]_i_9_n_0 ),
        .I3(\next_state[0]_i_8_n_0 ),
        .I4(\next_state[0]_i_7_n_0 ),
        .I5(\buffer_index[1]_i_5_n_0 ),
        .O(\buffer_index[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \buffer_index[1]_i_4 
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_tdata[18]),
        .I2(s_axis_tdata[27]),
        .I3(s_axis_tdata[26]),
        .O(\buffer_index[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \buffer_index[1]_i_5 
       (.I0(s_axis_tdata[31]),
        .I1(s_axis_tdata[30]),
        .O(\buffer_index[1]_i_5_n_0 ));
  FDCE \buffer_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\buffer_index[0]_i_1_n_0 ),
        .Q(\buffer_index_reg_n_0_[0] ));
  FDCE \buffer_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\buffer_index[1]_i_1_n_0 ),
        .Q(\buffer_index_reg_n_0_[1] ));
  FDRE \buffer_reg[0][0] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[0]),
        .Q(\buffer_reg[0] [0]),
        .R(1'b0));
  FDRE \buffer_reg[0][10] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[10]),
        .Q(\buffer_reg[0] [10]),
        .R(1'b0));
  FDRE \buffer_reg[0][11] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[11]),
        .Q(\buffer_reg[0] [11]),
        .R(1'b0));
  FDRE \buffer_reg[0][12] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[12]),
        .Q(\buffer_reg[0] [12]),
        .R(1'b0));
  FDRE \buffer_reg[0][13] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[13]),
        .Q(\buffer_reg[0] [13]),
        .R(1'b0));
  FDRE \buffer_reg[0][14] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[14]),
        .Q(\buffer_reg[0] [14]),
        .R(1'b0));
  FDRE \buffer_reg[0][15] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[15]),
        .Q(\buffer_reg[0] [15]),
        .R(1'b0));
  FDRE \buffer_reg[0][16] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[16]),
        .Q(\buffer_reg[0] [16]),
        .R(1'b0));
  FDRE \buffer_reg[0][17] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[17]),
        .Q(\buffer_reg[0] [17]),
        .R(1'b0));
  FDRE \buffer_reg[0][18] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[18]),
        .Q(\buffer_reg[0] [18]),
        .R(1'b0));
  FDRE \buffer_reg[0][19] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[19]),
        .Q(\buffer_reg[0] [19]),
        .R(1'b0));
  FDRE \buffer_reg[0][1] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[1]),
        .Q(\buffer_reg[0] [1]),
        .R(1'b0));
  FDRE \buffer_reg[0][20] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[20]),
        .Q(\buffer_reg[0] [20]),
        .R(1'b0));
  FDRE \buffer_reg[0][21] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[21]),
        .Q(\buffer_reg[0] [21]),
        .R(1'b0));
  FDRE \buffer_reg[0][22] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[22]),
        .Q(\buffer_reg[0] [22]),
        .R(1'b0));
  FDRE \buffer_reg[0][23] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[23]),
        .Q(\buffer_reg[0] [23]),
        .R(1'b0));
  FDRE \buffer_reg[0][24] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[24]),
        .Q(\buffer_reg[0] [24]),
        .R(1'b0));
  FDRE \buffer_reg[0][25] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[25]),
        .Q(\buffer_reg[0] [25]),
        .R(1'b0));
  FDRE \buffer_reg[0][26] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[26]),
        .Q(\buffer_reg[0] [26]),
        .R(1'b0));
  FDRE \buffer_reg[0][27] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[27]),
        .Q(\buffer_reg[0] [27]),
        .R(1'b0));
  FDRE \buffer_reg[0][28] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[28]),
        .Q(\buffer_reg[0] [28]),
        .R(1'b0));
  FDRE \buffer_reg[0][29] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[29]),
        .Q(\buffer_reg[0] [29]),
        .R(1'b0));
  FDRE \buffer_reg[0][2] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[2]),
        .Q(\buffer_reg[0] [2]),
        .R(1'b0));
  FDRE \buffer_reg[0][30] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[30]),
        .Q(\buffer_reg[0] [30]),
        .R(1'b0));
  FDRE \buffer_reg[0][31] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[31]),
        .Q(\buffer_reg[0] [31]),
        .R(1'b0));
  FDRE \buffer_reg[0][3] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[3]),
        .Q(\buffer_reg[0] [3]),
        .R(1'b0));
  FDRE \buffer_reg[0][4] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[4]),
        .Q(\buffer_reg[0] [4]),
        .R(1'b0));
  FDRE \buffer_reg[0][5] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[5]),
        .Q(\buffer_reg[0] [5]),
        .R(1'b0));
  FDRE \buffer_reg[0][6] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[6]),
        .Q(\buffer_reg[0] [6]),
        .R(1'b0));
  FDRE \buffer_reg[0][7] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[7]),
        .Q(\buffer_reg[0] [7]),
        .R(1'b0));
  FDRE \buffer_reg[0][8] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[8]),
        .Q(\buffer_reg[0] [8]),
        .R(1'b0));
  FDRE \buffer_reg[0][9] 
       (.C(clk),
        .CE(buffer),
        .D(s_axis_tdata[9]),
        .Q(\buffer_reg[0] [9]),
        .R(1'b0));
  FDRE \buffer_reg[1][0] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\buffer_reg[1] [0]),
        .R(1'b0));
  FDRE \buffer_reg[1][10] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(\buffer_reg[1] [10]),
        .R(1'b0));
  FDRE \buffer_reg[1][11] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(\buffer_reg[1] [11]),
        .R(1'b0));
  FDRE \buffer_reg[1][12] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(\buffer_reg[1] [12]),
        .R(1'b0));
  FDRE \buffer_reg[1][13] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(\buffer_reg[1] [13]),
        .R(1'b0));
  FDRE \buffer_reg[1][14] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(\buffer_reg[1] [14]),
        .R(1'b0));
  FDRE \buffer_reg[1][15] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(\buffer_reg[1] [15]),
        .R(1'b0));
  FDRE \buffer_reg[1][16] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(\buffer_reg[1] [16]),
        .R(1'b0));
  FDRE \buffer_reg[1][17] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(\buffer_reg[1] [17]),
        .R(1'b0));
  FDRE \buffer_reg[1][18] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(\buffer_reg[1] [18]),
        .R(1'b0));
  FDRE \buffer_reg[1][19] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(\buffer_reg[1] [19]),
        .R(1'b0));
  FDRE \buffer_reg[1][1] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\buffer_reg[1] [1]),
        .R(1'b0));
  FDRE \buffer_reg[1][20] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(\buffer_reg[1] [20]),
        .R(1'b0));
  FDRE \buffer_reg[1][21] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(\buffer_reg[1] [21]),
        .R(1'b0));
  FDRE \buffer_reg[1][22] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(\buffer_reg[1] [22]),
        .R(1'b0));
  FDRE \buffer_reg[1][23] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(\buffer_reg[1] [23]),
        .R(1'b0));
  FDRE \buffer_reg[1][24] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(\buffer_reg[1] [24]),
        .R(1'b0));
  FDRE \buffer_reg[1][25] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(\buffer_reg[1] [25]),
        .R(1'b0));
  FDRE \buffer_reg[1][26] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(\buffer_reg[1] [26]),
        .R(1'b0));
  FDRE \buffer_reg[1][27] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(\buffer_reg[1] [27]),
        .R(1'b0));
  FDRE \buffer_reg[1][28] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(\buffer_reg[1] [28]),
        .R(1'b0));
  FDRE \buffer_reg[1][29] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(\buffer_reg[1] [29]),
        .R(1'b0));
  FDRE \buffer_reg[1][2] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\buffer_reg[1] [2]),
        .R(1'b0));
  FDRE \buffer_reg[1][30] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(\buffer_reg[1] [30]),
        .R(1'b0));
  FDRE \buffer_reg[1][31] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(\buffer_reg[1] [31]),
        .R(1'b0));
  FDRE \buffer_reg[1][3] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\buffer_reg[1] [3]),
        .R(1'b0));
  FDRE \buffer_reg[1][4] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\buffer_reg[1] [4]),
        .R(1'b0));
  FDRE \buffer_reg[1][5] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\buffer_reg[1] [5]),
        .R(1'b0));
  FDRE \buffer_reg[1][6] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\buffer_reg[1] [6]),
        .R(1'b0));
  FDRE \buffer_reg[1][7] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\buffer_reg[1] [7]),
        .R(1'b0));
  FDRE \buffer_reg[1][8] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(\buffer_reg[1] [8]),
        .R(1'b0));
  FDRE \buffer_reg[1][9] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(\buffer_reg[1] [9]),
        .R(1'b0));
  FDRE \buffer_reg[2][0] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\buffer_reg[2] [0]),
        .R(1'b0));
  FDRE \buffer_reg[2][10] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(\buffer_reg[2] [10]),
        .R(1'b0));
  FDRE \buffer_reg[2][11] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(\buffer_reg[2] [11]),
        .R(1'b0));
  FDRE \buffer_reg[2][12] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(\buffer_reg[2] [12]),
        .R(1'b0));
  FDRE \buffer_reg[2][13] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(\buffer_reg[2] [13]),
        .R(1'b0));
  FDRE \buffer_reg[2][14] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(\buffer_reg[2] [14]),
        .R(1'b0));
  FDRE \buffer_reg[2][15] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(\buffer_reg[2] [15]),
        .R(1'b0));
  FDRE \buffer_reg[2][16] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(\buffer_reg[2] [16]),
        .R(1'b0));
  FDRE \buffer_reg[2][17] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(\buffer_reg[2] [17]),
        .R(1'b0));
  FDRE \buffer_reg[2][18] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(\buffer_reg[2] [18]),
        .R(1'b0));
  FDRE \buffer_reg[2][19] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(\buffer_reg[2] [19]),
        .R(1'b0));
  FDRE \buffer_reg[2][1] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\buffer_reg[2] [1]),
        .R(1'b0));
  FDRE \buffer_reg[2][20] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(\buffer_reg[2] [20]),
        .R(1'b0));
  FDRE \buffer_reg[2][21] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(\buffer_reg[2] [21]),
        .R(1'b0));
  FDRE \buffer_reg[2][22] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(\buffer_reg[2] [22]),
        .R(1'b0));
  FDRE \buffer_reg[2][23] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(\buffer_reg[2] [23]),
        .R(1'b0));
  FDRE \buffer_reg[2][24] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(\buffer_reg[2] [24]),
        .R(1'b0));
  FDRE \buffer_reg[2][25] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(\buffer_reg[2] [25]),
        .R(1'b0));
  FDRE \buffer_reg[2][26] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(\buffer_reg[2] [26]),
        .R(1'b0));
  FDRE \buffer_reg[2][27] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(\buffer_reg[2] [27]),
        .R(1'b0));
  FDRE \buffer_reg[2][28] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(\buffer_reg[2] [28]),
        .R(1'b0));
  FDRE \buffer_reg[2][29] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(\buffer_reg[2] [29]),
        .R(1'b0));
  FDRE \buffer_reg[2][2] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\buffer_reg[2] [2]),
        .R(1'b0));
  FDRE \buffer_reg[2][30] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(\buffer_reg[2] [30]),
        .R(1'b0));
  FDRE \buffer_reg[2][31] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(\buffer_reg[2] [31]),
        .R(1'b0));
  FDRE \buffer_reg[2][3] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\buffer_reg[2] [3]),
        .R(1'b0));
  FDRE \buffer_reg[2][4] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\buffer_reg[2] [4]),
        .R(1'b0));
  FDRE \buffer_reg[2][5] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\buffer_reg[2] [5]),
        .R(1'b0));
  FDRE \buffer_reg[2][6] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\buffer_reg[2] [6]),
        .R(1'b0));
  FDRE \buffer_reg[2][7] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\buffer_reg[2] [7]),
        .R(1'b0));
  FDRE \buffer_reg[2][8] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(\buffer_reg[2] [8]),
        .R(1'b0));
  FDRE \buffer_reg[2][9] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(\buffer_reg[2] [9]),
        .R(1'b0));
  FDRE \buffer_reg[3][0] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\buffer_reg[3] [0]),
        .R(1'b0));
  FDRE \buffer_reg[3][10] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(\buffer_reg[3] [10]),
        .R(1'b0));
  FDRE \buffer_reg[3][11] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(\buffer_reg[3] [11]),
        .R(1'b0));
  FDRE \buffer_reg[3][12] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(\buffer_reg[3] [12]),
        .R(1'b0));
  FDRE \buffer_reg[3][13] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(\buffer_reg[3] [13]),
        .R(1'b0));
  FDRE \buffer_reg[3][14] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(\buffer_reg[3] [14]),
        .R(1'b0));
  FDRE \buffer_reg[3][15] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(\buffer_reg[3] [15]),
        .R(1'b0));
  FDRE \buffer_reg[3][16] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(\buffer_reg[3] [16]),
        .R(1'b0));
  FDRE \buffer_reg[3][17] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(\buffer_reg[3] [17]),
        .R(1'b0));
  FDRE \buffer_reg[3][18] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(\buffer_reg[3] [18]),
        .R(1'b0));
  FDRE \buffer_reg[3][19] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(\buffer_reg[3] [19]),
        .R(1'b0));
  FDRE \buffer_reg[3][1] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\buffer_reg[3] [1]),
        .R(1'b0));
  FDRE \buffer_reg[3][20] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(\buffer_reg[3] [20]),
        .R(1'b0));
  FDRE \buffer_reg[3][21] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(\buffer_reg[3] [21]),
        .R(1'b0));
  FDRE \buffer_reg[3][22] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(\buffer_reg[3] [22]),
        .R(1'b0));
  FDRE \buffer_reg[3][23] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(\buffer_reg[3] [23]),
        .R(1'b0));
  FDRE \buffer_reg[3][24] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(\buffer_reg[3] [24]),
        .R(1'b0));
  FDRE \buffer_reg[3][25] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(\buffer_reg[3] [25]),
        .R(1'b0));
  FDRE \buffer_reg[3][26] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(\buffer_reg[3] [26]),
        .R(1'b0));
  FDRE \buffer_reg[3][27] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(\buffer_reg[3] [27]),
        .R(1'b0));
  FDRE \buffer_reg[3][28] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(\buffer_reg[3] [28]),
        .R(1'b0));
  FDRE \buffer_reg[3][29] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(\buffer_reg[3] [29]),
        .R(1'b0));
  FDRE \buffer_reg[3][2] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\buffer_reg[3] [2]),
        .R(1'b0));
  FDRE \buffer_reg[3][30] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(\buffer_reg[3] [30]),
        .R(1'b0));
  FDRE \buffer_reg[3][31] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(\buffer_reg[3] [31]),
        .R(1'b0));
  FDRE \buffer_reg[3][3] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\buffer_reg[3] [3]),
        .R(1'b0));
  FDRE \buffer_reg[3][4] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\buffer_reg[3] [4]),
        .R(1'b0));
  FDRE \buffer_reg[3][5] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\buffer_reg[3] [5]),
        .R(1'b0));
  FDRE \buffer_reg[3][6] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\buffer_reg[3] [6]),
        .R(1'b0));
  FDRE \buffer_reg[3][7] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\buffer_reg[3] [7]),
        .R(1'b0));
  FDRE \buffer_reg[3][8] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(\buffer_reg[3] [8]),
        .R(1'b0));
  FDRE \buffer_reg[3][9] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(\buffer_reg[3] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFAFF000000C0)) 
    data_ready_i_1
       (.I0(data_ready_i_2_n_0),
        .I1(last),
        .I2(\next_state_reg_n_0_[0] ),
        .I3(\next_state_reg_n_0_[1] ),
        .I4(\next_state_reg_n_0_[2] ),
        .I5(data_ready),
        .O(data_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    data_ready_i_2
       (.I0(\buffer_index_reg_n_0_[0] ),
        .I1(\buffer_index_reg_n_0_[1] ),
        .O(data_ready_i_2_n_0));
  FDCE data_ready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(data_ready_i_1_n_0),
        .Q(data_ready));
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
    .INIT(16'h0004)) 
    \dout[31]_i_1 
       (.I0(rst),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state_reg_n_0_[0] ),
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
  FDRE \dout_reg[0] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE \dout_reg[12] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(dout[12]),
        .R(1'b0));
  FDRE \dout_reg[13] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(dout[13]),
        .R(1'b0));
  FDRE \dout_reg[14] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(dout[14]),
        .R(1'b0));
  FDRE \dout_reg[15] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(dout[15]),
        .R(1'b0));
  FDRE \dout_reg[16] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[16]),
        .Q(dout[16]),
        .R(1'b0));
  FDRE \dout_reg[17] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[17]),
        .Q(dout[17]),
        .R(1'b0));
  FDRE \dout_reg[18] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[18]),
        .Q(dout[18]),
        .R(1'b0));
  FDRE \dout_reg[19] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[19]),
        .Q(dout[19]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[20] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[20]),
        .Q(dout[20]),
        .R(1'b0));
  FDRE \dout_reg[21] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[21]),
        .Q(dout[21]),
        .R(1'b0));
  FDRE \dout_reg[22] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[22]),
        .Q(dout[22]),
        .R(1'b0));
  FDRE \dout_reg[23] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[23]),
        .Q(dout[23]),
        .R(1'b0));
  FDRE \dout_reg[24] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[24]),
        .Q(dout[24]),
        .R(1'b0));
  FDRE \dout_reg[25] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[25]),
        .Q(dout[25]),
        .R(1'b0));
  FDRE \dout_reg[26] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[26]),
        .Q(dout[26]),
        .R(1'b0));
  FDRE \dout_reg[27] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[27]),
        .Q(dout[27]),
        .R(1'b0));
  FDRE \dout_reg[28] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[28]),
        .Q(dout[28]),
        .R(1'b0));
  FDRE \dout_reg[29] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[29]),
        .Q(dout[29]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[30] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[30]),
        .Q(dout[30]),
        .R(1'b0));
  FDRE \dout_reg[31] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[31]),
        .Q(dout[31]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
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
        .I4(\next_state[0]_i_3_n_0 ),
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
    .INIT(64'h00FF00F800F000FF)) 
    \next_state[0]_i_3 
       (.I0(\buffer_index_reg_n_0_[0] ),
        .I1(\buffer_index_reg_n_0_[1] ),
        .I2(\next_state_reg_n_0_[0] ),
        .I3(rst),
        .I4(\next_state_reg_n_0_[2] ),
        .I5(\next_state_reg_n_0_[1] ),
        .O(\next_state[0]_i_3_n_0 ));
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
    .INIT(64'hFF00FF0C000000A0)) 
    \next_state[1]_i_1 
       (.I0(last),
        .I1(data_ready_i_2_n_0),
        .I2(\next_state_reg_n_0_[0] ),
        .I3(rst),
        .I4(\next_state_reg_n_0_[2] ),
        .I5(\next_state_reg_n_0_[1] ),
        .O(\next_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF000008FF0F0000)) 
    \next_state[2]_i_1 
       (.I0(\buffer_index_reg_n_0_[0] ),
        .I1(\buffer_index_reg_n_0_[1] ),
        .I2(\next_state_reg_n_0_[0] ),
        .I3(rst),
        .I4(\next_state_reg_n_0_[2] ),
        .I5(\next_state_reg_n_0_[1] ),
        .O(\next_state[2]_i_1_n_0 ));
  FDRE \next_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \next_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \next_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\next_state[2]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axis2fifo_0_0,axis2fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis2fifo,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    s_axis_tdata,
    last,
    dout,
    data_ready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input [31:0]s_axis_tdata;
  input last;
  output [31:0]dout;
  output data_ready;

  wire clk;
  wire data_ready;
  wire [31:0]dout;
  wire last;
  wire rst;
  wire [31:0]s_axis_tdata;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis2fifo inst
       (.clk(clk),
        .data_ready(data_ready),
        .dout(dout),
        .last(last),
        .rst(rst),
        .s_axis_tdata(s_axis_tdata));
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
