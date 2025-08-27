-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Aug 15 18:25:57 2025
-- Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo_in_1_0_sim_netlist.vhdl
-- Design      : design_1_fifo_in_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_in is
  port (
    data_ready_reg_0 : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_in;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_in is
  signal FSM_sequential_state_i_1_n_0 : STD_LOGIC;
  signal FSM_sequential_state_reg_n_0 : STD_LOGIC;
  signal data_ready_i_1_n_0 : STD_LOGIC;
  signal data_ready_i_2_n_0 : STD_LOGIC;
  signal data_ready_i_3_n_0 : STD_LOGIC;
  signal \^data_ready_reg_0\ : STD_LOGIC;
  signal \dout[0]_i_1_n_0\ : STD_LOGIC;
  signal \dout[10]_i_1_n_0\ : STD_LOGIC;
  signal \dout[11]_i_1_n_0\ : STD_LOGIC;
  signal \dout[12]_i_1_n_0\ : STD_LOGIC;
  signal \dout[13]_i_1_n_0\ : STD_LOGIC;
  signal \dout[14]_i_1_n_0\ : STD_LOGIC;
  signal \dout[15]_i_1_n_0\ : STD_LOGIC;
  signal \dout[16]_i_1_n_0\ : STD_LOGIC;
  signal \dout[17]_i_1_n_0\ : STD_LOGIC;
  signal \dout[18]_i_1_n_0\ : STD_LOGIC;
  signal \dout[19]_i_1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1_n_0\ : STD_LOGIC;
  signal \dout[20]_i_1_n_0\ : STD_LOGIC;
  signal \dout[21]_i_1_n_0\ : STD_LOGIC;
  signal \dout[22]_i_1_n_0\ : STD_LOGIC;
  signal \dout[23]_i_1_n_0\ : STD_LOGIC;
  signal \dout[24]_i_1_n_0\ : STD_LOGIC;
  signal \dout[25]_i_1_n_0\ : STD_LOGIC;
  signal \dout[26]_i_1_n_0\ : STD_LOGIC;
  signal \dout[27]_i_1_n_0\ : STD_LOGIC;
  signal \dout[28]_i_1_n_0\ : STD_LOGIC;
  signal \dout[29]_i_1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1_n_0\ : STD_LOGIC;
  signal \dout[30]_i_1_n_0\ : STD_LOGIC;
  signal \dout[31]_i_1_n_0\ : STD_LOGIC;
  signal \dout[31]_i_2_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1_n_0\ : STD_LOGIC;
  signal \dout[6]_i_1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1_n_0\ : STD_LOGIC;
  signal \dout[8]_i_1_n_0\ : STD_LOGIC;
  signal \dout[9]_i_1_n_0\ : STD_LOGIC;
  signal fifo_data_count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[0][31]_P_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][31]_P_i_1_n_0\ : STD_LOGIC;
  signal \mem[2][31]_P_i_1_n_0\ : STD_LOGIC;
  signal \mem[3][31]_P_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[0][0]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][10]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][11]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][12]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][13]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][14]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][15]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][16]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][17]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][18]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][19]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][1]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][20]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][21]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][22]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][23]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][24]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][25]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][26]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][27]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][28]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][29]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][2]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][30]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][31]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][3]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][4]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][5]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][6]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][7]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][8]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[0][9]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][0]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][10]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][11]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][12]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][13]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][14]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][15]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][16]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][17]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][18]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][19]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][1]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][20]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][21]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][22]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][23]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][24]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][25]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][26]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][27]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][28]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][29]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][2]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][30]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][31]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][3]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][4]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][5]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][6]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][7]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][8]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[1][9]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][0]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][10]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][11]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][12]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][13]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][14]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][15]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][16]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][17]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][18]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][19]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][1]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][20]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][21]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][22]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][23]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][24]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][25]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][26]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][27]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][28]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][29]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][2]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][30]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][31]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][3]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][4]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][5]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][6]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][7]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][8]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[2][9]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][0]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][10]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][11]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][12]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][13]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][14]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][15]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][16]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][17]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][18]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][19]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][1]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][20]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][21]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][22]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][23]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][24]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][25]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][26]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][27]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][28]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][29]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][2]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][30]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][31]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][3]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][4]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][5]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][6]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][7]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][8]_P_n_0\ : STD_LOGIC;
  signal \mem_reg[3][9]_P_n_0\ : STD_LOGIC;
  signal rd_ptr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rd_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal state1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_ptr0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wr_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr[1]_i_3_n_0\ : STD_LOGIC;
  signal \wr_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_reg_n_0_[1]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_state_reg : label is "IDLE:0,READ:1,WAIT:10,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_ready_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of data_ready_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of empty_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fifo_data_count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fifo_data_count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fifo_data_count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of full_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rd_ptr[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rd_ptr[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_ptr[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_ptr[1]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_ptr[1]_i_3\ : label is "soft_lutpair1";
begin
  data_ready_reg_0 <= \^data_ready_reg_0\;
FSM_sequential_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FE80000"
    )
        port map (
      I0 => fifo_data_count_reg(1),
      I1 => fifo_data_count_reg(0),
      I2 => fifo_data_count_reg(2),
      I3 => fifo_data_count_reg(3),
      I4 => wr_en,
      I5 => FSM_sequential_state_reg_n_0,
      O => FSM_sequential_state_i_1_n_0
    );
FSM_sequential_state_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => FSM_sequential_state_i_1_n_0,
      Q => FSM_sequential_state_reg_n_0
    );
data_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FBA8ABA8"
    )
        port map (
      I0 => data_ready_i_2_n_0,
      I1 => data_ready_i_3_n_0,
      I2 => FSM_sequential_state_reg_n_0,
      I3 => \^data_ready_reg_0\,
      I4 => rd_en,
      I5 => rst,
      O => data_ready_i_1_n_0
    );
data_ready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FEA"
    )
        port map (
      I0 => fifo_data_count_reg(2),
      I1 => fifo_data_count_reg(0),
      I2 => fifo_data_count_reg(1),
      I3 => fifo_data_count_reg(3),
      I4 => FSM_sequential_state_reg_n_0,
      O => data_ready_i_2_n_0
    );
data_ready_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FE80000"
    )
        port map (
      I0 => fifo_data_count_reg(1),
      I1 => fifo_data_count_reg(0),
      I2 => fifo_data_count_reg(2),
      I3 => fifo_data_count_reg(3),
      I4 => wr_en,
      O => data_ready_i_3_n_0
    );
data_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_ready_i_1_n_0,
      Q => \^data_ready_reg_0\,
      R => '0'
    );
\dout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][0]_P_n_0\,
      I1 => \mem_reg[0][0]_P_n_0\,
      I2 => \mem_reg[3][0]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][0]_P_n_0\,
      O => \dout[0]_i_1_n_0\
    );
\dout[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][10]_P_n_0\,
      I1 => \mem_reg[0][10]_P_n_0\,
      I2 => \mem_reg[3][10]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][10]_P_n_0\,
      O => \dout[10]_i_1_n_0\
    );
\dout[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][11]_P_n_0\,
      I1 => \mem_reg[0][11]_P_n_0\,
      I2 => \mem_reg[3][11]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][11]_P_n_0\,
      O => \dout[11]_i_1_n_0\
    );
\dout[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][12]_P_n_0\,
      I1 => \mem_reg[0][12]_P_n_0\,
      I2 => \mem_reg[3][12]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][12]_P_n_0\,
      O => \dout[12]_i_1_n_0\
    );
\dout[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][13]_P_n_0\,
      I1 => \mem_reg[0][13]_P_n_0\,
      I2 => \mem_reg[3][13]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][13]_P_n_0\,
      O => \dout[13]_i_1_n_0\
    );
\dout[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][14]_P_n_0\,
      I1 => \mem_reg[0][14]_P_n_0\,
      I2 => \mem_reg[3][14]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][14]_P_n_0\,
      O => \dout[14]_i_1_n_0\
    );
\dout[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][15]_P_n_0\,
      I1 => \mem_reg[0][15]_P_n_0\,
      I2 => \mem_reg[3][15]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][15]_P_n_0\,
      O => \dout[15]_i_1_n_0\
    );
\dout[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][16]_P_n_0\,
      I1 => \mem_reg[0][16]_P_n_0\,
      I2 => \mem_reg[3][16]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][16]_P_n_0\,
      O => \dout[16]_i_1_n_0\
    );
\dout[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][17]_P_n_0\,
      I1 => \mem_reg[0][17]_P_n_0\,
      I2 => \mem_reg[3][17]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][17]_P_n_0\,
      O => \dout[17]_i_1_n_0\
    );
\dout[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][18]_P_n_0\,
      I1 => \mem_reg[0][18]_P_n_0\,
      I2 => \mem_reg[3][18]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][18]_P_n_0\,
      O => \dout[18]_i_1_n_0\
    );
\dout[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][19]_P_n_0\,
      I1 => \mem_reg[0][19]_P_n_0\,
      I2 => \mem_reg[3][19]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][19]_P_n_0\,
      O => \dout[19]_i_1_n_0\
    );
\dout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][1]_P_n_0\,
      I1 => \mem_reg[0][1]_P_n_0\,
      I2 => \mem_reg[3][1]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][1]_P_n_0\,
      O => \dout[1]_i_1_n_0\
    );
\dout[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][20]_P_n_0\,
      I1 => \mem_reg[0][20]_P_n_0\,
      I2 => \mem_reg[3][20]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][20]_P_n_0\,
      O => \dout[20]_i_1_n_0\
    );
\dout[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][21]_P_n_0\,
      I1 => \mem_reg[0][21]_P_n_0\,
      I2 => \mem_reg[3][21]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][21]_P_n_0\,
      O => \dout[21]_i_1_n_0\
    );
\dout[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][22]_P_n_0\,
      I1 => \mem_reg[0][22]_P_n_0\,
      I2 => \mem_reg[3][22]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][22]_P_n_0\,
      O => \dout[22]_i_1_n_0\
    );
\dout[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][23]_P_n_0\,
      I1 => \mem_reg[0][23]_P_n_0\,
      I2 => \mem_reg[3][23]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][23]_P_n_0\,
      O => \dout[23]_i_1_n_0\
    );
\dout[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][24]_P_n_0\,
      I1 => \mem_reg[0][24]_P_n_0\,
      I2 => \mem_reg[3][24]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][24]_P_n_0\,
      O => \dout[24]_i_1_n_0\
    );
\dout[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][25]_P_n_0\,
      I1 => \mem_reg[0][25]_P_n_0\,
      I2 => \mem_reg[3][25]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][25]_P_n_0\,
      O => \dout[25]_i_1_n_0\
    );
\dout[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][26]_P_n_0\,
      I1 => \mem_reg[0][26]_P_n_0\,
      I2 => \mem_reg[3][26]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][26]_P_n_0\,
      O => \dout[26]_i_1_n_0\
    );
\dout[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][27]_P_n_0\,
      I1 => \mem_reg[0][27]_P_n_0\,
      I2 => \mem_reg[3][27]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][27]_P_n_0\,
      O => \dout[27]_i_1_n_0\
    );
\dout[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][28]_P_n_0\,
      I1 => \mem_reg[0][28]_P_n_0\,
      I2 => \mem_reg[3][28]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][28]_P_n_0\,
      O => \dout[28]_i_1_n_0\
    );
\dout[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][29]_P_n_0\,
      I1 => \mem_reg[0][29]_P_n_0\,
      I2 => \mem_reg[3][29]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][29]_P_n_0\,
      O => \dout[29]_i_1_n_0\
    );
\dout[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][2]_P_n_0\,
      I1 => \mem_reg[0][2]_P_n_0\,
      I2 => \mem_reg[3][2]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][2]_P_n_0\,
      O => \dout[2]_i_1_n_0\
    );
\dout[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][30]_P_n_0\,
      I1 => \mem_reg[0][30]_P_n_0\,
      I2 => \mem_reg[3][30]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][30]_P_n_0\,
      O => \dout[30]_i_1_n_0\
    );
\dout[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => FSM_sequential_state_reg_n_0,
      I1 => rst,
      O => \dout[31]_i_1_n_0\
    );
\dout[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][31]_P_n_0\,
      I1 => \mem_reg[0][31]_P_n_0\,
      I2 => \mem_reg[3][31]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][31]_P_n_0\,
      O => \dout[31]_i_2_n_0\
    );
\dout[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][3]_P_n_0\,
      I1 => \mem_reg[0][3]_P_n_0\,
      I2 => \mem_reg[3][3]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][3]_P_n_0\,
      O => \dout[3]_i_1_n_0\
    );
\dout[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][4]_P_n_0\,
      I1 => \mem_reg[0][4]_P_n_0\,
      I2 => \mem_reg[3][4]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][4]_P_n_0\,
      O => \dout[4]_i_1_n_0\
    );
\dout[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][5]_P_n_0\,
      I1 => \mem_reg[0][5]_P_n_0\,
      I2 => \mem_reg[3][5]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][5]_P_n_0\,
      O => \dout[5]_i_1_n_0\
    );
\dout[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][6]_P_n_0\,
      I1 => \mem_reg[0][6]_P_n_0\,
      I2 => \mem_reg[3][6]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][6]_P_n_0\,
      O => \dout[6]_i_1_n_0\
    );
\dout[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][7]_P_n_0\,
      I1 => \mem_reg[0][7]_P_n_0\,
      I2 => \mem_reg[3][7]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][7]_P_n_0\,
      O => \dout[7]_i_1_n_0\
    );
\dout[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][8]_P_n_0\,
      I1 => \mem_reg[0][8]_P_n_0\,
      I2 => \mem_reg[3][8]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][8]_P_n_0\,
      O => \dout[8]_i_1_n_0\
    );
\dout[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1][9]_P_n_0\,
      I1 => \mem_reg[0][9]_P_n_0\,
      I2 => \mem_reg[3][9]_P_n_0\,
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2][9]_P_n_0\,
      O => \dout[9]_i_1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[0]_i_1_n_0\,
      Q => dout(0),
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[10]_i_1_n_0\,
      Q => dout(10),
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[11]_i_1_n_0\,
      Q => dout(11),
      R => '0'
    );
\dout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[12]_i_1_n_0\,
      Q => dout(12),
      R => '0'
    );
\dout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[13]_i_1_n_0\,
      Q => dout(13),
      R => '0'
    );
\dout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[14]_i_1_n_0\,
      Q => dout(14),
      R => '0'
    );
\dout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[15]_i_1_n_0\,
      Q => dout(15),
      R => '0'
    );
\dout_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[16]_i_1_n_0\,
      Q => dout(16),
      R => '0'
    );
\dout_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[17]_i_1_n_0\,
      Q => dout(17),
      R => '0'
    );
\dout_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[18]_i_1_n_0\,
      Q => dout(18),
      R => '0'
    );
\dout_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[19]_i_1_n_0\,
      Q => dout(19),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[1]_i_1_n_0\,
      Q => dout(1),
      R => '0'
    );
\dout_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[20]_i_1_n_0\,
      Q => dout(20),
      R => '0'
    );
\dout_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[21]_i_1_n_0\,
      Q => dout(21),
      R => '0'
    );
\dout_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[22]_i_1_n_0\,
      Q => dout(22),
      R => '0'
    );
\dout_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[23]_i_1_n_0\,
      Q => dout(23),
      R => '0'
    );
\dout_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[24]_i_1_n_0\,
      Q => dout(24),
      R => '0'
    );
\dout_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[25]_i_1_n_0\,
      Q => dout(25),
      R => '0'
    );
\dout_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[26]_i_1_n_0\,
      Q => dout(26),
      R => '0'
    );
\dout_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[27]_i_1_n_0\,
      Q => dout(27),
      R => '0'
    );
\dout_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[28]_i_1_n_0\,
      Q => dout(28),
      R => '0'
    );
\dout_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[29]_i_1_n_0\,
      Q => dout(29),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[2]_i_1_n_0\,
      Q => dout(2),
      R => '0'
    );
\dout_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[30]_i_1_n_0\,
      Q => dout(30),
      R => '0'
    );
\dout_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[31]_i_2_n_0\,
      Q => dout(31),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[3]_i_1_n_0\,
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[4]_i_1_n_0\,
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[5]_i_1_n_0\,
      Q => dout(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[6]_i_1_n_0\,
      Q => dout(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[7]_i_1_n_0\,
      Q => dout(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[8]_i_1_n_0\,
      Q => dout(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \dout[9]_i_1_n_0\,
      Q => dout(9),
      R => '0'
    );
empty_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => fifo_data_count_reg(2),
      I1 => fifo_data_count_reg(0),
      I2 => fifo_data_count_reg(1),
      I3 => fifo_data_count_reg(3),
      O => empty
    );
\fifo_data_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_data_count_reg(0),
      O => state1(0)
    );
\fifo_data_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fifo_data_count_reg(1),
      I1 => fifo_data_count_reg(0),
      O => state1(1)
    );
\fifo_data_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => fifo_data_count_reg(2),
      I1 => fifo_data_count_reg(1),
      I2 => fifo_data_count_reg(0),
      O => state1(2)
    );
\fifo_data_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => fifo_data_count_reg(3),
      I1 => fifo_data_count_reg(1),
      I2 => fifo_data_count_reg(0),
      I3 => fifo_data_count_reg(2),
      O => state1(3)
    );
\fifo_data_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wr_ptr[1]_i_1_n_0\,
      CLR => rst,
      D => state1(0),
      Q => fifo_data_count_reg(0)
    );
\fifo_data_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wr_ptr[1]_i_1_n_0\,
      CLR => rst,
      D => state1(1),
      Q => fifo_data_count_reg(1)
    );
\fifo_data_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wr_ptr[1]_i_1_n_0\,
      CLR => rst,
      D => state1(2),
      Q => fifo_data_count_reg(2)
    );
\fifo_data_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wr_ptr[1]_i_1_n_0\,
      CLR => rst,
      D => state1(3),
      Q => fifo_data_count_reg(3)
    );
full_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => fifo_data_count_reg(2),
      I1 => fifo_data_count_reg(0),
      I2 => fifo_data_count_reg(1),
      I3 => fifo_data_count_reg(3),
      O => full
    );
\mem[0][31]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => rst,
      I1 => \wr_ptr_reg_n_0_[0]\,
      I2 => \wr_ptr[1]_i_3_n_0\,
      I3 => FSM_sequential_state_reg_n_0,
      I4 => \wr_ptr_reg_n_0_[1]\,
      O => \mem[0][31]_P_i_1_n_0\
    );
\mem[1][31]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => rst,
      I1 => \wr_ptr_reg_n_0_[0]\,
      I2 => \wr_ptr[1]_i_3_n_0\,
      I3 => FSM_sequential_state_reg_n_0,
      I4 => \wr_ptr_reg_n_0_[1]\,
      O => \mem[1][31]_P_i_1_n_0\
    );
\mem[2][31]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => rst,
      I1 => \wr_ptr_reg_n_0_[0]\,
      I2 => \wr_ptr[1]_i_3_n_0\,
      I3 => FSM_sequential_state_reg_n_0,
      I4 => \wr_ptr_reg_n_0_[1]\,
      O => \mem[2][31]_P_i_1_n_0\
    );
\mem[3][31]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rst,
      I1 => \wr_ptr_reg_n_0_[0]\,
      I2 => \wr_ptr[1]_i_3_n_0\,
      I3 => FSM_sequential_state_reg_n_0,
      I4 => \wr_ptr_reg_n_0_[1]\,
      O => \mem[3][31]_P_i_1_n_0\
    );
\mem_reg[0][0]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(0),
      Q => \mem_reg[0][0]_P_n_0\,
      R => '0'
    );
\mem_reg[0][10]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(10),
      Q => \mem_reg[0][10]_P_n_0\,
      R => '0'
    );
\mem_reg[0][11]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(11),
      Q => \mem_reg[0][11]_P_n_0\,
      R => '0'
    );
\mem_reg[0][12]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(12),
      Q => \mem_reg[0][12]_P_n_0\,
      R => '0'
    );
\mem_reg[0][13]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(13),
      Q => \mem_reg[0][13]_P_n_0\,
      R => '0'
    );
\mem_reg[0][14]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(14),
      Q => \mem_reg[0][14]_P_n_0\,
      R => '0'
    );
\mem_reg[0][15]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(15),
      Q => \mem_reg[0][15]_P_n_0\,
      R => '0'
    );
\mem_reg[0][16]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(16),
      Q => \mem_reg[0][16]_P_n_0\,
      R => '0'
    );
\mem_reg[0][17]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(17),
      Q => \mem_reg[0][17]_P_n_0\,
      R => '0'
    );
\mem_reg[0][18]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(18),
      Q => \mem_reg[0][18]_P_n_0\,
      R => '0'
    );
\mem_reg[0][19]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(19),
      Q => \mem_reg[0][19]_P_n_0\,
      R => '0'
    );
\mem_reg[0][1]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(1),
      Q => \mem_reg[0][1]_P_n_0\,
      R => '0'
    );
\mem_reg[0][20]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(20),
      Q => \mem_reg[0][20]_P_n_0\,
      R => '0'
    );
\mem_reg[0][21]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(21),
      Q => \mem_reg[0][21]_P_n_0\,
      R => '0'
    );
\mem_reg[0][22]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(22),
      Q => \mem_reg[0][22]_P_n_0\,
      R => '0'
    );
\mem_reg[0][23]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(23),
      Q => \mem_reg[0][23]_P_n_0\,
      R => '0'
    );
\mem_reg[0][24]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(24),
      Q => \mem_reg[0][24]_P_n_0\,
      R => '0'
    );
\mem_reg[0][25]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(25),
      Q => \mem_reg[0][25]_P_n_0\,
      R => '0'
    );
\mem_reg[0][26]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(26),
      Q => \mem_reg[0][26]_P_n_0\,
      R => '0'
    );
\mem_reg[0][27]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(27),
      Q => \mem_reg[0][27]_P_n_0\,
      R => '0'
    );
\mem_reg[0][28]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(28),
      Q => \mem_reg[0][28]_P_n_0\,
      R => '0'
    );
\mem_reg[0][29]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(29),
      Q => \mem_reg[0][29]_P_n_0\,
      R => '0'
    );
\mem_reg[0][2]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(2),
      Q => \mem_reg[0][2]_P_n_0\,
      R => '0'
    );
\mem_reg[0][30]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(30),
      Q => \mem_reg[0][30]_P_n_0\,
      R => '0'
    );
\mem_reg[0][31]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(31),
      Q => \mem_reg[0][31]_P_n_0\,
      R => '0'
    );
\mem_reg[0][3]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(3),
      Q => \mem_reg[0][3]_P_n_0\,
      R => '0'
    );
\mem_reg[0][4]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(4),
      Q => \mem_reg[0][4]_P_n_0\,
      R => '0'
    );
\mem_reg[0][5]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(5),
      Q => \mem_reg[0][5]_P_n_0\,
      R => '0'
    );
\mem_reg[0][6]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(6),
      Q => \mem_reg[0][6]_P_n_0\,
      R => '0'
    );
\mem_reg[0][7]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(7),
      Q => \mem_reg[0][7]_P_n_0\,
      R => '0'
    );
\mem_reg[0][8]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(8),
      Q => \mem_reg[0][8]_P_n_0\,
      R => '0'
    );
\mem_reg[0][9]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_P_i_1_n_0\,
      D => din(9),
      Q => \mem_reg[0][9]_P_n_0\,
      R => '0'
    );
\mem_reg[1][0]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(0),
      Q => \mem_reg[1][0]_P_n_0\,
      R => '0'
    );
\mem_reg[1][10]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(10),
      Q => \mem_reg[1][10]_P_n_0\,
      R => '0'
    );
\mem_reg[1][11]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(11),
      Q => \mem_reg[1][11]_P_n_0\,
      R => '0'
    );
\mem_reg[1][12]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(12),
      Q => \mem_reg[1][12]_P_n_0\,
      R => '0'
    );
\mem_reg[1][13]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(13),
      Q => \mem_reg[1][13]_P_n_0\,
      R => '0'
    );
\mem_reg[1][14]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(14),
      Q => \mem_reg[1][14]_P_n_0\,
      R => '0'
    );
\mem_reg[1][15]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(15),
      Q => \mem_reg[1][15]_P_n_0\,
      R => '0'
    );
\mem_reg[1][16]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(16),
      Q => \mem_reg[1][16]_P_n_0\,
      R => '0'
    );
\mem_reg[1][17]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(17),
      Q => \mem_reg[1][17]_P_n_0\,
      R => '0'
    );
\mem_reg[1][18]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(18),
      Q => \mem_reg[1][18]_P_n_0\,
      R => '0'
    );
\mem_reg[1][19]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(19),
      Q => \mem_reg[1][19]_P_n_0\,
      R => '0'
    );
\mem_reg[1][1]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(1),
      Q => \mem_reg[1][1]_P_n_0\,
      R => '0'
    );
\mem_reg[1][20]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(20),
      Q => \mem_reg[1][20]_P_n_0\,
      R => '0'
    );
\mem_reg[1][21]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(21),
      Q => \mem_reg[1][21]_P_n_0\,
      R => '0'
    );
\mem_reg[1][22]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(22),
      Q => \mem_reg[1][22]_P_n_0\,
      R => '0'
    );
\mem_reg[1][23]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(23),
      Q => \mem_reg[1][23]_P_n_0\,
      R => '0'
    );
\mem_reg[1][24]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(24),
      Q => \mem_reg[1][24]_P_n_0\,
      R => '0'
    );
\mem_reg[1][25]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(25),
      Q => \mem_reg[1][25]_P_n_0\,
      R => '0'
    );
\mem_reg[1][26]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(26),
      Q => \mem_reg[1][26]_P_n_0\,
      R => '0'
    );
\mem_reg[1][27]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(27),
      Q => \mem_reg[1][27]_P_n_0\,
      R => '0'
    );
\mem_reg[1][28]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(28),
      Q => \mem_reg[1][28]_P_n_0\,
      R => '0'
    );
\mem_reg[1][29]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(29),
      Q => \mem_reg[1][29]_P_n_0\,
      R => '0'
    );
\mem_reg[1][2]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(2),
      Q => \mem_reg[1][2]_P_n_0\,
      R => '0'
    );
\mem_reg[1][30]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(30),
      Q => \mem_reg[1][30]_P_n_0\,
      R => '0'
    );
\mem_reg[1][31]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(31),
      Q => \mem_reg[1][31]_P_n_0\,
      R => '0'
    );
\mem_reg[1][3]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(3),
      Q => \mem_reg[1][3]_P_n_0\,
      R => '0'
    );
\mem_reg[1][4]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(4),
      Q => \mem_reg[1][4]_P_n_0\,
      R => '0'
    );
\mem_reg[1][5]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(5),
      Q => \mem_reg[1][5]_P_n_0\,
      R => '0'
    );
\mem_reg[1][6]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(6),
      Q => \mem_reg[1][6]_P_n_0\,
      R => '0'
    );
\mem_reg[1][7]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(7),
      Q => \mem_reg[1][7]_P_n_0\,
      R => '0'
    );
\mem_reg[1][8]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(8),
      Q => \mem_reg[1][8]_P_n_0\,
      R => '0'
    );
\mem_reg[1][9]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_P_i_1_n_0\,
      D => din(9),
      Q => \mem_reg[1][9]_P_n_0\,
      R => '0'
    );
\mem_reg[2][0]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(0),
      Q => \mem_reg[2][0]_P_n_0\,
      R => '0'
    );
\mem_reg[2][10]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(10),
      Q => \mem_reg[2][10]_P_n_0\,
      R => '0'
    );
\mem_reg[2][11]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(11),
      Q => \mem_reg[2][11]_P_n_0\,
      R => '0'
    );
\mem_reg[2][12]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(12),
      Q => \mem_reg[2][12]_P_n_0\,
      R => '0'
    );
\mem_reg[2][13]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(13),
      Q => \mem_reg[2][13]_P_n_0\,
      R => '0'
    );
\mem_reg[2][14]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(14),
      Q => \mem_reg[2][14]_P_n_0\,
      R => '0'
    );
\mem_reg[2][15]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(15),
      Q => \mem_reg[2][15]_P_n_0\,
      R => '0'
    );
\mem_reg[2][16]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(16),
      Q => \mem_reg[2][16]_P_n_0\,
      R => '0'
    );
\mem_reg[2][17]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(17),
      Q => \mem_reg[2][17]_P_n_0\,
      R => '0'
    );
\mem_reg[2][18]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(18),
      Q => \mem_reg[2][18]_P_n_0\,
      R => '0'
    );
\mem_reg[2][19]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(19),
      Q => \mem_reg[2][19]_P_n_0\,
      R => '0'
    );
\mem_reg[2][1]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(1),
      Q => \mem_reg[2][1]_P_n_0\,
      R => '0'
    );
\mem_reg[2][20]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(20),
      Q => \mem_reg[2][20]_P_n_0\,
      R => '0'
    );
\mem_reg[2][21]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(21),
      Q => \mem_reg[2][21]_P_n_0\,
      R => '0'
    );
\mem_reg[2][22]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(22),
      Q => \mem_reg[2][22]_P_n_0\,
      R => '0'
    );
\mem_reg[2][23]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(23),
      Q => \mem_reg[2][23]_P_n_0\,
      R => '0'
    );
\mem_reg[2][24]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(24),
      Q => \mem_reg[2][24]_P_n_0\,
      R => '0'
    );
\mem_reg[2][25]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(25),
      Q => \mem_reg[2][25]_P_n_0\,
      R => '0'
    );
\mem_reg[2][26]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(26),
      Q => \mem_reg[2][26]_P_n_0\,
      R => '0'
    );
\mem_reg[2][27]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(27),
      Q => \mem_reg[2][27]_P_n_0\,
      R => '0'
    );
\mem_reg[2][28]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(28),
      Q => \mem_reg[2][28]_P_n_0\,
      R => '0'
    );
\mem_reg[2][29]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(29),
      Q => \mem_reg[2][29]_P_n_0\,
      R => '0'
    );
\mem_reg[2][2]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(2),
      Q => \mem_reg[2][2]_P_n_0\,
      R => '0'
    );
\mem_reg[2][30]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(30),
      Q => \mem_reg[2][30]_P_n_0\,
      R => '0'
    );
\mem_reg[2][31]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(31),
      Q => \mem_reg[2][31]_P_n_0\,
      R => '0'
    );
\mem_reg[2][3]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(3),
      Q => \mem_reg[2][3]_P_n_0\,
      R => '0'
    );
\mem_reg[2][4]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(4),
      Q => \mem_reg[2][4]_P_n_0\,
      R => '0'
    );
\mem_reg[2][5]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(5),
      Q => \mem_reg[2][5]_P_n_0\,
      R => '0'
    );
\mem_reg[2][6]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(6),
      Q => \mem_reg[2][6]_P_n_0\,
      R => '0'
    );
\mem_reg[2][7]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(7),
      Q => \mem_reg[2][7]_P_n_0\,
      R => '0'
    );
\mem_reg[2][8]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(8),
      Q => \mem_reg[2][8]_P_n_0\,
      R => '0'
    );
\mem_reg[2][9]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_P_i_1_n_0\,
      D => din(9),
      Q => \mem_reg[2][9]_P_n_0\,
      R => '0'
    );
\mem_reg[3][0]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(0),
      Q => \mem_reg[3][0]_P_n_0\,
      R => '0'
    );
\mem_reg[3][10]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(10),
      Q => \mem_reg[3][10]_P_n_0\,
      R => '0'
    );
\mem_reg[3][11]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(11),
      Q => \mem_reg[3][11]_P_n_0\,
      R => '0'
    );
\mem_reg[3][12]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(12),
      Q => \mem_reg[3][12]_P_n_0\,
      R => '0'
    );
\mem_reg[3][13]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(13),
      Q => \mem_reg[3][13]_P_n_0\,
      R => '0'
    );
\mem_reg[3][14]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(14),
      Q => \mem_reg[3][14]_P_n_0\,
      R => '0'
    );
\mem_reg[3][15]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(15),
      Q => \mem_reg[3][15]_P_n_0\,
      R => '0'
    );
\mem_reg[3][16]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(16),
      Q => \mem_reg[3][16]_P_n_0\,
      R => '0'
    );
\mem_reg[3][17]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(17),
      Q => \mem_reg[3][17]_P_n_0\,
      R => '0'
    );
\mem_reg[3][18]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(18),
      Q => \mem_reg[3][18]_P_n_0\,
      R => '0'
    );
\mem_reg[3][19]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(19),
      Q => \mem_reg[3][19]_P_n_0\,
      R => '0'
    );
\mem_reg[3][1]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(1),
      Q => \mem_reg[3][1]_P_n_0\,
      R => '0'
    );
\mem_reg[3][20]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(20),
      Q => \mem_reg[3][20]_P_n_0\,
      R => '0'
    );
\mem_reg[3][21]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(21),
      Q => \mem_reg[3][21]_P_n_0\,
      R => '0'
    );
\mem_reg[3][22]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(22),
      Q => \mem_reg[3][22]_P_n_0\,
      R => '0'
    );
\mem_reg[3][23]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(23),
      Q => \mem_reg[3][23]_P_n_0\,
      R => '0'
    );
\mem_reg[3][24]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(24),
      Q => \mem_reg[3][24]_P_n_0\,
      R => '0'
    );
\mem_reg[3][25]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(25),
      Q => \mem_reg[3][25]_P_n_0\,
      R => '0'
    );
\mem_reg[3][26]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(26),
      Q => \mem_reg[3][26]_P_n_0\,
      R => '0'
    );
\mem_reg[3][27]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(27),
      Q => \mem_reg[3][27]_P_n_0\,
      R => '0'
    );
\mem_reg[3][28]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(28),
      Q => \mem_reg[3][28]_P_n_0\,
      R => '0'
    );
\mem_reg[3][29]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(29),
      Q => \mem_reg[3][29]_P_n_0\,
      R => '0'
    );
\mem_reg[3][2]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(2),
      Q => \mem_reg[3][2]_P_n_0\,
      R => '0'
    );
\mem_reg[3][30]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(30),
      Q => \mem_reg[3][30]_P_n_0\,
      R => '0'
    );
\mem_reg[3][31]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(31),
      Q => \mem_reg[3][31]_P_n_0\,
      R => '0'
    );
\mem_reg[3][3]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(3),
      Q => \mem_reg[3][3]_P_n_0\,
      R => '0'
    );
\mem_reg[3][4]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(4),
      Q => \mem_reg[3][4]_P_n_0\,
      R => '0'
    );
\mem_reg[3][5]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(5),
      Q => \mem_reg[3][5]_P_n_0\,
      R => '0'
    );
\mem_reg[3][6]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(6),
      Q => \mem_reg[3][6]_P_n_0\,
      R => '0'
    );
\mem_reg[3][7]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(7),
      Q => \mem_reg[3][7]_P_n_0\,
      R => '0'
    );
\mem_reg[3][8]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(8),
      Q => \mem_reg[3][8]_P_n_0\,
      R => '0'
    );
\mem_reg[3][9]_P\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_P_i_1_n_0\,
      D => din(9),
      Q => \mem_reg[3][9]_P_n_0\,
      R => '0'
    );
\rd_ptr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => FSM_sequential_state_reg_n_0,
      I1 => \^data_ready_reg_0\,
      I2 => rd_en,
      I3 => rd_ptr(0),
      O => \rd_ptr[0]_i_1_n_0\
    );
\rd_ptr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_ptr(0),
      I1 => rd_en,
      I2 => \^data_ready_reg_0\,
      I3 => FSM_sequential_state_reg_n_0,
      I4 => rd_ptr(1),
      O => \rd_ptr[1]_i_1_n_0\
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \rd_ptr[0]_i_1_n_0\,
      Q => rd_ptr(0)
    );
\rd_ptr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \rd_ptr[1]_i_1_n_0\,
      Q => rd_ptr(1)
    );
\wr_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_ptr_reg_n_0_[0]\,
      O => wr_ptr0(0)
    );
\wr_ptr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => FSM_sequential_state_reg_n_0,
      I1 => \wr_ptr[1]_i_3_n_0\,
      I2 => rst,
      O => \wr_ptr[1]_i_1_n_0\
    );
\wr_ptr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_reg_n_0_[1]\,
      I1 => \wr_ptr_reg_n_0_[0]\,
      O => wr_ptr0(1)
    );
\wr_ptr[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0000"
    )
        port map (
      I0 => fifo_data_count_reg(3),
      I1 => fifo_data_count_reg(0),
      I2 => fifo_data_count_reg(1),
      I3 => fifo_data_count_reg(2),
      I4 => wr_en,
      O => \wr_ptr[1]_i_3_n_0\
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wr_ptr[1]_i_1_n_0\,
      CLR => rst,
      D => wr_ptr0(0),
      Q => \wr_ptr_reg_n_0_[0]\
    );
\wr_ptr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wr_ptr[1]_i_1_n_0\,
      CLR => rst,
      D => wr_ptr0(1),
      Q => \wr_ptr_reg_n_0_[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    data_ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_fifo_in_1_0,fifo_in,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fifo_in,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_in
     port map (
      clk => clk,
      data_ready_reg_0 => data_ready,
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
