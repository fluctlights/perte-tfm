// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Aug 15 18:25:57 2025
// Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo_in_1_0_sim_netlist.v
// Design      : design_1_fifo_in_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo_in_1_0,fifo_in,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fifo_in,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    wr_en,
    rd_en,
    din,
    dout,
    full,
    empty,
    data_ready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input wr_en;
  input rd_en;
  input [31:0]din;
  output [31:0]dout;
  output full;
  output empty;
  output data_ready;

  wire clk;
  wire data_ready;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_in inst
       (.clk(clk),
        .data_ready_reg_0(data_ready),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_in
   (data_ready_reg_0,
    dout,
    full,
    empty,
    din,
    clk,
    rst,
    rd_en,
    wr_en);
  output data_ready_reg_0;
  output [31:0]dout;
  output full;
  output empty;
  input [31:0]din;
  input clk;
  input rst;
  input rd_en;
  input wr_en;

  wire FSM_sequential_state_i_1_n_0;
  wire FSM_sequential_state_reg_n_0;
  wire clk;
  wire data_ready_i_1_n_0;
  wire data_ready_i_2_n_0;
  wire data_ready_i_3_n_0;
  wire data_ready_reg_0;
  wire [31:0]din;
  wire [31:0]dout;
  wire \dout[0]_i_1_n_0 ;
  wire \dout[10]_i_1_n_0 ;
  wire \dout[11]_i_1_n_0 ;
  wire \dout[12]_i_1_n_0 ;
  wire \dout[13]_i_1_n_0 ;
  wire \dout[14]_i_1_n_0 ;
  wire \dout[15]_i_1_n_0 ;
  wire \dout[16]_i_1_n_0 ;
  wire \dout[17]_i_1_n_0 ;
  wire \dout[18]_i_1_n_0 ;
  wire \dout[19]_i_1_n_0 ;
  wire \dout[1]_i_1_n_0 ;
  wire \dout[20]_i_1_n_0 ;
  wire \dout[21]_i_1_n_0 ;
  wire \dout[22]_i_1_n_0 ;
  wire \dout[23]_i_1_n_0 ;
  wire \dout[24]_i_1_n_0 ;
  wire \dout[25]_i_1_n_0 ;
  wire \dout[26]_i_1_n_0 ;
  wire \dout[27]_i_1_n_0 ;
  wire \dout[28]_i_1_n_0 ;
  wire \dout[29]_i_1_n_0 ;
  wire \dout[2]_i_1_n_0 ;
  wire \dout[30]_i_1_n_0 ;
  wire \dout[31]_i_1_n_0 ;
  wire \dout[31]_i_2_n_0 ;
  wire \dout[3]_i_1_n_0 ;
  wire \dout[4]_i_1_n_0 ;
  wire \dout[5]_i_1_n_0 ;
  wire \dout[6]_i_1_n_0 ;
  wire \dout[7]_i_1_n_0 ;
  wire \dout[8]_i_1_n_0 ;
  wire \dout[9]_i_1_n_0 ;
  wire empty;
  wire [3:0]fifo_data_count_reg;
  wire full;
  wire \mem[0][31]_P_i_1_n_0 ;
  wire \mem[1][31]_P_i_1_n_0 ;
  wire \mem[2][31]_P_i_1_n_0 ;
  wire \mem[3][31]_P_i_1_n_0 ;
  wire \mem_reg[0][0]_P_n_0 ;
  wire \mem_reg[0][10]_P_n_0 ;
  wire \mem_reg[0][11]_P_n_0 ;
  wire \mem_reg[0][12]_P_n_0 ;
  wire \mem_reg[0][13]_P_n_0 ;
  wire \mem_reg[0][14]_P_n_0 ;
  wire \mem_reg[0][15]_P_n_0 ;
  wire \mem_reg[0][16]_P_n_0 ;
  wire \mem_reg[0][17]_P_n_0 ;
  wire \mem_reg[0][18]_P_n_0 ;
  wire \mem_reg[0][19]_P_n_0 ;
  wire \mem_reg[0][1]_P_n_0 ;
  wire \mem_reg[0][20]_P_n_0 ;
  wire \mem_reg[0][21]_P_n_0 ;
  wire \mem_reg[0][22]_P_n_0 ;
  wire \mem_reg[0][23]_P_n_0 ;
  wire \mem_reg[0][24]_P_n_0 ;
  wire \mem_reg[0][25]_P_n_0 ;
  wire \mem_reg[0][26]_P_n_0 ;
  wire \mem_reg[0][27]_P_n_0 ;
  wire \mem_reg[0][28]_P_n_0 ;
  wire \mem_reg[0][29]_P_n_0 ;
  wire \mem_reg[0][2]_P_n_0 ;
  wire \mem_reg[0][30]_P_n_0 ;
  wire \mem_reg[0][31]_P_n_0 ;
  wire \mem_reg[0][3]_P_n_0 ;
  wire \mem_reg[0][4]_P_n_0 ;
  wire \mem_reg[0][5]_P_n_0 ;
  wire \mem_reg[0][6]_P_n_0 ;
  wire \mem_reg[0][7]_P_n_0 ;
  wire \mem_reg[0][8]_P_n_0 ;
  wire \mem_reg[0][9]_P_n_0 ;
  wire \mem_reg[1][0]_P_n_0 ;
  wire \mem_reg[1][10]_P_n_0 ;
  wire \mem_reg[1][11]_P_n_0 ;
  wire \mem_reg[1][12]_P_n_0 ;
  wire \mem_reg[1][13]_P_n_0 ;
  wire \mem_reg[1][14]_P_n_0 ;
  wire \mem_reg[1][15]_P_n_0 ;
  wire \mem_reg[1][16]_P_n_0 ;
  wire \mem_reg[1][17]_P_n_0 ;
  wire \mem_reg[1][18]_P_n_0 ;
  wire \mem_reg[1][19]_P_n_0 ;
  wire \mem_reg[1][1]_P_n_0 ;
  wire \mem_reg[1][20]_P_n_0 ;
  wire \mem_reg[1][21]_P_n_0 ;
  wire \mem_reg[1][22]_P_n_0 ;
  wire \mem_reg[1][23]_P_n_0 ;
  wire \mem_reg[1][24]_P_n_0 ;
  wire \mem_reg[1][25]_P_n_0 ;
  wire \mem_reg[1][26]_P_n_0 ;
  wire \mem_reg[1][27]_P_n_0 ;
  wire \mem_reg[1][28]_P_n_0 ;
  wire \mem_reg[1][29]_P_n_0 ;
  wire \mem_reg[1][2]_P_n_0 ;
  wire \mem_reg[1][30]_P_n_0 ;
  wire \mem_reg[1][31]_P_n_0 ;
  wire \mem_reg[1][3]_P_n_0 ;
  wire \mem_reg[1][4]_P_n_0 ;
  wire \mem_reg[1][5]_P_n_0 ;
  wire \mem_reg[1][6]_P_n_0 ;
  wire \mem_reg[1][7]_P_n_0 ;
  wire \mem_reg[1][8]_P_n_0 ;
  wire \mem_reg[1][9]_P_n_0 ;
  wire \mem_reg[2][0]_P_n_0 ;
  wire \mem_reg[2][10]_P_n_0 ;
  wire \mem_reg[2][11]_P_n_0 ;
  wire \mem_reg[2][12]_P_n_0 ;
  wire \mem_reg[2][13]_P_n_0 ;
  wire \mem_reg[2][14]_P_n_0 ;
  wire \mem_reg[2][15]_P_n_0 ;
  wire \mem_reg[2][16]_P_n_0 ;
  wire \mem_reg[2][17]_P_n_0 ;
  wire \mem_reg[2][18]_P_n_0 ;
  wire \mem_reg[2][19]_P_n_0 ;
  wire \mem_reg[2][1]_P_n_0 ;
  wire \mem_reg[2][20]_P_n_0 ;
  wire \mem_reg[2][21]_P_n_0 ;
  wire \mem_reg[2][22]_P_n_0 ;
  wire \mem_reg[2][23]_P_n_0 ;
  wire \mem_reg[2][24]_P_n_0 ;
  wire \mem_reg[2][25]_P_n_0 ;
  wire \mem_reg[2][26]_P_n_0 ;
  wire \mem_reg[2][27]_P_n_0 ;
  wire \mem_reg[2][28]_P_n_0 ;
  wire \mem_reg[2][29]_P_n_0 ;
  wire \mem_reg[2][2]_P_n_0 ;
  wire \mem_reg[2][30]_P_n_0 ;
  wire \mem_reg[2][31]_P_n_0 ;
  wire \mem_reg[2][3]_P_n_0 ;
  wire \mem_reg[2][4]_P_n_0 ;
  wire \mem_reg[2][5]_P_n_0 ;
  wire \mem_reg[2][6]_P_n_0 ;
  wire \mem_reg[2][7]_P_n_0 ;
  wire \mem_reg[2][8]_P_n_0 ;
  wire \mem_reg[2][9]_P_n_0 ;
  wire \mem_reg[3][0]_P_n_0 ;
  wire \mem_reg[3][10]_P_n_0 ;
  wire \mem_reg[3][11]_P_n_0 ;
  wire \mem_reg[3][12]_P_n_0 ;
  wire \mem_reg[3][13]_P_n_0 ;
  wire \mem_reg[3][14]_P_n_0 ;
  wire \mem_reg[3][15]_P_n_0 ;
  wire \mem_reg[3][16]_P_n_0 ;
  wire \mem_reg[3][17]_P_n_0 ;
  wire \mem_reg[3][18]_P_n_0 ;
  wire \mem_reg[3][19]_P_n_0 ;
  wire \mem_reg[3][1]_P_n_0 ;
  wire \mem_reg[3][20]_P_n_0 ;
  wire \mem_reg[3][21]_P_n_0 ;
  wire \mem_reg[3][22]_P_n_0 ;
  wire \mem_reg[3][23]_P_n_0 ;
  wire \mem_reg[3][24]_P_n_0 ;
  wire \mem_reg[3][25]_P_n_0 ;
  wire \mem_reg[3][26]_P_n_0 ;
  wire \mem_reg[3][27]_P_n_0 ;
  wire \mem_reg[3][28]_P_n_0 ;
  wire \mem_reg[3][29]_P_n_0 ;
  wire \mem_reg[3][2]_P_n_0 ;
  wire \mem_reg[3][30]_P_n_0 ;
  wire \mem_reg[3][31]_P_n_0 ;
  wire \mem_reg[3][3]_P_n_0 ;
  wire \mem_reg[3][4]_P_n_0 ;
  wire \mem_reg[3][5]_P_n_0 ;
  wire \mem_reg[3][6]_P_n_0 ;
  wire \mem_reg[3][7]_P_n_0 ;
  wire \mem_reg[3][8]_P_n_0 ;
  wire \mem_reg[3][9]_P_n_0 ;
  wire rd_en;
  wire [1:0]rd_ptr;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire \rd_ptr[1]_i_1_n_0 ;
  wire rst;
  wire [3:0]state1;
  wire wr_en;
  wire [1:0]wr_ptr0;
  wire \wr_ptr[1]_i_1_n_0 ;
  wire \wr_ptr[1]_i_3_n_0 ;
  wire \wr_ptr_reg_n_0_[0] ;
  wire \wr_ptr_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFFFFFFF7FE80000)) 
    FSM_sequential_state_i_1
       (.I0(fifo_data_count_reg[1]),
        .I1(fifo_data_count_reg[0]),
        .I2(fifo_data_count_reg[2]),
        .I3(fifo_data_count_reg[3]),
        .I4(wr_en),
        .I5(FSM_sequential_state_reg_n_0),
        .O(FSM_sequential_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDLE:0,READ:1,WAIT:10," *) 
  FDCE FSM_sequential_state_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(FSM_sequential_state_i_1_n_0),
        .Q(FSM_sequential_state_reg_n_0));
  LUT6 #(
    .INIT(64'hFF00FF00FBA8ABA8)) 
    data_ready_i_1
       (.I0(data_ready_i_2_n_0),
        .I1(data_ready_i_3_n_0),
        .I2(FSM_sequential_state_reg_n_0),
        .I3(data_ready_reg_0),
        .I4(rd_en),
        .I5(rst),
        .O(data_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00007FEA)) 
    data_ready_i_2
       (.I0(fifo_data_count_reg[2]),
        .I1(fifo_data_count_reg[0]),
        .I2(fifo_data_count_reg[1]),
        .I3(fifo_data_count_reg[3]),
        .I4(FSM_sequential_state_reg_n_0),
        .O(data_ready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FE80000)) 
    data_ready_i_3
       (.I0(fifo_data_count_reg[1]),
        .I1(fifo_data_count_reg[0]),
        .I2(fifo_data_count_reg[2]),
        .I3(fifo_data_count_reg[3]),
        .I4(wr_en),
        .O(data_ready_i_3_n_0));
  FDRE data_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_ready_i_1_n_0),
        .Q(data_ready_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[0]_i_1 
       (.I0(\mem_reg[1][0]_P_n_0 ),
        .I1(\mem_reg[0][0]_P_n_0 ),
        .I2(\mem_reg[3][0]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][0]_P_n_0 ),
        .O(\dout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[10]_i_1 
       (.I0(\mem_reg[1][10]_P_n_0 ),
        .I1(\mem_reg[0][10]_P_n_0 ),
        .I2(\mem_reg[3][10]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][10]_P_n_0 ),
        .O(\dout[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[11]_i_1 
       (.I0(\mem_reg[1][11]_P_n_0 ),
        .I1(\mem_reg[0][11]_P_n_0 ),
        .I2(\mem_reg[3][11]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][11]_P_n_0 ),
        .O(\dout[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[12]_i_1 
       (.I0(\mem_reg[1][12]_P_n_0 ),
        .I1(\mem_reg[0][12]_P_n_0 ),
        .I2(\mem_reg[3][12]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][12]_P_n_0 ),
        .O(\dout[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[13]_i_1 
       (.I0(\mem_reg[1][13]_P_n_0 ),
        .I1(\mem_reg[0][13]_P_n_0 ),
        .I2(\mem_reg[3][13]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][13]_P_n_0 ),
        .O(\dout[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[14]_i_1 
       (.I0(\mem_reg[1][14]_P_n_0 ),
        .I1(\mem_reg[0][14]_P_n_0 ),
        .I2(\mem_reg[3][14]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][14]_P_n_0 ),
        .O(\dout[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[15]_i_1 
       (.I0(\mem_reg[1][15]_P_n_0 ),
        .I1(\mem_reg[0][15]_P_n_0 ),
        .I2(\mem_reg[3][15]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][15]_P_n_0 ),
        .O(\dout[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[16]_i_1 
       (.I0(\mem_reg[1][16]_P_n_0 ),
        .I1(\mem_reg[0][16]_P_n_0 ),
        .I2(\mem_reg[3][16]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][16]_P_n_0 ),
        .O(\dout[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[17]_i_1 
       (.I0(\mem_reg[1][17]_P_n_0 ),
        .I1(\mem_reg[0][17]_P_n_0 ),
        .I2(\mem_reg[3][17]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][17]_P_n_0 ),
        .O(\dout[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[18]_i_1 
       (.I0(\mem_reg[1][18]_P_n_0 ),
        .I1(\mem_reg[0][18]_P_n_0 ),
        .I2(\mem_reg[3][18]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][18]_P_n_0 ),
        .O(\dout[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[19]_i_1 
       (.I0(\mem_reg[1][19]_P_n_0 ),
        .I1(\mem_reg[0][19]_P_n_0 ),
        .I2(\mem_reg[3][19]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][19]_P_n_0 ),
        .O(\dout[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[1]_i_1 
       (.I0(\mem_reg[1][1]_P_n_0 ),
        .I1(\mem_reg[0][1]_P_n_0 ),
        .I2(\mem_reg[3][1]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][1]_P_n_0 ),
        .O(\dout[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[20]_i_1 
       (.I0(\mem_reg[1][20]_P_n_0 ),
        .I1(\mem_reg[0][20]_P_n_0 ),
        .I2(\mem_reg[3][20]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][20]_P_n_0 ),
        .O(\dout[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[21]_i_1 
       (.I0(\mem_reg[1][21]_P_n_0 ),
        .I1(\mem_reg[0][21]_P_n_0 ),
        .I2(\mem_reg[3][21]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][21]_P_n_0 ),
        .O(\dout[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[22]_i_1 
       (.I0(\mem_reg[1][22]_P_n_0 ),
        .I1(\mem_reg[0][22]_P_n_0 ),
        .I2(\mem_reg[3][22]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][22]_P_n_0 ),
        .O(\dout[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[23]_i_1 
       (.I0(\mem_reg[1][23]_P_n_0 ),
        .I1(\mem_reg[0][23]_P_n_0 ),
        .I2(\mem_reg[3][23]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][23]_P_n_0 ),
        .O(\dout[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[24]_i_1 
       (.I0(\mem_reg[1][24]_P_n_0 ),
        .I1(\mem_reg[0][24]_P_n_0 ),
        .I2(\mem_reg[3][24]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][24]_P_n_0 ),
        .O(\dout[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[25]_i_1 
       (.I0(\mem_reg[1][25]_P_n_0 ),
        .I1(\mem_reg[0][25]_P_n_0 ),
        .I2(\mem_reg[3][25]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][25]_P_n_0 ),
        .O(\dout[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[26]_i_1 
       (.I0(\mem_reg[1][26]_P_n_0 ),
        .I1(\mem_reg[0][26]_P_n_0 ),
        .I2(\mem_reg[3][26]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][26]_P_n_0 ),
        .O(\dout[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[27]_i_1 
       (.I0(\mem_reg[1][27]_P_n_0 ),
        .I1(\mem_reg[0][27]_P_n_0 ),
        .I2(\mem_reg[3][27]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][27]_P_n_0 ),
        .O(\dout[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[28]_i_1 
       (.I0(\mem_reg[1][28]_P_n_0 ),
        .I1(\mem_reg[0][28]_P_n_0 ),
        .I2(\mem_reg[3][28]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][28]_P_n_0 ),
        .O(\dout[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[29]_i_1 
       (.I0(\mem_reg[1][29]_P_n_0 ),
        .I1(\mem_reg[0][29]_P_n_0 ),
        .I2(\mem_reg[3][29]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][29]_P_n_0 ),
        .O(\dout[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[2]_i_1 
       (.I0(\mem_reg[1][2]_P_n_0 ),
        .I1(\mem_reg[0][2]_P_n_0 ),
        .I2(\mem_reg[3][2]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][2]_P_n_0 ),
        .O(\dout[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[30]_i_1 
       (.I0(\mem_reg[1][30]_P_n_0 ),
        .I1(\mem_reg[0][30]_P_n_0 ),
        .I2(\mem_reg[3][30]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][30]_P_n_0 ),
        .O(\dout[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dout[31]_i_1 
       (.I0(FSM_sequential_state_reg_n_0),
        .I1(rst),
        .O(\dout[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[31]_i_2 
       (.I0(\mem_reg[1][31]_P_n_0 ),
        .I1(\mem_reg[0][31]_P_n_0 ),
        .I2(\mem_reg[3][31]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][31]_P_n_0 ),
        .O(\dout[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[3]_i_1 
       (.I0(\mem_reg[1][3]_P_n_0 ),
        .I1(\mem_reg[0][3]_P_n_0 ),
        .I2(\mem_reg[3][3]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][3]_P_n_0 ),
        .O(\dout[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[4]_i_1 
       (.I0(\mem_reg[1][4]_P_n_0 ),
        .I1(\mem_reg[0][4]_P_n_0 ),
        .I2(\mem_reg[3][4]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][4]_P_n_0 ),
        .O(\dout[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[5]_i_1 
       (.I0(\mem_reg[1][5]_P_n_0 ),
        .I1(\mem_reg[0][5]_P_n_0 ),
        .I2(\mem_reg[3][5]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][5]_P_n_0 ),
        .O(\dout[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[6]_i_1 
       (.I0(\mem_reg[1][6]_P_n_0 ),
        .I1(\mem_reg[0][6]_P_n_0 ),
        .I2(\mem_reg[3][6]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][6]_P_n_0 ),
        .O(\dout[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[7]_i_1 
       (.I0(\mem_reg[1][7]_P_n_0 ),
        .I1(\mem_reg[0][7]_P_n_0 ),
        .I2(\mem_reg[3][7]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][7]_P_n_0 ),
        .O(\dout[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[8]_i_1 
       (.I0(\mem_reg[1][8]_P_n_0 ),
        .I1(\mem_reg[0][8]_P_n_0 ),
        .I2(\mem_reg[3][8]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][8]_P_n_0 ),
        .O(\dout[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dout[9]_i_1 
       (.I0(\mem_reg[1][9]_P_n_0 ),
        .I1(\mem_reg[0][9]_P_n_0 ),
        .I2(\mem_reg[3][9]_P_n_0 ),
        .I3(rd_ptr[1]),
        .I4(rd_ptr[0]),
        .I5(\mem_reg[2][9]_P_n_0 ),
        .O(\dout[9]_i_1_n_0 ));
  FDRE \dout_reg[0] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[0]_i_1_n_0 ),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[10]_i_1_n_0 ),
        .Q(dout[10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[11]_i_1_n_0 ),
        .Q(dout[11]),
        .R(1'b0));
  FDRE \dout_reg[12] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[12]_i_1_n_0 ),
        .Q(dout[12]),
        .R(1'b0));
  FDRE \dout_reg[13] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[13]_i_1_n_0 ),
        .Q(dout[13]),
        .R(1'b0));
  FDRE \dout_reg[14] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[14]_i_1_n_0 ),
        .Q(dout[14]),
        .R(1'b0));
  FDRE \dout_reg[15] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[15]_i_1_n_0 ),
        .Q(dout[15]),
        .R(1'b0));
  FDRE \dout_reg[16] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[16]_i_1_n_0 ),
        .Q(dout[16]),
        .R(1'b0));
  FDRE \dout_reg[17] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[17]_i_1_n_0 ),
        .Q(dout[17]),
        .R(1'b0));
  FDRE \dout_reg[18] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[18]_i_1_n_0 ),
        .Q(dout[18]),
        .R(1'b0));
  FDRE \dout_reg[19] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[19]_i_1_n_0 ),
        .Q(dout[19]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[1]_i_1_n_0 ),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[20] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[20]_i_1_n_0 ),
        .Q(dout[20]),
        .R(1'b0));
  FDRE \dout_reg[21] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[21]_i_1_n_0 ),
        .Q(dout[21]),
        .R(1'b0));
  FDRE \dout_reg[22] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[22]_i_1_n_0 ),
        .Q(dout[22]),
        .R(1'b0));
  FDRE \dout_reg[23] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[23]_i_1_n_0 ),
        .Q(dout[23]),
        .R(1'b0));
  FDRE \dout_reg[24] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[24]_i_1_n_0 ),
        .Q(dout[24]),
        .R(1'b0));
  FDRE \dout_reg[25] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[25]_i_1_n_0 ),
        .Q(dout[25]),
        .R(1'b0));
  FDRE \dout_reg[26] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[26]_i_1_n_0 ),
        .Q(dout[26]),
        .R(1'b0));
  FDRE \dout_reg[27] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[27]_i_1_n_0 ),
        .Q(dout[27]),
        .R(1'b0));
  FDRE \dout_reg[28] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[28]_i_1_n_0 ),
        .Q(dout[28]),
        .R(1'b0));
  FDRE \dout_reg[29] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[29]_i_1_n_0 ),
        .Q(dout[29]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[2]_i_1_n_0 ),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[30] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[30]_i_1_n_0 ),
        .Q(dout[30]),
        .R(1'b0));
  FDRE \dout_reg[31] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[31]_i_2_n_0 ),
        .Q(dout[31]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[3]_i_1_n_0 ),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[4]_i_1_n_0 ),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[5]_i_1_n_0 ),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[6]_i_1_n_0 ),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[7]_i_1_n_0 ),
        .Q(dout[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[8]_i_1_n_0 ),
        .Q(dout[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\dout[9]_i_1_n_0 ),
        .Q(dout[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    empty_INST_0
       (.I0(fifo_data_count_reg[2]),
        .I1(fifo_data_count_reg[0]),
        .I2(fifo_data_count_reg[1]),
        .I3(fifo_data_count_reg[3]),
        .O(empty));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_data_count[0]_i_1 
       (.I0(fifo_data_count_reg[0]),
        .O(state1[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_data_count[1]_i_1 
       (.I0(fifo_data_count_reg[1]),
        .I1(fifo_data_count_reg[0]),
        .O(state1[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \fifo_data_count[2]_i_1 
       (.I0(fifo_data_count_reg[2]),
        .I1(fifo_data_count_reg[1]),
        .I2(fifo_data_count_reg[0]),
        .O(state1[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \fifo_data_count[3]_i_1 
       (.I0(fifo_data_count_reg[3]),
        .I1(fifo_data_count_reg[1]),
        .I2(fifo_data_count_reg[0]),
        .I3(fifo_data_count_reg[2]),
        .O(state1[3]));
  FDCE \fifo_data_count_reg[0] 
       (.C(clk),
        .CE(\wr_ptr[1]_i_1_n_0 ),
        .CLR(rst),
        .D(state1[0]),
        .Q(fifo_data_count_reg[0]));
  FDCE \fifo_data_count_reg[1] 
       (.C(clk),
        .CE(\wr_ptr[1]_i_1_n_0 ),
        .CLR(rst),
        .D(state1[1]),
        .Q(fifo_data_count_reg[1]));
  FDCE \fifo_data_count_reg[2] 
       (.C(clk),
        .CE(\wr_ptr[1]_i_1_n_0 ),
        .CLR(rst),
        .D(state1[2]),
        .Q(fifo_data_count_reg[2]));
  FDCE \fifo_data_count_reg[3] 
       (.C(clk),
        .CE(\wr_ptr[1]_i_1_n_0 ),
        .CLR(rst),
        .D(state1[3]),
        .Q(fifo_data_count_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    full_INST_0
       (.I0(fifo_data_count_reg[2]),
        .I1(fifo_data_count_reg[0]),
        .I2(fifo_data_count_reg[1]),
        .I3(fifo_data_count_reg[3]),
        .O(full));
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem[0][31]_P_i_1 
       (.I0(rst),
        .I1(\wr_ptr_reg_n_0_[0] ),
        .I2(\wr_ptr[1]_i_3_n_0 ),
        .I3(FSM_sequential_state_reg_n_0),
        .I4(\wr_ptr_reg_n_0_[1] ),
        .O(\mem[0][31]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[1][31]_P_i_1 
       (.I0(rst),
        .I1(\wr_ptr_reg_n_0_[0] ),
        .I2(\wr_ptr[1]_i_3_n_0 ),
        .I3(FSM_sequential_state_reg_n_0),
        .I4(\wr_ptr_reg_n_0_[1] ),
        .O(\mem[1][31]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \mem[2][31]_P_i_1 
       (.I0(rst),
        .I1(\wr_ptr_reg_n_0_[0] ),
        .I2(\wr_ptr[1]_i_3_n_0 ),
        .I3(FSM_sequential_state_reg_n_0),
        .I4(\wr_ptr_reg_n_0_[1] ),
        .O(\mem[2][31]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \mem[3][31]_P_i_1 
       (.I0(rst),
        .I1(\wr_ptr_reg_n_0_[0] ),
        .I2(\wr_ptr[1]_i_3_n_0 ),
        .I3(FSM_sequential_state_reg_n_0),
        .I4(\wr_ptr_reg_n_0_[1] ),
        .O(\mem[3][31]_P_i_1_n_0 ));
  FDRE \mem_reg[0][0]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[0]),
        .Q(\mem_reg[0][0]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][10]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[10]),
        .Q(\mem_reg[0][10]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][11]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[11]),
        .Q(\mem_reg[0][11]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][12]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[12]),
        .Q(\mem_reg[0][12]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][13]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[13]),
        .Q(\mem_reg[0][13]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][14]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[14]),
        .Q(\mem_reg[0][14]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][15]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[15]),
        .Q(\mem_reg[0][15]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][16]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[16]),
        .Q(\mem_reg[0][16]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][17]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[17]),
        .Q(\mem_reg[0][17]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][18]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[18]),
        .Q(\mem_reg[0][18]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][19]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[19]),
        .Q(\mem_reg[0][19]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][1]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[1]),
        .Q(\mem_reg[0][1]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][20]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[20]),
        .Q(\mem_reg[0][20]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][21]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[21]),
        .Q(\mem_reg[0][21]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][22]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[22]),
        .Q(\mem_reg[0][22]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][23]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[23]),
        .Q(\mem_reg[0][23]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][24]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[24]),
        .Q(\mem_reg[0][24]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][25]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[25]),
        .Q(\mem_reg[0][25]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][26]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[26]),
        .Q(\mem_reg[0][26]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][27]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[27]),
        .Q(\mem_reg[0][27]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][28]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[28]),
        .Q(\mem_reg[0][28]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][29]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[29]),
        .Q(\mem_reg[0][29]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][2]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[2]),
        .Q(\mem_reg[0][2]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][30]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[30]),
        .Q(\mem_reg[0][30]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][31]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[31]),
        .Q(\mem_reg[0][31]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][3]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[3]),
        .Q(\mem_reg[0][3]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][4]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[4]),
        .Q(\mem_reg[0][4]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][5]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[5]),
        .Q(\mem_reg[0][5]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][6]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[6]),
        .Q(\mem_reg[0][6]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][7]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[7]),
        .Q(\mem_reg[0][7]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][8]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[8]),
        .Q(\mem_reg[0][8]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[0][9]_P 
       (.C(clk),
        .CE(\mem[0][31]_P_i_1_n_0 ),
        .D(din[9]),
        .Q(\mem_reg[0][9]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][0]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[0]),
        .Q(\mem_reg[1][0]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][10]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[10]),
        .Q(\mem_reg[1][10]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][11]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[11]),
        .Q(\mem_reg[1][11]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][12]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[12]),
        .Q(\mem_reg[1][12]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][13]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[13]),
        .Q(\mem_reg[1][13]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][14]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[14]),
        .Q(\mem_reg[1][14]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][15]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[15]),
        .Q(\mem_reg[1][15]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][16]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[16]),
        .Q(\mem_reg[1][16]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][17]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[17]),
        .Q(\mem_reg[1][17]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][18]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[18]),
        .Q(\mem_reg[1][18]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][19]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[19]),
        .Q(\mem_reg[1][19]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][1]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[1]),
        .Q(\mem_reg[1][1]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][20]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[20]),
        .Q(\mem_reg[1][20]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][21]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[21]),
        .Q(\mem_reg[1][21]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][22]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[22]),
        .Q(\mem_reg[1][22]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][23]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[23]),
        .Q(\mem_reg[1][23]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][24]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[24]),
        .Q(\mem_reg[1][24]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][25]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[25]),
        .Q(\mem_reg[1][25]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][26]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[26]),
        .Q(\mem_reg[1][26]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][27]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[27]),
        .Q(\mem_reg[1][27]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][28]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[28]),
        .Q(\mem_reg[1][28]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][29]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[29]),
        .Q(\mem_reg[1][29]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][2]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[2]),
        .Q(\mem_reg[1][2]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][30]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[30]),
        .Q(\mem_reg[1][30]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][31]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[31]),
        .Q(\mem_reg[1][31]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][3]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[3]),
        .Q(\mem_reg[1][3]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][4]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[4]),
        .Q(\mem_reg[1][4]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][5]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[5]),
        .Q(\mem_reg[1][5]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][6]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[6]),
        .Q(\mem_reg[1][6]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][7]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[7]),
        .Q(\mem_reg[1][7]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][8]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[8]),
        .Q(\mem_reg[1][8]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[1][9]_P 
       (.C(clk),
        .CE(\mem[1][31]_P_i_1_n_0 ),
        .D(din[9]),
        .Q(\mem_reg[1][9]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][0]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[0]),
        .Q(\mem_reg[2][0]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][10]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[10]),
        .Q(\mem_reg[2][10]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][11]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[11]),
        .Q(\mem_reg[2][11]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][12]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[12]),
        .Q(\mem_reg[2][12]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][13]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[13]),
        .Q(\mem_reg[2][13]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][14]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[14]),
        .Q(\mem_reg[2][14]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][15]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[15]),
        .Q(\mem_reg[2][15]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][16]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[16]),
        .Q(\mem_reg[2][16]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][17]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[17]),
        .Q(\mem_reg[2][17]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][18]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[18]),
        .Q(\mem_reg[2][18]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][19]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[19]),
        .Q(\mem_reg[2][19]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][1]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[1]),
        .Q(\mem_reg[2][1]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][20]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[20]),
        .Q(\mem_reg[2][20]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][21]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[21]),
        .Q(\mem_reg[2][21]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][22]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[22]),
        .Q(\mem_reg[2][22]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][23]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[23]),
        .Q(\mem_reg[2][23]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][24]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[24]),
        .Q(\mem_reg[2][24]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][25]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[25]),
        .Q(\mem_reg[2][25]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][26]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[26]),
        .Q(\mem_reg[2][26]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][27]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[27]),
        .Q(\mem_reg[2][27]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][28]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[28]),
        .Q(\mem_reg[2][28]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][29]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[29]),
        .Q(\mem_reg[2][29]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][2]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[2]),
        .Q(\mem_reg[2][2]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][30]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[30]),
        .Q(\mem_reg[2][30]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][31]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[31]),
        .Q(\mem_reg[2][31]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][3]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[3]),
        .Q(\mem_reg[2][3]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][4]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[4]),
        .Q(\mem_reg[2][4]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][5]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[5]),
        .Q(\mem_reg[2][5]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][6]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[6]),
        .Q(\mem_reg[2][6]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][7]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[7]),
        .Q(\mem_reg[2][7]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][8]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[8]),
        .Q(\mem_reg[2][8]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[2][9]_P 
       (.C(clk),
        .CE(\mem[2][31]_P_i_1_n_0 ),
        .D(din[9]),
        .Q(\mem_reg[2][9]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][0]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[0]),
        .Q(\mem_reg[3][0]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][10]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[10]),
        .Q(\mem_reg[3][10]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][11]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[11]),
        .Q(\mem_reg[3][11]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][12]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[12]),
        .Q(\mem_reg[3][12]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][13]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[13]),
        .Q(\mem_reg[3][13]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][14]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[14]),
        .Q(\mem_reg[3][14]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][15]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[15]),
        .Q(\mem_reg[3][15]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][16]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[16]),
        .Q(\mem_reg[3][16]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][17]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[17]),
        .Q(\mem_reg[3][17]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][18]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[18]),
        .Q(\mem_reg[3][18]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][19]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[19]),
        .Q(\mem_reg[3][19]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][1]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[1]),
        .Q(\mem_reg[3][1]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][20]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[20]),
        .Q(\mem_reg[3][20]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][21]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[21]),
        .Q(\mem_reg[3][21]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][22]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[22]),
        .Q(\mem_reg[3][22]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][23]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[23]),
        .Q(\mem_reg[3][23]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][24]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[24]),
        .Q(\mem_reg[3][24]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][25]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[25]),
        .Q(\mem_reg[3][25]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][26]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[26]),
        .Q(\mem_reg[3][26]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][27]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[27]),
        .Q(\mem_reg[3][27]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][28]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[28]),
        .Q(\mem_reg[3][28]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][29]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[29]),
        .Q(\mem_reg[3][29]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][2]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[2]),
        .Q(\mem_reg[3][2]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][30]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[30]),
        .Q(\mem_reg[3][30]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][31]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[31]),
        .Q(\mem_reg[3][31]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][3]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[3]),
        .Q(\mem_reg[3][3]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][4]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[4]),
        .Q(\mem_reg[3][4]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][5]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[5]),
        .Q(\mem_reg[3][5]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][6]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[6]),
        .Q(\mem_reg[3][6]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][7]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[7]),
        .Q(\mem_reg[3][7]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][8]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[8]),
        .Q(\mem_reg[3][8]_P_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[3][9]_P 
       (.C(clk),
        .CE(\mem[3][31]_P_i_1_n_0 ),
        .D(din[9]),
        .Q(\mem_reg[3][9]_P_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_ptr[0]_i_1 
       (.I0(FSM_sequential_state_reg_n_0),
        .I1(data_ready_reg_0),
        .I2(rd_en),
        .I3(rd_ptr[0]),
        .O(\rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr[0]),
        .I1(rd_en),
        .I2(data_ready_reg_0),
        .I3(FSM_sequential_state_reg_n_0),
        .I4(rd_ptr[1]),
        .O(\rd_ptr[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(rd_ptr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\rd_ptr[1]_i_1_n_0 ),
        .Q(rd_ptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(\wr_ptr_reg_n_0_[0] ),
        .O(wr_ptr0[0]));
  LUT3 #(
    .INIT(8'h04)) 
    \wr_ptr[1]_i_1 
       (.I0(FSM_sequential_state_reg_n_0),
        .I1(\wr_ptr[1]_i_3_n_0 ),
        .I2(rst),
        .O(\wr_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_2 
       (.I0(\wr_ptr_reg_n_0_[1] ),
        .I1(\wr_ptr_reg_n_0_[0] ),
        .O(wr_ptr0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEFF0000)) 
    \wr_ptr[1]_i_3 
       (.I0(fifo_data_count_reg[3]),
        .I1(fifo_data_count_reg[0]),
        .I2(fifo_data_count_reg[1]),
        .I3(fifo_data_count_reg[2]),
        .I4(wr_en),
        .O(\wr_ptr[1]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[0] 
       (.C(clk),
        .CE(\wr_ptr[1]_i_1_n_0 ),
        .CLR(rst),
        .D(wr_ptr0[0]),
        .Q(\wr_ptr_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[1] 
       (.C(clk),
        .CE(\wr_ptr[1]_i_1_n_0 ),
        .CLR(rst),
        .D(wr_ptr0[1]),
        .Q(\wr_ptr_reg_n_0_[1] ));
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
