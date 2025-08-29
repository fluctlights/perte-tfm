// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Aug 15 19:01:31 2025
// Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo2axis_0_0_sim_netlist.v
// Design      : design_1_fifo2axis_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo2axis_0_0,fifo2axis,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fifo2axis,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    fifo_data,
    wr_en,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    start_accel,
    s_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input [31:0]fifo_data;
  input wr_en;
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
  wire start_accel;
  wire wr_en;

  assign s_axis_tvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo2axis inst
       (.clk(clk),
        .fifo_data(fifo_data),
        .rst(rst),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .wr_en(wr_en));
  LUT1 #(
    .INIT(2'h1)) 
    start_accel_INST_0
       (.I0(rst),
        .O(start_accel));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo2axis
   (s_axis_tdata,
    rst,
    s_axis_tready,
    wr_en,
    clk,
    s_axis_tlast,
    fifo_data);
  output [31:0]s_axis_tdata;
  input rst;
  input s_axis_tready;
  input wr_en;
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
  wire wr_en;

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
        .I5(wr_en),
        .O(\buffer_index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF1F0F0F0F1F0E0E0)) 
    \buffer_index[1]_i_1 
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(\buffer_index_reg_n_0_[1] ),
        .I3(\buffer_index_reg_n_0_[0] ),
        .I4(\next_state_reg_n_0_[0] ),
        .I5(wr_en),
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
        .D(fifo_data[0]),
        .Q(\buffer_reg[0] [0]),
        .R(1'b0));
  FDRE \buffer_reg[0][10] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[10]),
        .Q(\buffer_reg[0] [10]),
        .R(1'b0));
  FDRE \buffer_reg[0][11] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[11]),
        .Q(\buffer_reg[0] [11]),
        .R(1'b0));
  FDRE \buffer_reg[0][12] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[12]),
        .Q(\buffer_reg[0] [12]),
        .R(1'b0));
  FDRE \buffer_reg[0][13] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[13]),
        .Q(\buffer_reg[0] [13]),
        .R(1'b0));
  FDRE \buffer_reg[0][14] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[14]),
        .Q(\buffer_reg[0] [14]),
        .R(1'b0));
  FDRE \buffer_reg[0][15] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[15]),
        .Q(\buffer_reg[0] [15]),
        .R(1'b0));
  FDRE \buffer_reg[0][16] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[16]),
        .Q(\buffer_reg[0] [16]),
        .R(1'b0));
  FDRE \buffer_reg[0][17] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[17]),
        .Q(\buffer_reg[0] [17]),
        .R(1'b0));
  FDRE \buffer_reg[0][18] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[18]),
        .Q(\buffer_reg[0] [18]),
        .R(1'b0));
  FDRE \buffer_reg[0][19] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[19]),
        .Q(\buffer_reg[0] [19]),
        .R(1'b0));
  FDRE \buffer_reg[0][1] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[1]),
        .Q(\buffer_reg[0] [1]),
        .R(1'b0));
  FDRE \buffer_reg[0][20] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[20]),
        .Q(\buffer_reg[0] [20]),
        .R(1'b0));
  FDRE \buffer_reg[0][21] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[21]),
        .Q(\buffer_reg[0] [21]),
        .R(1'b0));
  FDRE \buffer_reg[0][22] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[22]),
        .Q(\buffer_reg[0] [22]),
        .R(1'b0));
  FDRE \buffer_reg[0][23] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[23]),
        .Q(\buffer_reg[0] [23]),
        .R(1'b0));
  FDRE \buffer_reg[0][24] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[24]),
        .Q(\buffer_reg[0] [24]),
        .R(1'b0));
  FDRE \buffer_reg[0][25] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[25]),
        .Q(\buffer_reg[0] [25]),
        .R(1'b0));
  FDRE \buffer_reg[0][26] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[26]),
        .Q(\buffer_reg[0] [26]),
        .R(1'b0));
  FDRE \buffer_reg[0][27] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[27]),
        .Q(\buffer_reg[0] [27]),
        .R(1'b0));
  FDRE \buffer_reg[0][28] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[28]),
        .Q(\buffer_reg[0] [28]),
        .R(1'b0));
  FDRE \buffer_reg[0][29] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[29]),
        .Q(\buffer_reg[0] [29]),
        .R(1'b0));
  FDRE \buffer_reg[0][2] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[2]),
        .Q(\buffer_reg[0] [2]),
        .R(1'b0));
  FDRE \buffer_reg[0][30] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[30]),
        .Q(\buffer_reg[0] [30]),
        .R(1'b0));
  FDRE \buffer_reg[0][31] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[31]),
        .Q(\buffer_reg[0] [31]),
        .R(1'b0));
  FDRE \buffer_reg[0][3] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[3]),
        .Q(\buffer_reg[0] [3]),
        .R(1'b0));
  FDRE \buffer_reg[0][4] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[4]),
        .Q(\buffer_reg[0] [4]),
        .R(1'b0));
  FDRE \buffer_reg[0][5] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[5]),
        .Q(\buffer_reg[0] [5]),
        .R(1'b0));
  FDRE \buffer_reg[0][6] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[6]),
        .Q(\buffer_reg[0] [6]),
        .R(1'b0));
  FDRE \buffer_reg[0][7] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[7]),
        .Q(\buffer_reg[0] [7]),
        .R(1'b0));
  FDRE \buffer_reg[0][8] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[8]),
        .Q(\buffer_reg[0] [8]),
        .R(1'b0));
  FDRE \buffer_reg[0][9] 
       (.C(clk),
        .CE(\buffer[0][31]_i_1_n_0 ),
        .D(fifo_data[9]),
        .Q(\buffer_reg[0] [9]),
        .R(1'b0));
  FDRE \buffer_reg[1][0] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[0]),
        .Q(\buffer_reg[1] [0]),
        .R(1'b0));
  FDRE \buffer_reg[1][10] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[10]),
        .Q(\buffer_reg[1] [10]),
        .R(1'b0));
  FDRE \buffer_reg[1][11] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[11]),
        .Q(\buffer_reg[1] [11]),
        .R(1'b0));
  FDRE \buffer_reg[1][12] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[12]),
        .Q(\buffer_reg[1] [12]),
        .R(1'b0));
  FDRE \buffer_reg[1][13] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[13]),
        .Q(\buffer_reg[1] [13]),
        .R(1'b0));
  FDRE \buffer_reg[1][14] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[14]),
        .Q(\buffer_reg[1] [14]),
        .R(1'b0));
  FDRE \buffer_reg[1][15] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[15]),
        .Q(\buffer_reg[1] [15]),
        .R(1'b0));
  FDRE \buffer_reg[1][16] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[16]),
        .Q(\buffer_reg[1] [16]),
        .R(1'b0));
  FDRE \buffer_reg[1][17] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[17]),
        .Q(\buffer_reg[1] [17]),
        .R(1'b0));
  FDRE \buffer_reg[1][18] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[18]),
        .Q(\buffer_reg[1] [18]),
        .R(1'b0));
  FDRE \buffer_reg[1][19] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[19]),
        .Q(\buffer_reg[1] [19]),
        .R(1'b0));
  FDRE \buffer_reg[1][1] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[1]),
        .Q(\buffer_reg[1] [1]),
        .R(1'b0));
  FDRE \buffer_reg[1][20] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[20]),
        .Q(\buffer_reg[1] [20]),
        .R(1'b0));
  FDRE \buffer_reg[1][21] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[21]),
        .Q(\buffer_reg[1] [21]),
        .R(1'b0));
  FDRE \buffer_reg[1][22] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[22]),
        .Q(\buffer_reg[1] [22]),
        .R(1'b0));
  FDRE \buffer_reg[1][23] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[23]),
        .Q(\buffer_reg[1] [23]),
        .R(1'b0));
  FDRE \buffer_reg[1][24] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[24]),
        .Q(\buffer_reg[1] [24]),
        .R(1'b0));
  FDRE \buffer_reg[1][25] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[25]),
        .Q(\buffer_reg[1] [25]),
        .R(1'b0));
  FDRE \buffer_reg[1][26] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[26]),
        .Q(\buffer_reg[1] [26]),
        .R(1'b0));
  FDRE \buffer_reg[1][27] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[27]),
        .Q(\buffer_reg[1] [27]),
        .R(1'b0));
  FDRE \buffer_reg[1][28] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[28]),
        .Q(\buffer_reg[1] [28]),
        .R(1'b0));
  FDRE \buffer_reg[1][29] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[29]),
        .Q(\buffer_reg[1] [29]),
        .R(1'b0));
  FDRE \buffer_reg[1][2] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[2]),
        .Q(\buffer_reg[1] [2]),
        .R(1'b0));
  FDRE \buffer_reg[1][30] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[30]),
        .Q(\buffer_reg[1] [30]),
        .R(1'b0));
  FDRE \buffer_reg[1][31] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[31]),
        .Q(\buffer_reg[1] [31]),
        .R(1'b0));
  FDRE \buffer_reg[1][3] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[3]),
        .Q(\buffer_reg[1] [3]),
        .R(1'b0));
  FDRE \buffer_reg[1][4] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[4]),
        .Q(\buffer_reg[1] [4]),
        .R(1'b0));
  FDRE \buffer_reg[1][5] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[5]),
        .Q(\buffer_reg[1] [5]),
        .R(1'b0));
  FDRE \buffer_reg[1][6] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[6]),
        .Q(\buffer_reg[1] [6]),
        .R(1'b0));
  FDRE \buffer_reg[1][7] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[7]),
        .Q(\buffer_reg[1] [7]),
        .R(1'b0));
  FDRE \buffer_reg[1][8] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[8]),
        .Q(\buffer_reg[1] [8]),
        .R(1'b0));
  FDRE \buffer_reg[1][9] 
       (.C(clk),
        .CE(\buffer[1][31]_i_1_n_0 ),
        .D(fifo_data[9]),
        .Q(\buffer_reg[1] [9]),
        .R(1'b0));
  FDRE \buffer_reg[2][0] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[0]),
        .Q(\buffer_reg[2] [0]),
        .R(1'b0));
  FDRE \buffer_reg[2][10] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[10]),
        .Q(\buffer_reg[2] [10]),
        .R(1'b0));
  FDRE \buffer_reg[2][11] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[11]),
        .Q(\buffer_reg[2] [11]),
        .R(1'b0));
  FDRE \buffer_reg[2][12] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[12]),
        .Q(\buffer_reg[2] [12]),
        .R(1'b0));
  FDRE \buffer_reg[2][13] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[13]),
        .Q(\buffer_reg[2] [13]),
        .R(1'b0));
  FDRE \buffer_reg[2][14] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[14]),
        .Q(\buffer_reg[2] [14]),
        .R(1'b0));
  FDRE \buffer_reg[2][15] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[15]),
        .Q(\buffer_reg[2] [15]),
        .R(1'b0));
  FDRE \buffer_reg[2][16] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[16]),
        .Q(\buffer_reg[2] [16]),
        .R(1'b0));
  FDRE \buffer_reg[2][17] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[17]),
        .Q(\buffer_reg[2] [17]),
        .R(1'b0));
  FDRE \buffer_reg[2][18] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[18]),
        .Q(\buffer_reg[2] [18]),
        .R(1'b0));
  FDRE \buffer_reg[2][19] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[19]),
        .Q(\buffer_reg[2] [19]),
        .R(1'b0));
  FDRE \buffer_reg[2][1] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[1]),
        .Q(\buffer_reg[2] [1]),
        .R(1'b0));
  FDRE \buffer_reg[2][20] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[20]),
        .Q(\buffer_reg[2] [20]),
        .R(1'b0));
  FDRE \buffer_reg[2][21] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[21]),
        .Q(\buffer_reg[2] [21]),
        .R(1'b0));
  FDRE \buffer_reg[2][22] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[22]),
        .Q(\buffer_reg[2] [22]),
        .R(1'b0));
  FDRE \buffer_reg[2][23] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[23]),
        .Q(\buffer_reg[2] [23]),
        .R(1'b0));
  FDRE \buffer_reg[2][24] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[24]),
        .Q(\buffer_reg[2] [24]),
        .R(1'b0));
  FDRE \buffer_reg[2][25] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[25]),
        .Q(\buffer_reg[2] [25]),
        .R(1'b0));
  FDRE \buffer_reg[2][26] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[26]),
        .Q(\buffer_reg[2] [26]),
        .R(1'b0));
  FDRE \buffer_reg[2][27] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[27]),
        .Q(\buffer_reg[2] [27]),
        .R(1'b0));
  FDRE \buffer_reg[2][28] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[28]),
        .Q(\buffer_reg[2] [28]),
        .R(1'b0));
  FDRE \buffer_reg[2][29] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[29]),
        .Q(\buffer_reg[2] [29]),
        .R(1'b0));
  FDRE \buffer_reg[2][2] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[2]),
        .Q(\buffer_reg[2] [2]),
        .R(1'b0));
  FDRE \buffer_reg[2][30] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[30]),
        .Q(\buffer_reg[2] [30]),
        .R(1'b0));
  FDRE \buffer_reg[2][31] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[31]),
        .Q(\buffer_reg[2] [31]),
        .R(1'b0));
  FDRE \buffer_reg[2][3] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[3]),
        .Q(\buffer_reg[2] [3]),
        .R(1'b0));
  FDRE \buffer_reg[2][4] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[4]),
        .Q(\buffer_reg[2] [4]),
        .R(1'b0));
  FDRE \buffer_reg[2][5] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[5]),
        .Q(\buffer_reg[2] [5]),
        .R(1'b0));
  FDRE \buffer_reg[2][6] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[6]),
        .Q(\buffer_reg[2] [6]),
        .R(1'b0));
  FDRE \buffer_reg[2][7] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[7]),
        .Q(\buffer_reg[2] [7]),
        .R(1'b0));
  FDRE \buffer_reg[2][8] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[8]),
        .Q(\buffer_reg[2] [8]),
        .R(1'b0));
  FDRE \buffer_reg[2][9] 
       (.C(clk),
        .CE(\buffer[2][31]_i_1_n_0 ),
        .D(fifo_data[9]),
        .Q(\buffer_reg[2] [9]),
        .R(1'b0));
  FDRE \buffer_reg[3][0] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[0]),
        .Q(\buffer_reg[3] [0]),
        .R(1'b0));
  FDRE \buffer_reg[3][10] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[10]),
        .Q(\buffer_reg[3] [10]),
        .R(1'b0));
  FDRE \buffer_reg[3][11] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[11]),
        .Q(\buffer_reg[3] [11]),
        .R(1'b0));
  FDRE \buffer_reg[3][12] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[12]),
        .Q(\buffer_reg[3] [12]),
        .R(1'b0));
  FDRE \buffer_reg[3][13] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[13]),
        .Q(\buffer_reg[3] [13]),
        .R(1'b0));
  FDRE \buffer_reg[3][14] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[14]),
        .Q(\buffer_reg[3] [14]),
        .R(1'b0));
  FDRE \buffer_reg[3][15] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[15]),
        .Q(\buffer_reg[3] [15]),
        .R(1'b0));
  FDRE \buffer_reg[3][16] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[16]),
        .Q(\buffer_reg[3] [16]),
        .R(1'b0));
  FDRE \buffer_reg[3][17] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[17]),
        .Q(\buffer_reg[3] [17]),
        .R(1'b0));
  FDRE \buffer_reg[3][18] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[18]),
        .Q(\buffer_reg[3] [18]),
        .R(1'b0));
  FDRE \buffer_reg[3][19] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[19]),
        .Q(\buffer_reg[3] [19]),
        .R(1'b0));
  FDRE \buffer_reg[3][1] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[1]),
        .Q(\buffer_reg[3] [1]),
        .R(1'b0));
  FDRE \buffer_reg[3][20] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[20]),
        .Q(\buffer_reg[3] [20]),
        .R(1'b0));
  FDRE \buffer_reg[3][21] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[21]),
        .Q(\buffer_reg[3] [21]),
        .R(1'b0));
  FDRE \buffer_reg[3][22] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[22]),
        .Q(\buffer_reg[3] [22]),
        .R(1'b0));
  FDRE \buffer_reg[3][23] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[23]),
        .Q(\buffer_reg[3] [23]),
        .R(1'b0));
  FDRE \buffer_reg[3][24] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[24]),
        .Q(\buffer_reg[3] [24]),
        .R(1'b0));
  FDRE \buffer_reg[3][25] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[25]),
        .Q(\buffer_reg[3] [25]),
        .R(1'b0));
  FDRE \buffer_reg[3][26] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[26]),
        .Q(\buffer_reg[3] [26]),
        .R(1'b0));
  FDRE \buffer_reg[3][27] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[27]),
        .Q(\buffer_reg[3] [27]),
        .R(1'b0));
  FDRE \buffer_reg[3][28] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[28]),
        .Q(\buffer_reg[3] [28]),
        .R(1'b0));
  FDRE \buffer_reg[3][29] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[29]),
        .Q(\buffer_reg[3] [29]),
        .R(1'b0));
  FDRE \buffer_reg[3][2] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[2]),
        .Q(\buffer_reg[3] [2]),
        .R(1'b0));
  FDRE \buffer_reg[3][30] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[30]),
        .Q(\buffer_reg[3] [30]),
        .R(1'b0));
  FDRE \buffer_reg[3][31] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[31]),
        .Q(\buffer_reg[3] [31]),
        .R(1'b0));
  FDRE \buffer_reg[3][3] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[3]),
        .Q(\buffer_reg[3] [3]),
        .R(1'b0));
  FDRE \buffer_reg[3][4] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[4]),
        .Q(\buffer_reg[3] [4]),
        .R(1'b0));
  FDRE \buffer_reg[3][5] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[5]),
        .Q(\buffer_reg[3] [5]),
        .R(1'b0));
  FDRE \buffer_reg[3][6] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[6]),
        .Q(\buffer_reg[3] [6]),
        .R(1'b0));
  FDRE \buffer_reg[3][7] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[7]),
        .Q(\buffer_reg[3] [7]),
        .R(1'b0));
  FDRE \buffer_reg[3][8] 
       (.C(clk),
        .CE(\buffer[3][31]_i_1_n_0 ),
        .D(fifo_data[8]),
        .Q(\buffer_reg[3] [8]),
        .R(1'b0));
  FDRE \buffer_reg[3][9] 
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
        .I3(wr_en),
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
  FDCE \s_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[0]),
        .Q(s_axis_tdata[0]));
  FDCE \s_axis_tdata_reg[10] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[10]),
        .Q(s_axis_tdata[10]));
  FDCE \s_axis_tdata_reg[11] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[11]),
        .Q(s_axis_tdata[11]));
  FDCE \s_axis_tdata_reg[12] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[12]),
        .Q(s_axis_tdata[12]));
  FDCE \s_axis_tdata_reg[13] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[13]),
        .Q(s_axis_tdata[13]));
  FDCE \s_axis_tdata_reg[14] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[14]),
        .Q(s_axis_tdata[14]));
  FDCE \s_axis_tdata_reg[15] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[15]),
        .Q(s_axis_tdata[15]));
  FDCE \s_axis_tdata_reg[16] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[16]),
        .Q(s_axis_tdata[16]));
  FDCE \s_axis_tdata_reg[17] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[17]),
        .Q(s_axis_tdata[17]));
  FDCE \s_axis_tdata_reg[18] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[18]),
        .Q(s_axis_tdata[18]));
  FDCE \s_axis_tdata_reg[19] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[19]),
        .Q(s_axis_tdata[19]));
  FDCE \s_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[1]),
        .Q(s_axis_tdata[1]));
  FDCE \s_axis_tdata_reg[20] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[20]),
        .Q(s_axis_tdata[20]));
  FDCE \s_axis_tdata_reg[21] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[21]),
        .Q(s_axis_tdata[21]));
  FDCE \s_axis_tdata_reg[22] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[22]),
        .Q(s_axis_tdata[22]));
  FDCE \s_axis_tdata_reg[23] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[23]),
        .Q(s_axis_tdata[23]));
  FDCE \s_axis_tdata_reg[24] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[24]),
        .Q(s_axis_tdata[24]));
  FDCE \s_axis_tdata_reg[25] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[25]),
        .Q(s_axis_tdata[25]));
  FDCE \s_axis_tdata_reg[26] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[26]),
        .Q(s_axis_tdata[26]));
  FDCE \s_axis_tdata_reg[27] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[27]),
        .Q(s_axis_tdata[27]));
  FDCE \s_axis_tdata_reg[28] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[28]),
        .Q(s_axis_tdata[28]));
  FDCE \s_axis_tdata_reg[29] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[29]),
        .Q(s_axis_tdata[29]));
  FDCE \s_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[2]),
        .Q(s_axis_tdata[2]));
  FDCE \s_axis_tdata_reg[30] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[30]),
        .Q(s_axis_tdata[30]));
  FDCE \s_axis_tdata_reg[31] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[31]),
        .Q(s_axis_tdata[31]));
  FDCE \s_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[3]),
        .Q(s_axis_tdata[3]));
  FDCE \s_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[4]),
        .Q(s_axis_tdata[4]));
  FDCE \s_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[5]),
        .Q(s_axis_tdata[5]));
  FDCE \s_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[6]),
        .Q(s_axis_tdata[6]));
  FDCE \s_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[7]),
        .Q(s_axis_tdata[7]));
  FDCE \s_axis_tdata_reg[8] 
       (.C(clk),
        .CE(\s_axis_tdata[31]_i_1_n_0 ),
        .CLR(rst),
        .D(s_axis_tdata0[8]),
        .Q(s_axis_tdata[8]));
  FDCE \s_axis_tdata_reg[9] 
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
