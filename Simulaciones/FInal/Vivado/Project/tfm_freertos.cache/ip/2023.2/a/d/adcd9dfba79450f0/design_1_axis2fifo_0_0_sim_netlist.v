// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Aug 29 14:28:38 2025
// Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axis2fifo_0_0_sim_netlist.v
// Design      : design_1_axis2fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis2fifo
   (dout,
    ready_for_results,
    done,
    read,
    rst,
    clk,
    valid_result,
    last,
    result_data);
  output [31:0]dout;
  output ready_for_results;
  output done;
  input read;
  input rst;
  input clk;
  input valid_result;
  input last;
  input [31:0]result_data;

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
  wire done;
  wire done_i_1_n_0;
  wire [31:0]dout;
  wire [31:0]dout0;
  wire \dout[31]_i_1_n_0 ;
  wire last;
  wire [1:1]next_state;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[0]_i_2_n_0 ;
  wire \next_state[0]_i_3_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state[1]_i_3_n_0 ;
  wire \next_state[2]_i_1_n_0 ;
  wire \next_state[2]_i_2_n_0 ;
  wire \next_state_reg_n_0_[0] ;
  wire \next_state_reg_n_0_[1] ;
  wire \next_state_reg_n_0_[2] ;
  wire read;
  wire ready_for_results;
  wire ready_for_results_i_1_n_0;
  wire [31:0]result_data;
  wire rst;
  wire \send_index[0]_i_1_n_0 ;
  wire \send_index[1]_i_1_n_0 ;
  wire \send_index_reg_n_0_[0] ;
  wire \send_index_reg_n_0_[1] ;
  wire valid_result;

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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFF30004)) 
    \buffer_index[0]_i_1 
       (.I0(last),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state_reg_n_0_[1] ),
        .I4(\buffer_index_reg_n_0_[0] ),
        .O(\buffer_index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF1F00000020)) 
    \buffer_index[1]_i_1 
       (.I0(\buffer_index_reg_n_0_[0] ),
        .I1(last),
        .I2(\next_state_reg_n_0_[0] ),
        .I3(\next_state_reg_n_0_[2] ),
        .I4(\next_state_reg_n_0_[1] ),
        .I5(\buffer_index_reg_n_0_[1] ),
        .O(\buffer_index[1]_i_1_n_0 ));
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
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[0]),
        .Q(\buffer_reg[0] [0]),
        .R(1'b0));
  FDRE \buffer_reg[0][10] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[10]),
        .Q(\buffer_reg[0] [10]),
        .R(1'b0));
  FDRE \buffer_reg[0][11] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[11]),
        .Q(\buffer_reg[0] [11]),
        .R(1'b0));
  FDRE \buffer_reg[0][12] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[12]),
        .Q(\buffer_reg[0] [12]),
        .R(1'b0));
  FDRE \buffer_reg[0][13] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[13]),
        .Q(\buffer_reg[0] [13]),
        .R(1'b0));
  FDRE \buffer_reg[0][14] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[14]),
        .Q(\buffer_reg[0] [14]),
        .R(1'b0));
  FDRE \buffer_reg[0][15] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[15]),
        .Q(\buffer_reg[0] [15]),
        .R(1'b0));
  FDRE \buffer_reg[0][16] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[16]),
        .Q(\buffer_reg[0] [16]),
        .R(1'b0));
  FDRE \buffer_reg[0][17] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[17]),
        .Q(\buffer_reg[0] [17]),
        .R(1'b0));
  FDRE \buffer_reg[0][18] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[18]),
        .Q(\buffer_reg[0] [18]),
        .R(1'b0));
  FDRE \buffer_reg[0][19] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[19]),
        .Q(\buffer_reg[0] [19]),
        .R(1'b0));
  FDRE \buffer_reg[0][1] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[1]),
        .Q(\buffer_reg[0] [1]),
        .R(1'b0));
  FDRE \buffer_reg[0][20] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[20]),
        .Q(\buffer_reg[0] [20]),
        .R(1'b0));
  FDRE \buffer_reg[0][21] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[21]),
        .Q(\buffer_reg[0] [21]),
        .R(1'b0));
  FDRE \buffer_reg[0][22] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[22]),
        .Q(\buffer_reg[0] [22]),
        .R(1'b0));
  FDRE \buffer_reg[0][23] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[23]),
        .Q(\buffer_reg[0] [23]),
        .R(1'b0));
  FDRE \buffer_reg[0][24] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[24]),
        .Q(\buffer_reg[0] [24]),
        .R(1'b0));
  FDRE \buffer_reg[0][25] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[25]),
        .Q(\buffer_reg[0] [25]),
        .R(1'b0));
  FDRE \buffer_reg[0][26] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[26]),
        .Q(\buffer_reg[0] [26]),
        .R(1'b0));
  FDRE \buffer_reg[0][27] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[27]),
        .Q(\buffer_reg[0] [27]),
        .R(1'b0));
  FDRE \buffer_reg[0][28] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[28]),
        .Q(\buffer_reg[0] [28]),
        .R(1'b0));
  FDRE \buffer_reg[0][29] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[29]),
        .Q(\buffer_reg[0] [29]),
        .R(1'b0));
  FDRE \buffer_reg[0][2] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[2]),
        .Q(\buffer_reg[0] [2]),
        .R(1'b0));
  FDRE \buffer_reg[0][30] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[30]),
        .Q(\buffer_reg[0] [30]),
        .R(1'b0));
  FDRE \buffer_reg[0][31] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[31]),
        .Q(\buffer_reg[0] [31]),
        .R(1'b0));
  FDRE \buffer_reg[0][3] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[3]),
        .Q(\buffer_reg[0] [3]),
        .R(1'b0));
  FDRE \buffer_reg[0][4] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[4]),
        .Q(\buffer_reg[0] [4]),
        .R(1'b0));
  FDRE \buffer_reg[0][5] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[5]),
        .Q(\buffer_reg[0] [5]),
        .R(1'b0));
  FDRE \buffer_reg[0][6] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[6]),
        .Q(\buffer_reg[0] [6]),
        .R(1'b0));
  FDRE \buffer_reg[0][7] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[7]),
        .Q(\buffer_reg[0] [7]),
        .R(1'b0));
  FDRE \buffer_reg[0][8] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[8]),
        .Q(\buffer_reg[0] [8]),
        .R(1'b0));
  FDRE \buffer_reg[0][9] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(result_data[9]),
        .Q(\buffer_reg[0] [9]),
        .R(1'b0));
  FDRE \buffer_reg[1][0] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[0]),
        .Q(\buffer_reg[1] [0]),
        .R(1'b0));
  FDRE \buffer_reg[1][10] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[10]),
        .Q(\buffer_reg[1] [10]),
        .R(1'b0));
  FDRE \buffer_reg[1][11] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[11]),
        .Q(\buffer_reg[1] [11]),
        .R(1'b0));
  FDRE \buffer_reg[1][12] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[12]),
        .Q(\buffer_reg[1] [12]),
        .R(1'b0));
  FDRE \buffer_reg[1][13] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[13]),
        .Q(\buffer_reg[1] [13]),
        .R(1'b0));
  FDRE \buffer_reg[1][14] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[14]),
        .Q(\buffer_reg[1] [14]),
        .R(1'b0));
  FDRE \buffer_reg[1][15] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[15]),
        .Q(\buffer_reg[1] [15]),
        .R(1'b0));
  FDRE \buffer_reg[1][16] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[16]),
        .Q(\buffer_reg[1] [16]),
        .R(1'b0));
  FDRE \buffer_reg[1][17] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[17]),
        .Q(\buffer_reg[1] [17]),
        .R(1'b0));
  FDRE \buffer_reg[1][18] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[18]),
        .Q(\buffer_reg[1] [18]),
        .R(1'b0));
  FDRE \buffer_reg[1][19] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[19]),
        .Q(\buffer_reg[1] [19]),
        .R(1'b0));
  FDRE \buffer_reg[1][1] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[1]),
        .Q(\buffer_reg[1] [1]),
        .R(1'b0));
  FDRE \buffer_reg[1][20] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[20]),
        .Q(\buffer_reg[1] [20]),
        .R(1'b0));
  FDRE \buffer_reg[1][21] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[21]),
        .Q(\buffer_reg[1] [21]),
        .R(1'b0));
  FDRE \buffer_reg[1][22] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[22]),
        .Q(\buffer_reg[1] [22]),
        .R(1'b0));
  FDRE \buffer_reg[1][23] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[23]),
        .Q(\buffer_reg[1] [23]),
        .R(1'b0));
  FDRE \buffer_reg[1][24] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[24]),
        .Q(\buffer_reg[1] [24]),
        .R(1'b0));
  FDRE \buffer_reg[1][25] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[25]),
        .Q(\buffer_reg[1] [25]),
        .R(1'b0));
  FDRE \buffer_reg[1][26] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[26]),
        .Q(\buffer_reg[1] [26]),
        .R(1'b0));
  FDRE \buffer_reg[1][27] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[27]),
        .Q(\buffer_reg[1] [27]),
        .R(1'b0));
  FDRE \buffer_reg[1][28] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[28]),
        .Q(\buffer_reg[1] [28]),
        .R(1'b0));
  FDRE \buffer_reg[1][29] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[29]),
        .Q(\buffer_reg[1] [29]),
        .R(1'b0));
  FDRE \buffer_reg[1][2] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[2]),
        .Q(\buffer_reg[1] [2]),
        .R(1'b0));
  FDRE \buffer_reg[1][30] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[30]),
        .Q(\buffer_reg[1] [30]),
        .R(1'b0));
  FDRE \buffer_reg[1][31] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[31]),
        .Q(\buffer_reg[1] [31]),
        .R(1'b0));
  FDRE \buffer_reg[1][3] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[3]),
        .Q(\buffer_reg[1] [3]),
        .R(1'b0));
  FDRE \buffer_reg[1][4] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[4]),
        .Q(\buffer_reg[1] [4]),
        .R(1'b0));
  FDRE \buffer_reg[1][5] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[5]),
        .Q(\buffer_reg[1] [5]),
        .R(1'b0));
  FDRE \buffer_reg[1][6] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[6]),
        .Q(\buffer_reg[1] [6]),
        .R(1'b0));
  FDRE \buffer_reg[1][7] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[7]),
        .Q(\buffer_reg[1] [7]),
        .R(1'b0));
  FDRE \buffer_reg[1][8] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[8]),
        .Q(\buffer_reg[1] [8]),
        .R(1'b0));
  FDRE \buffer_reg[1][9] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(result_data[9]),
        .Q(\buffer_reg[1] [9]),
        .R(1'b0));
  FDRE \buffer_reg[2][0] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[0]),
        .Q(\buffer_reg[2] [0]),
        .R(1'b0));
  FDRE \buffer_reg[2][10] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[10]),
        .Q(\buffer_reg[2] [10]),
        .R(1'b0));
  FDRE \buffer_reg[2][11] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[11]),
        .Q(\buffer_reg[2] [11]),
        .R(1'b0));
  FDRE \buffer_reg[2][12] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[12]),
        .Q(\buffer_reg[2] [12]),
        .R(1'b0));
  FDRE \buffer_reg[2][13] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[13]),
        .Q(\buffer_reg[2] [13]),
        .R(1'b0));
  FDRE \buffer_reg[2][14] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[14]),
        .Q(\buffer_reg[2] [14]),
        .R(1'b0));
  FDRE \buffer_reg[2][15] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[15]),
        .Q(\buffer_reg[2] [15]),
        .R(1'b0));
  FDRE \buffer_reg[2][16] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[16]),
        .Q(\buffer_reg[2] [16]),
        .R(1'b0));
  FDRE \buffer_reg[2][17] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[17]),
        .Q(\buffer_reg[2] [17]),
        .R(1'b0));
  FDRE \buffer_reg[2][18] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[18]),
        .Q(\buffer_reg[2] [18]),
        .R(1'b0));
  FDRE \buffer_reg[2][19] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[19]),
        .Q(\buffer_reg[2] [19]),
        .R(1'b0));
  FDRE \buffer_reg[2][1] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[1]),
        .Q(\buffer_reg[2] [1]),
        .R(1'b0));
  FDRE \buffer_reg[2][20] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[20]),
        .Q(\buffer_reg[2] [20]),
        .R(1'b0));
  FDRE \buffer_reg[2][21] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[21]),
        .Q(\buffer_reg[2] [21]),
        .R(1'b0));
  FDRE \buffer_reg[2][22] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[22]),
        .Q(\buffer_reg[2] [22]),
        .R(1'b0));
  FDRE \buffer_reg[2][23] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[23]),
        .Q(\buffer_reg[2] [23]),
        .R(1'b0));
  FDRE \buffer_reg[2][24] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[24]),
        .Q(\buffer_reg[2] [24]),
        .R(1'b0));
  FDRE \buffer_reg[2][25] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[25]),
        .Q(\buffer_reg[2] [25]),
        .R(1'b0));
  FDRE \buffer_reg[2][26] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[26]),
        .Q(\buffer_reg[2] [26]),
        .R(1'b0));
  FDRE \buffer_reg[2][27] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[27]),
        .Q(\buffer_reg[2] [27]),
        .R(1'b0));
  FDRE \buffer_reg[2][28] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[28]),
        .Q(\buffer_reg[2] [28]),
        .R(1'b0));
  FDRE \buffer_reg[2][29] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[29]),
        .Q(\buffer_reg[2] [29]),
        .R(1'b0));
  FDRE \buffer_reg[2][2] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[2]),
        .Q(\buffer_reg[2] [2]),
        .R(1'b0));
  FDRE \buffer_reg[2][30] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[30]),
        .Q(\buffer_reg[2] [30]),
        .R(1'b0));
  FDRE \buffer_reg[2][31] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[31]),
        .Q(\buffer_reg[2] [31]),
        .R(1'b0));
  FDRE \buffer_reg[2][3] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[3]),
        .Q(\buffer_reg[2] [3]),
        .R(1'b0));
  FDRE \buffer_reg[2][4] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[4]),
        .Q(\buffer_reg[2] [4]),
        .R(1'b0));
  FDRE \buffer_reg[2][5] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[5]),
        .Q(\buffer_reg[2] [5]),
        .R(1'b0));
  FDRE \buffer_reg[2][6] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[6]),
        .Q(\buffer_reg[2] [6]),
        .R(1'b0));
  FDRE \buffer_reg[2][7] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[7]),
        .Q(\buffer_reg[2] [7]),
        .R(1'b0));
  FDRE \buffer_reg[2][8] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[8]),
        .Q(\buffer_reg[2] [8]),
        .R(1'b0));
  FDRE \buffer_reg[2][9] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(result_data[9]),
        .Q(\buffer_reg[2] [9]),
        .R(1'b0));
  FDRE \buffer_reg[3][0] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[0]),
        .Q(\buffer_reg[3] [0]),
        .R(1'b0));
  FDRE \buffer_reg[3][10] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[10]),
        .Q(\buffer_reg[3] [10]),
        .R(1'b0));
  FDRE \buffer_reg[3][11] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[11]),
        .Q(\buffer_reg[3] [11]),
        .R(1'b0));
  FDRE \buffer_reg[3][12] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[12]),
        .Q(\buffer_reg[3] [12]),
        .R(1'b0));
  FDRE \buffer_reg[3][13] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[13]),
        .Q(\buffer_reg[3] [13]),
        .R(1'b0));
  FDRE \buffer_reg[3][14] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[14]),
        .Q(\buffer_reg[3] [14]),
        .R(1'b0));
  FDRE \buffer_reg[3][15] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[15]),
        .Q(\buffer_reg[3] [15]),
        .R(1'b0));
  FDRE \buffer_reg[3][16] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[16]),
        .Q(\buffer_reg[3] [16]),
        .R(1'b0));
  FDRE \buffer_reg[3][17] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[17]),
        .Q(\buffer_reg[3] [17]),
        .R(1'b0));
  FDRE \buffer_reg[3][18] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[18]),
        .Q(\buffer_reg[3] [18]),
        .R(1'b0));
  FDRE \buffer_reg[3][19] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[19]),
        .Q(\buffer_reg[3] [19]),
        .R(1'b0));
  FDRE \buffer_reg[3][1] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[1]),
        .Q(\buffer_reg[3] [1]),
        .R(1'b0));
  FDRE \buffer_reg[3][20] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[20]),
        .Q(\buffer_reg[3] [20]),
        .R(1'b0));
  FDRE \buffer_reg[3][21] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[21]),
        .Q(\buffer_reg[3] [21]),
        .R(1'b0));
  FDRE \buffer_reg[3][22] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[22]),
        .Q(\buffer_reg[3] [22]),
        .R(1'b0));
  FDRE \buffer_reg[3][23] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[23]),
        .Q(\buffer_reg[3] [23]),
        .R(1'b0));
  FDRE \buffer_reg[3][24] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[24]),
        .Q(\buffer_reg[3] [24]),
        .R(1'b0));
  FDRE \buffer_reg[3][25] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[25]),
        .Q(\buffer_reg[3] [25]),
        .R(1'b0));
  FDRE \buffer_reg[3][26] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[26]),
        .Q(\buffer_reg[3] [26]),
        .R(1'b0));
  FDRE \buffer_reg[3][27] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[27]),
        .Q(\buffer_reg[3] [27]),
        .R(1'b0));
  FDRE \buffer_reg[3][28] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[28]),
        .Q(\buffer_reg[3] [28]),
        .R(1'b0));
  FDRE \buffer_reg[3][29] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[29]),
        .Q(\buffer_reg[3] [29]),
        .R(1'b0));
  FDRE \buffer_reg[3][2] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[2]),
        .Q(\buffer_reg[3] [2]),
        .R(1'b0));
  FDRE \buffer_reg[3][30] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[30]),
        .Q(\buffer_reg[3] [30]),
        .R(1'b0));
  FDRE \buffer_reg[3][31] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[31]),
        .Q(\buffer_reg[3] [31]),
        .R(1'b0));
  FDRE \buffer_reg[3][3] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[3]),
        .Q(\buffer_reg[3] [3]),
        .R(1'b0));
  FDRE \buffer_reg[3][4] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[4]),
        .Q(\buffer_reg[3] [4]),
        .R(1'b0));
  FDRE \buffer_reg[3][5] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[5]),
        .Q(\buffer_reg[3] [5]),
        .R(1'b0));
  FDRE \buffer_reg[3][6] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[6]),
        .Q(\buffer_reg[3] [6]),
        .R(1'b0));
  FDRE \buffer_reg[3][7] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[7]),
        .Q(\buffer_reg[3] [7]),
        .R(1'b0));
  FDRE \buffer_reg[3][8] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[8]),
        .Q(\buffer_reg[3] [8]),
        .R(1'b0));
  FDRE \buffer_reg[3][9] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(result_data[9]),
        .Q(\buffer_reg[3] [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFD04)) 
    done_i_1
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(\next_state_reg_n_0_[0] ),
        .I3(done),
        .O(done_i_1_n_0));
  FDCE done_reg
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
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [0]),
        .O(dout0[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[10]_i_1 
       (.I0(\buffer_reg[2] [10]),
        .I1(\buffer_reg[3] [10]),
        .I2(\buffer_reg[0] [10]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [10]),
        .O(dout0[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[11]_i_1 
       (.I0(\buffer_reg[2] [11]),
        .I1(\buffer_reg[3] [11]),
        .I2(\buffer_reg[0] [11]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [11]),
        .O(dout0[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[12]_i_1 
       (.I0(\buffer_reg[2] [12]),
        .I1(\buffer_reg[3] [12]),
        .I2(\buffer_reg[0] [12]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [12]),
        .O(dout0[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[13]_i_1 
       (.I0(\buffer_reg[2] [13]),
        .I1(\buffer_reg[3] [13]),
        .I2(\buffer_reg[0] [13]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [13]),
        .O(dout0[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[14]_i_1 
       (.I0(\buffer_reg[2] [14]),
        .I1(\buffer_reg[3] [14]),
        .I2(\buffer_reg[0] [14]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [14]),
        .O(dout0[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[15]_i_1 
       (.I0(\buffer_reg[2] [15]),
        .I1(\buffer_reg[3] [15]),
        .I2(\buffer_reg[0] [15]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [15]),
        .O(dout0[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[16]_i_1 
       (.I0(\buffer_reg[2] [16]),
        .I1(\buffer_reg[3] [16]),
        .I2(\buffer_reg[0] [16]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [16]),
        .O(dout0[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[17]_i_1 
       (.I0(\buffer_reg[2] [17]),
        .I1(\buffer_reg[3] [17]),
        .I2(\buffer_reg[0] [17]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [17]),
        .O(dout0[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[18]_i_1 
       (.I0(\buffer_reg[2] [18]),
        .I1(\buffer_reg[3] [18]),
        .I2(\buffer_reg[0] [18]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [18]),
        .O(dout0[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[19]_i_1 
       (.I0(\buffer_reg[2] [19]),
        .I1(\buffer_reg[3] [19]),
        .I2(\buffer_reg[0] [19]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [19]),
        .O(dout0[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[1]_i_1 
       (.I0(\buffer_reg[2] [1]),
        .I1(\buffer_reg[3] [1]),
        .I2(\buffer_reg[0] [1]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [1]),
        .O(dout0[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[20]_i_1 
       (.I0(\buffer_reg[2] [20]),
        .I1(\buffer_reg[3] [20]),
        .I2(\buffer_reg[0] [20]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [20]),
        .O(dout0[20]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[21]_i_1 
       (.I0(\buffer_reg[2] [21]),
        .I1(\buffer_reg[3] [21]),
        .I2(\buffer_reg[0] [21]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [21]),
        .O(dout0[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[22]_i_1 
       (.I0(\buffer_reg[2] [22]),
        .I1(\buffer_reg[3] [22]),
        .I2(\buffer_reg[0] [22]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [22]),
        .O(dout0[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[23]_i_1 
       (.I0(\buffer_reg[2] [23]),
        .I1(\buffer_reg[3] [23]),
        .I2(\buffer_reg[0] [23]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [23]),
        .O(dout0[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[24]_i_1 
       (.I0(\buffer_reg[2] [24]),
        .I1(\buffer_reg[3] [24]),
        .I2(\buffer_reg[0] [24]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [24]),
        .O(dout0[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[25]_i_1 
       (.I0(\buffer_reg[2] [25]),
        .I1(\buffer_reg[3] [25]),
        .I2(\buffer_reg[0] [25]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [25]),
        .O(dout0[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[26]_i_1 
       (.I0(\buffer_reg[2] [26]),
        .I1(\buffer_reg[3] [26]),
        .I2(\buffer_reg[0] [26]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [26]),
        .O(dout0[26]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[27]_i_1 
       (.I0(\buffer_reg[2] [27]),
        .I1(\buffer_reg[3] [27]),
        .I2(\buffer_reg[0] [27]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [27]),
        .O(dout0[27]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[28]_i_1 
       (.I0(\buffer_reg[2] [28]),
        .I1(\buffer_reg[3] [28]),
        .I2(\buffer_reg[0] [28]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [28]),
        .O(dout0[28]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[29]_i_1 
       (.I0(\buffer_reg[2] [29]),
        .I1(\buffer_reg[3] [29]),
        .I2(\buffer_reg[0] [29]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [29]),
        .O(dout0[29]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[2]_i_1 
       (.I0(\buffer_reg[2] [2]),
        .I1(\buffer_reg[3] [2]),
        .I2(\buffer_reg[0] [2]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [2]),
        .O(dout0[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[30]_i_1 
       (.I0(\buffer_reg[2] [30]),
        .I1(\buffer_reg[3] [30]),
        .I2(\buffer_reg[0] [30]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [30]),
        .O(dout0[30]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \dout[31]_i_1 
       (.I0(read),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state_reg_n_0_[0] ),
        .I4(rst),
        .O(\dout[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[31]_i_2 
       (.I0(\buffer_reg[2] [31]),
        .I1(\buffer_reg[3] [31]),
        .I2(\buffer_reg[0] [31]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [31]),
        .O(dout0[31]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[3]_i_1 
       (.I0(\buffer_reg[2] [3]),
        .I1(\buffer_reg[3] [3]),
        .I2(\buffer_reg[0] [3]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [3]),
        .O(dout0[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[4]_i_1 
       (.I0(\buffer_reg[2] [4]),
        .I1(\buffer_reg[3] [4]),
        .I2(\buffer_reg[0] [4]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [4]),
        .O(dout0[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[5]_i_1 
       (.I0(\buffer_reg[2] [5]),
        .I1(\buffer_reg[3] [5]),
        .I2(\buffer_reg[0] [5]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [5]),
        .O(dout0[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[6]_i_1 
       (.I0(\buffer_reg[2] [6]),
        .I1(\buffer_reg[3] [6]),
        .I2(\buffer_reg[0] [6]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [6]),
        .O(dout0[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[7]_i_1 
       (.I0(\buffer_reg[2] [7]),
        .I1(\buffer_reg[3] [7]),
        .I2(\buffer_reg[0] [7]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [7]),
        .O(dout0[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[8]_i_1 
       (.I0(\buffer_reg[2] [8]),
        .I1(\buffer_reg[3] [8]),
        .I2(\buffer_reg[0] [8]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [8]),
        .O(dout0[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \dout[9]_i_1 
       (.I0(\buffer_reg[2] [9]),
        .I1(\buffer_reg[3] [9]),
        .I2(\buffer_reg[0] [9]),
        .I3(\send_index_reg_n_0_[1] ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(\buffer_reg[1] [9]),
        .O(dout0[9]));
  FDRE \dout_reg[0] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[10]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[11]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE \dout_reg[12] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[12]),
        .Q(dout[12]),
        .R(1'b0));
  FDRE \dout_reg[13] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[13]),
        .Q(dout[13]),
        .R(1'b0));
  FDRE \dout_reg[14] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[14]),
        .Q(dout[14]),
        .R(1'b0));
  FDRE \dout_reg[15] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[15]),
        .Q(dout[15]),
        .R(1'b0));
  FDRE \dout_reg[16] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[16]),
        .Q(dout[16]),
        .R(1'b0));
  FDRE \dout_reg[17] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[17]),
        .Q(dout[17]),
        .R(1'b0));
  FDRE \dout_reg[18] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[18]),
        .Q(dout[18]),
        .R(1'b0));
  FDRE \dout_reg[19] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[19]),
        .Q(dout[19]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[20] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[20]),
        .Q(dout[20]),
        .R(1'b0));
  FDRE \dout_reg[21] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[21]),
        .Q(dout[21]),
        .R(1'b0));
  FDRE \dout_reg[22] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[22]),
        .Q(dout[22]),
        .R(1'b0));
  FDRE \dout_reg[23] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[23]),
        .Q(dout[23]),
        .R(1'b0));
  FDRE \dout_reg[24] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[24]),
        .Q(dout[24]),
        .R(1'b0));
  FDRE \dout_reg[25] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[25]),
        .Q(dout[25]),
        .R(1'b0));
  FDRE \dout_reg[26] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[26]),
        .Q(dout[26]),
        .R(1'b0));
  FDRE \dout_reg[27] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[27]),
        .Q(dout[27]),
        .R(1'b0));
  FDRE \dout_reg[28] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[28]),
        .Q(dout[28]),
        .R(1'b0));
  FDRE \dout_reg[29] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[29]),
        .Q(dout[29]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[30] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[30]),
        .Q(dout[30]),
        .R(1'b0));
  FDRE \dout_reg[31] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[31]),
        .Q(dout[31]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[8]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[9]),
        .Q(dout[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF0AFF00008800)) 
    \next_state[0]_i_1 
       (.I0(\next_state[0]_i_2_n_0 ),
        .I1(valid_result),
        .I2(last),
        .I3(\next_state[0]_i_3_n_0 ),
        .I4(rst),
        .I5(\next_state_reg_n_0_[0] ),
        .O(\next_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \next_state[0]_i_2 
       (.I0(\next_state_reg_n_0_[1] ),
        .I1(\next_state_reg_n_0_[2] ),
        .O(\next_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFD5FF)) 
    \next_state[0]_i_3 
       (.I0(\next_state_reg_n_0_[1] ),
        .I1(\send_index_reg_n_0_[1] ),
        .I2(\send_index_reg_n_0_[0] ),
        .I3(read),
        .I4(\next_state_reg_n_0_[2] ),
        .I5(\next_state_reg_n_0_[0] ),
        .O(\next_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AAABAAAA)) 
    \next_state[1]_i_1 
       (.I0(next_state),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state[1]_i_3_n_0 ),
        .I4(\next_state_reg_n_0_[1] ),
        .I5(rst),
        .O(\next_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020030)) 
    \next_state[1]_i_2 
       (.I0(last),
        .I1(\next_state_reg_n_0_[2] ),
        .I2(\next_state_reg_n_0_[1] ),
        .I3(read),
        .I4(\next_state_reg_n_0_[0] ),
        .O(next_state));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \next_state[1]_i_3 
       (.I0(\send_index_reg_n_0_[1] ),
        .I1(\send_index_reg_n_0_[0] ),
        .I2(read),
        .O(\next_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC10000000)) 
    \next_state[2]_i_1 
       (.I0(\next_state_reg_n_0_[0] ),
        .I1(\next_state_reg_n_0_[2] ),
        .I2(read),
        .I3(\next_state[2]_i_2_n_0 ),
        .I4(\next_state_reg_n_0_[1] ),
        .I5(rst),
        .O(\next_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \next_state[2]_i_2 
       (.I0(\send_index_reg_n_0_[0] ),
        .I1(\send_index_reg_n_0_[1] ),
        .O(\next_state[2]_i_2_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFD01)) 
    ready_for_results_i_1
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[1] ),
        .I3(ready_for_results),
        .O(ready_for_results_i_1_n_0));
  FDCE ready_for_results_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ready_for_results_i_1_n_0),
        .Q(ready_for_results));
  LUT6 #(
    .INIT(64'hFF00FF00DD409D40)) 
    \send_index[0]_i_1 
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(read),
        .I3(\send_index_reg_n_0_[0] ),
        .I4(\send_index_reg_n_0_[1] ),
        .I5(\next_state_reg_n_0_[0] ),
        .O(\send_index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000DDDD4000)) 
    \send_index[1]_i_1 
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(read),
        .I3(\send_index_reg_n_0_[0] ),
        .I4(\send_index_reg_n_0_[1] ),
        .I5(\next_state_reg_n_0_[0] ),
        .O(\send_index[1]_i_1_n_0 ));
  FDCE \send_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\send_index[0]_i_1_n_0 ),
        .Q(\send_index_reg_n_0_[0] ));
  FDCE \send_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\send_index[1]_i_1_n_0 ),
        .Q(\send_index_reg_n_0_[1] ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axis2fifo_0_0,axis2fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis2fifo,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    result_data,
    last,
    valid_result,
    ready_for_results,
    dout,
    done,
    read);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input [31:0]result_data;
  input last;
  input valid_result;
  output ready_for_results;
  output [31:0]dout;
  output done;
  input read;

  wire clk;
  wire done;
  wire [31:0]dout;
  wire last;
  wire read;
  wire ready_for_results;
  wire [31:0]result_data;
  wire rst;
  wire valid_result;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis2fifo inst
       (.clk(clk),
        .done(done),
        .dout(dout),
        .last(last),
        .read(read),
        .ready_for_results(ready_for_results),
        .result_data(result_data),
        .rst(rst),
        .valid_result(valid_result));
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
