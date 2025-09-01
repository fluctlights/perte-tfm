-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Aug 15 18:28:41 2025
-- Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axis2fifo_0_0_sim_netlist.vhdl
-- Design      : design_1_axis2fifo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis2fifo is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_ready : out STD_LOGIC;
    rst : in STD_LOGIC;
    last : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis2fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis2fifo is
  signal \buffer\ : STD_LOGIC;
  signal \buffer[0][31]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[1][31]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[2][31]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[3][31]_i_1_n_0\ : STD_LOGIC;
  signal buffer_index : STD_LOGIC;
  signal \buffer_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_index[1]_i_3_n_0\ : STD_LOGIC;
  signal \buffer_index[1]_i_4_n_0\ : STD_LOGIC;
  signal \buffer_index[1]_i_5_n_0\ : STD_LOGIC;
  signal \buffer_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \buffer_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \buffer_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \buffer_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \buffer_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \buffer_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^data_ready\ : STD_LOGIC;
  signal data_ready_i_1_n_0 : STD_LOGIC;
  signal data_ready_i_2_n_0 : STD_LOGIC;
  signal \dout[31]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_10_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_9_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \buffer[0][31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \buffer[1][31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \buffer[2][31]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \buffer_index[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \buffer_index[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of data_ready_i_2 : label is "soft_lutpair1";
begin
  data_ready <= \^data_ready\;
\buffer[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000E00000000"
    )
        port map (
      I0 => \next_state[0]_i_2_n_0\,
      I1 => \next_state_reg_n_0_[0]\,
      I2 => \next_state_reg_n_0_[2]\,
      I3 => \next_state_reg_n_0_[1]\,
      I4 => rst,
      I5 => \buffer[0][31]_i_2_n_0\,
      O => \buffer\
    );
\buffer[0][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \buffer_index_reg_n_0_[0]\,
      I1 => \buffer_index_reg_n_0_[1]\,
      O => \buffer[0][31]_i_2_n_0\
    );
\buffer[1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000E00000000"
    )
        port map (
      I0 => \next_state[0]_i_2_n_0\,
      I1 => \next_state_reg_n_0_[0]\,
      I2 => \next_state_reg_n_0_[2]\,
      I3 => \next_state_reg_n_0_[1]\,
      I4 => rst,
      I5 => \buffer[1][31]_i_2_n_0\,
      O => \buffer[1][31]_i_1_n_0\
    );
\buffer[1][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \buffer_index_reg_n_0_[0]\,
      I1 => \buffer_index_reg_n_0_[1]\,
      O => \buffer[1][31]_i_2_n_0\
    );
\buffer[2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000E00000000"
    )
        port map (
      I0 => \next_state[0]_i_2_n_0\,
      I1 => \next_state_reg_n_0_[0]\,
      I2 => \next_state_reg_n_0_[2]\,
      I3 => \next_state_reg_n_0_[1]\,
      I4 => rst,
      I5 => \buffer[2][31]_i_2_n_0\,
      O => \buffer[2][31]_i_1_n_0\
    );
\buffer[2][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \buffer_index_reg_n_0_[1]\,
      I1 => \buffer_index_reg_n_0_[0]\,
      O => \buffer[2][31]_i_2_n_0\
    );
\buffer[3][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000E"
    )
        port map (
      I0 => \next_state[0]_i_2_n_0\,
      I1 => \next_state_reg_n_0_[0]\,
      I2 => \next_state_reg_n_0_[2]\,
      I3 => \next_state_reg_n_0_[1]\,
      I4 => rst,
      I5 => data_ready_i_2_n_0,
      O => \buffer[3][31]_i_1_n_0\
    );
\buffer_index[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F70"
    )
        port map (
      I0 => \next_state_reg_n_0_[0]\,
      I1 => last,
      I2 => buffer_index,
      I3 => \buffer_index_reg_n_0_[0]\,
      O => \buffer_index[0]_i_1_n_0\
    );
\buffer_index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07FF7000"
    )
        port map (
      I0 => last,
      I1 => \next_state_reg_n_0_[0]\,
      I2 => \buffer_index_reg_n_0_[0]\,
      I3 => buffer_index,
      I4 => \buffer_index_reg_n_0_[1]\,
      O => \buffer_index[1]_i_1_n_0\
    );
\buffer_index[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AAFFFC"
    )
        port map (
      I0 => data_ready_i_2_n_0,
      I1 => \buffer_index[1]_i_3_n_0\,
      I2 => \next_state[0]_i_4_n_0\,
      I3 => \next_state_reg_n_0_[0]\,
      I4 => \next_state_reg_n_0_[1]\,
      I5 => \next_state_reg_n_0_[2]\,
      O => buffer_index
    );
\buffer_index[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \buffer_index[1]_i_4_n_0\,
      I1 => \next_state[0]_i_10_n_0\,
      I2 => \next_state[0]_i_9_n_0\,
      I3 => \next_state[0]_i_8_n_0\,
      I4 => \next_state[0]_i_7_n_0\,
      I5 => \buffer_index[1]_i_5_n_0\,
      O => \buffer_index[1]_i_3_n_0\
    );
\buffer_index[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => s_axis_tdata(18),
      I2 => s_axis_tdata(27),
      I3 => s_axis_tdata(26),
      O => \buffer_index[1]_i_4_n_0\
    );
\buffer_index[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => s_axis_tdata(30),
      O => \buffer_index[1]_i_5_n_0\
    );
\buffer_index_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \buffer_index[0]_i_1_n_0\,
      Q => \buffer_index_reg_n_0_[0]\
    );
\buffer_index_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \buffer_index[1]_i_1_n_0\,
      Q => \buffer_index_reg_n_0_[1]\
    );
\buffer_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(0),
      Q => \buffer_reg[0]\(0),
      R => '0'
    );
\buffer_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(10),
      Q => \buffer_reg[0]\(10),
      R => '0'
    );
\buffer_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(11),
      Q => \buffer_reg[0]\(11),
      R => '0'
    );
\buffer_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(12),
      Q => \buffer_reg[0]\(12),
      R => '0'
    );
\buffer_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(13),
      Q => \buffer_reg[0]\(13),
      R => '0'
    );
\buffer_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(14),
      Q => \buffer_reg[0]\(14),
      R => '0'
    );
\buffer_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(15),
      Q => \buffer_reg[0]\(15),
      R => '0'
    );
\buffer_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(16),
      Q => \buffer_reg[0]\(16),
      R => '0'
    );
\buffer_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(17),
      Q => \buffer_reg[0]\(17),
      R => '0'
    );
\buffer_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(18),
      Q => \buffer_reg[0]\(18),
      R => '0'
    );
\buffer_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(19),
      Q => \buffer_reg[0]\(19),
      R => '0'
    );
\buffer_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(1),
      Q => \buffer_reg[0]\(1),
      R => '0'
    );
\buffer_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(20),
      Q => \buffer_reg[0]\(20),
      R => '0'
    );
\buffer_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(21),
      Q => \buffer_reg[0]\(21),
      R => '0'
    );
\buffer_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(22),
      Q => \buffer_reg[0]\(22),
      R => '0'
    );
\buffer_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(23),
      Q => \buffer_reg[0]\(23),
      R => '0'
    );
\buffer_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(24),
      Q => \buffer_reg[0]\(24),
      R => '0'
    );
\buffer_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(25),
      Q => \buffer_reg[0]\(25),
      R => '0'
    );
\buffer_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(26),
      Q => \buffer_reg[0]\(26),
      R => '0'
    );
\buffer_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(27),
      Q => \buffer_reg[0]\(27),
      R => '0'
    );
\buffer_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(28),
      Q => \buffer_reg[0]\(28),
      R => '0'
    );
\buffer_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(29),
      Q => \buffer_reg[0]\(29),
      R => '0'
    );
\buffer_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(2),
      Q => \buffer_reg[0]\(2),
      R => '0'
    );
\buffer_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(30),
      Q => \buffer_reg[0]\(30),
      R => '0'
    );
\buffer_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(31),
      Q => \buffer_reg[0]\(31),
      R => '0'
    );
\buffer_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(3),
      Q => \buffer_reg[0]\(3),
      R => '0'
    );
\buffer_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(4),
      Q => \buffer_reg[0]\(4),
      R => '0'
    );
\buffer_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(5),
      Q => \buffer_reg[0]\(5),
      R => '0'
    );
\buffer_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(6),
      Q => \buffer_reg[0]\(6),
      R => '0'
    );
\buffer_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(7),
      Q => \buffer_reg[0]\(7),
      R => '0'
    );
\buffer_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(8),
      Q => \buffer_reg[0]\(8),
      R => '0'
    );
\buffer_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer\,
      D => s_axis_tdata(9),
      Q => \buffer_reg[0]\(9),
      R => '0'
    );
\buffer_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => \buffer_reg[1]\(0),
      R => '0'
    );
\buffer_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => \buffer_reg[1]\(10),
      R => '0'
    );
\buffer_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => \buffer_reg[1]\(11),
      R => '0'
    );
\buffer_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => \buffer_reg[1]\(12),
      R => '0'
    );
\buffer_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => \buffer_reg[1]\(13),
      R => '0'
    );
\buffer_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => \buffer_reg[1]\(14),
      R => '0'
    );
\buffer_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => \buffer_reg[1]\(15),
      R => '0'
    );
\buffer_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(16),
      Q => \buffer_reg[1]\(16),
      R => '0'
    );
\buffer_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(17),
      Q => \buffer_reg[1]\(17),
      R => '0'
    );
\buffer_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(18),
      Q => \buffer_reg[1]\(18),
      R => '0'
    );
\buffer_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(19),
      Q => \buffer_reg[1]\(19),
      R => '0'
    );
\buffer_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => \buffer_reg[1]\(1),
      R => '0'
    );
\buffer_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(20),
      Q => \buffer_reg[1]\(20),
      R => '0'
    );
\buffer_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(21),
      Q => \buffer_reg[1]\(21),
      R => '0'
    );
\buffer_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(22),
      Q => \buffer_reg[1]\(22),
      R => '0'
    );
\buffer_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(23),
      Q => \buffer_reg[1]\(23),
      R => '0'
    );
\buffer_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(24),
      Q => \buffer_reg[1]\(24),
      R => '0'
    );
\buffer_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(25),
      Q => \buffer_reg[1]\(25),
      R => '0'
    );
\buffer_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(26),
      Q => \buffer_reg[1]\(26),
      R => '0'
    );
\buffer_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(27),
      Q => \buffer_reg[1]\(27),
      R => '0'
    );
\buffer_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(28),
      Q => \buffer_reg[1]\(28),
      R => '0'
    );
\buffer_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(29),
      Q => \buffer_reg[1]\(29),
      R => '0'
    );
\buffer_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => \buffer_reg[1]\(2),
      R => '0'
    );
\buffer_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(30),
      Q => \buffer_reg[1]\(30),
      R => '0'
    );
\buffer_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(31),
      Q => \buffer_reg[1]\(31),
      R => '0'
    );
\buffer_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => \buffer_reg[1]\(3),
      R => '0'
    );
\buffer_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => \buffer_reg[1]\(4),
      R => '0'
    );
\buffer_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => \buffer_reg[1]\(5),
      R => '0'
    );
\buffer_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => \buffer_reg[1]\(6),
      R => '0'
    );
\buffer_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => \buffer_reg[1]\(7),
      R => '0'
    );
\buffer_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => \buffer_reg[1]\(8),
      R => '0'
    );
\buffer_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => \buffer_reg[1]\(9),
      R => '0'
    );
\buffer_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => \buffer_reg[2]\(0),
      R => '0'
    );
\buffer_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => \buffer_reg[2]\(10),
      R => '0'
    );
\buffer_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => \buffer_reg[2]\(11),
      R => '0'
    );
\buffer_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => \buffer_reg[2]\(12),
      R => '0'
    );
\buffer_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => \buffer_reg[2]\(13),
      R => '0'
    );
\buffer_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => \buffer_reg[2]\(14),
      R => '0'
    );
\buffer_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => \buffer_reg[2]\(15),
      R => '0'
    );
\buffer_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(16),
      Q => \buffer_reg[2]\(16),
      R => '0'
    );
\buffer_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(17),
      Q => \buffer_reg[2]\(17),
      R => '0'
    );
\buffer_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(18),
      Q => \buffer_reg[2]\(18),
      R => '0'
    );
\buffer_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(19),
      Q => \buffer_reg[2]\(19),
      R => '0'
    );
\buffer_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => \buffer_reg[2]\(1),
      R => '0'
    );
\buffer_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(20),
      Q => \buffer_reg[2]\(20),
      R => '0'
    );
\buffer_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(21),
      Q => \buffer_reg[2]\(21),
      R => '0'
    );
\buffer_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(22),
      Q => \buffer_reg[2]\(22),
      R => '0'
    );
\buffer_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(23),
      Q => \buffer_reg[2]\(23),
      R => '0'
    );
\buffer_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(24),
      Q => \buffer_reg[2]\(24),
      R => '0'
    );
\buffer_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(25),
      Q => \buffer_reg[2]\(25),
      R => '0'
    );
\buffer_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(26),
      Q => \buffer_reg[2]\(26),
      R => '0'
    );
\buffer_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(27),
      Q => \buffer_reg[2]\(27),
      R => '0'
    );
\buffer_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(28),
      Q => \buffer_reg[2]\(28),
      R => '0'
    );
\buffer_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(29),
      Q => \buffer_reg[2]\(29),
      R => '0'
    );
\buffer_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => \buffer_reg[2]\(2),
      R => '0'
    );
\buffer_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(30),
      Q => \buffer_reg[2]\(30),
      R => '0'
    );
\buffer_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(31),
      Q => \buffer_reg[2]\(31),
      R => '0'
    );
\buffer_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => \buffer_reg[2]\(3),
      R => '0'
    );
\buffer_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => \buffer_reg[2]\(4),
      R => '0'
    );
\buffer_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => \buffer_reg[2]\(5),
      R => '0'
    );
\buffer_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => \buffer_reg[2]\(6),
      R => '0'
    );
\buffer_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => \buffer_reg[2]\(7),
      R => '0'
    );
\buffer_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => \buffer_reg[2]\(8),
      R => '0'
    );
\buffer_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => \buffer_reg[2]\(9),
      R => '0'
    );
\buffer_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => \buffer_reg[3]\(0),
      R => '0'
    );
\buffer_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => \buffer_reg[3]\(10),
      R => '0'
    );
\buffer_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => \buffer_reg[3]\(11),
      R => '0'
    );
\buffer_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => \buffer_reg[3]\(12),
      R => '0'
    );
\buffer_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => \buffer_reg[3]\(13),
      R => '0'
    );
\buffer_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => \buffer_reg[3]\(14),
      R => '0'
    );
\buffer_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => \buffer_reg[3]\(15),
      R => '0'
    );
\buffer_reg[3][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(16),
      Q => \buffer_reg[3]\(16),
      R => '0'
    );
\buffer_reg[3][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(17),
      Q => \buffer_reg[3]\(17),
      R => '0'
    );
\buffer_reg[3][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(18),
      Q => \buffer_reg[3]\(18),
      R => '0'
    );
\buffer_reg[3][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(19),
      Q => \buffer_reg[3]\(19),
      R => '0'
    );
\buffer_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => \buffer_reg[3]\(1),
      R => '0'
    );
\buffer_reg[3][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(20),
      Q => \buffer_reg[3]\(20),
      R => '0'
    );
\buffer_reg[3][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(21),
      Q => \buffer_reg[3]\(21),
      R => '0'
    );
\buffer_reg[3][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(22),
      Q => \buffer_reg[3]\(22),
      R => '0'
    );
\buffer_reg[3][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(23),
      Q => \buffer_reg[3]\(23),
      R => '0'
    );
\buffer_reg[3][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(24),
      Q => \buffer_reg[3]\(24),
      R => '0'
    );
\buffer_reg[3][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(25),
      Q => \buffer_reg[3]\(25),
      R => '0'
    );
\buffer_reg[3][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(26),
      Q => \buffer_reg[3]\(26),
      R => '0'
    );
\buffer_reg[3][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(27),
      Q => \buffer_reg[3]\(27),
      R => '0'
    );
\buffer_reg[3][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(28),
      Q => \buffer_reg[3]\(28),
      R => '0'
    );
\buffer_reg[3][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(29),
      Q => \buffer_reg[3]\(29),
      R => '0'
    );
\buffer_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => \buffer_reg[3]\(2),
      R => '0'
    );
\buffer_reg[3][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(30),
      Q => \buffer_reg[3]\(30),
      R => '0'
    );
\buffer_reg[3][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(31),
      Q => \buffer_reg[3]\(31),
      R => '0'
    );
\buffer_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => \buffer_reg[3]\(3),
      R => '0'
    );
\buffer_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => \buffer_reg[3]\(4),
      R => '0'
    );
\buffer_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => \buffer_reg[3]\(5),
      R => '0'
    );
\buffer_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => \buffer_reg[3]\(6),
      R => '0'
    );
\buffer_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => \buffer_reg[3]\(7),
      R => '0'
    );
\buffer_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => \buffer_reg[3]\(8),
      R => '0'
    );
\buffer_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => \buffer_reg[3]\(9),
      R => '0'
    );
data_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAFF000000C0"
    )
        port map (
      I0 => data_ready_i_2_n_0,
      I1 => last,
      I2 => \next_state_reg_n_0_[0]\,
      I3 => \next_state_reg_n_0_[1]\,
      I4 => \next_state_reg_n_0_[2]\,
      I5 => \^data_ready\,
      O => data_ready_i_1_n_0
    );
data_ready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \buffer_index_reg_n_0_[0]\,
      I1 => \buffer_index_reg_n_0_[1]\,
      O => data_ready_i_2_n_0
    );
data_ready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => data_ready_i_1_n_0,
      Q => \^data_ready\
    );
\dout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(0),
      I1 => \buffer_reg[3]\(0),
      I2 => \buffer_reg[0]\(0),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(0),
      O => p_0_in(0)
    );
\dout[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(10),
      I1 => \buffer_reg[3]\(10),
      I2 => \buffer_reg[0]\(10),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(10),
      O => p_0_in(10)
    );
\dout[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(11),
      I1 => \buffer_reg[3]\(11),
      I2 => \buffer_reg[0]\(11),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(11),
      O => p_0_in(11)
    );
\dout[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(12),
      I1 => \buffer_reg[3]\(12),
      I2 => \buffer_reg[0]\(12),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(12),
      O => p_0_in(12)
    );
\dout[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(13),
      I1 => \buffer_reg[3]\(13),
      I2 => \buffer_reg[0]\(13),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(13),
      O => p_0_in(13)
    );
\dout[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(14),
      I1 => \buffer_reg[3]\(14),
      I2 => \buffer_reg[0]\(14),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(14),
      O => p_0_in(14)
    );
\dout[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(15),
      I1 => \buffer_reg[3]\(15),
      I2 => \buffer_reg[0]\(15),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(15),
      O => p_0_in(15)
    );
\dout[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(16),
      I1 => \buffer_reg[3]\(16),
      I2 => \buffer_reg[0]\(16),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(16),
      O => p_0_in(16)
    );
\dout[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(17),
      I1 => \buffer_reg[3]\(17),
      I2 => \buffer_reg[0]\(17),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(17),
      O => p_0_in(17)
    );
\dout[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(18),
      I1 => \buffer_reg[3]\(18),
      I2 => \buffer_reg[0]\(18),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(18),
      O => p_0_in(18)
    );
\dout[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(19),
      I1 => \buffer_reg[3]\(19),
      I2 => \buffer_reg[0]\(19),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(19),
      O => p_0_in(19)
    );
\dout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(1),
      I1 => \buffer_reg[3]\(1),
      I2 => \buffer_reg[0]\(1),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(1),
      O => p_0_in(1)
    );
\dout[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(20),
      I1 => \buffer_reg[3]\(20),
      I2 => \buffer_reg[0]\(20),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(20),
      O => p_0_in(20)
    );
\dout[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(21),
      I1 => \buffer_reg[3]\(21),
      I2 => \buffer_reg[0]\(21),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(21),
      O => p_0_in(21)
    );
\dout[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(22),
      I1 => \buffer_reg[3]\(22),
      I2 => \buffer_reg[0]\(22),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(22),
      O => p_0_in(22)
    );
\dout[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(23),
      I1 => \buffer_reg[3]\(23),
      I2 => \buffer_reg[0]\(23),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(23),
      O => p_0_in(23)
    );
\dout[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(24),
      I1 => \buffer_reg[3]\(24),
      I2 => \buffer_reg[0]\(24),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(24),
      O => p_0_in(24)
    );
\dout[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(25),
      I1 => \buffer_reg[3]\(25),
      I2 => \buffer_reg[0]\(25),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(25),
      O => p_0_in(25)
    );
\dout[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(26),
      I1 => \buffer_reg[3]\(26),
      I2 => \buffer_reg[0]\(26),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(26),
      O => p_0_in(26)
    );
\dout[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(27),
      I1 => \buffer_reg[3]\(27),
      I2 => \buffer_reg[0]\(27),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(27),
      O => p_0_in(27)
    );
\dout[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(28),
      I1 => \buffer_reg[3]\(28),
      I2 => \buffer_reg[0]\(28),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(28),
      O => p_0_in(28)
    );
\dout[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(29),
      I1 => \buffer_reg[3]\(29),
      I2 => \buffer_reg[0]\(29),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(29),
      O => p_0_in(29)
    );
\dout[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(2),
      I1 => \buffer_reg[3]\(2),
      I2 => \buffer_reg[0]\(2),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(2),
      O => p_0_in(2)
    );
\dout[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(30),
      I1 => \buffer_reg[3]\(30),
      I2 => \buffer_reg[0]\(30),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(30),
      O => p_0_in(30)
    );
\dout[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => rst,
      I1 => \next_state_reg_n_0_[1]\,
      I2 => \next_state_reg_n_0_[2]\,
      I3 => \next_state_reg_n_0_[0]\,
      O => \dout[31]_i_1_n_0\
    );
\dout[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(31),
      I1 => \buffer_reg[3]\(31),
      I2 => \buffer_reg[0]\(31),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(31),
      O => p_0_in(31)
    );
\dout[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(3),
      I1 => \buffer_reg[3]\(3),
      I2 => \buffer_reg[0]\(3),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(3),
      O => p_0_in(3)
    );
\dout[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(4),
      I1 => \buffer_reg[3]\(4),
      I2 => \buffer_reg[0]\(4),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(4),
      O => p_0_in(4)
    );
\dout[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(5),
      I1 => \buffer_reg[3]\(5),
      I2 => \buffer_reg[0]\(5),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(5),
      O => p_0_in(5)
    );
\dout[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(6),
      I1 => \buffer_reg[3]\(6),
      I2 => \buffer_reg[0]\(6),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(6),
      O => p_0_in(6)
    );
\dout[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(7),
      I1 => \buffer_reg[3]\(7),
      I2 => \buffer_reg[0]\(7),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(7),
      O => p_0_in(7)
    );
\dout[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(8),
      I1 => \buffer_reg[3]\(8),
      I2 => \buffer_reg[0]\(8),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(8),
      O => p_0_in(8)
    );
\dout[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(9),
      I1 => \buffer_reg[3]\(9),
      I2 => \buffer_reg[0]\(9),
      I3 => \buffer_index_reg_n_0_[1]\,
      I4 => \buffer_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(9),
      O => p_0_in(9)
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(0),
      Q => dout(0),
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(10),
      Q => dout(10),
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(11),
      Q => dout(11),
      R => '0'
    );
\dout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(12),
      Q => dout(12),
      R => '0'
    );
\dout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(13),
      Q => dout(13),
      R => '0'
    );
\dout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(14),
      Q => dout(14),
      R => '0'
    );
\dout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(15),
      Q => dout(15),
      R => '0'
    );
\dout_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(16),
      Q => dout(16),
      R => '0'
    );
\dout_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(17),
      Q => dout(17),
      R => '0'
    );
\dout_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(18),
      Q => dout(18),
      R => '0'
    );
\dout_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(19),
      Q => dout(19),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(1),
      Q => dout(1),
      R => '0'
    );
\dout_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(20),
      Q => dout(20),
      R => '0'
    );
\dout_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(21),
      Q => dout(21),
      R => '0'
    );
\dout_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(22),
      Q => dout(22),
      R => '0'
    );
\dout_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(23),
      Q => dout(23),
      R => '0'
    );
\dout_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(24),
      Q => dout(24),
      R => '0'
    );
\dout_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(25),
      Q => dout(25),
      R => '0'
    );
\dout_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(26),
      Q => dout(26),
      R => '0'
    );
\dout_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(27),
      Q => dout(27),
      R => '0'
    );
\dout_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(28),
      Q => dout(28),
      R => '0'
    );
\dout_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(29),
      Q => dout(29),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(2),
      Q => dout(2),
      R => '0'
    );
\dout_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(30),
      Q => dout(30),
      R => '0'
    );
\dout_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(31),
      Q => dout(31),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(3),
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(4),
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(5),
      Q => dout(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(6),
      Q => dout(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(7),
      Q => dout(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(8),
      Q => dout(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => p_0_in(9),
      Q => dout(9),
      R => '0'
    );
\next_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005FFFF000C0000"
    )
        port map (
      I0 => last,
      I1 => \next_state[0]_i_2_n_0\,
      I2 => \next_state_reg_n_0_[2]\,
      I3 => \next_state_reg_n_0_[1]\,
      I4 => \next_state[0]_i_3_n_0\,
      I5 => \next_state_reg_n_0_[0]\,
      O => \next_state[0]_i_1_n_0\
    );
\next_state[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(6),
      I2 => s_axis_tdata(5),
      I3 => s_axis_tdata(4),
      O => \next_state[0]_i_10_n_0\
    );
\next_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \next_state[0]_i_4_n_0\,
      I1 => \next_state[0]_i_5_n_0\,
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(18),
      I4 => s_axis_tdata(27),
      I5 => s_axis_tdata(26),
      O => \next_state[0]_i_2_n_0\
    );
\next_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00F800F000FF"
    )
        port map (
      I0 => \buffer_index_reg_n_0_[0]\,
      I1 => \buffer_index_reg_n_0_[1]\,
      I2 => \next_state_reg_n_0_[0]\,
      I3 => rst,
      I4 => \next_state_reg_n_0_[2]\,
      I5 => \next_state_reg_n_0_[1]\,
      O => \next_state[0]_i_3_n_0\
    );
\next_state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \next_state[0]_i_6_n_0\,
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(17),
      I3 => s_axis_tdata(22),
      I4 => s_axis_tdata(23),
      O => \next_state[0]_i_4_n_0\
    );
\next_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => s_axis_tdata(30),
      I1 => s_axis_tdata(31),
      I2 => \next_state[0]_i_7_n_0\,
      I3 => \next_state[0]_i_8_n_0\,
      I4 => \next_state[0]_i_9_n_0\,
      I5 => \next_state[0]_i_10_n_0\,
      O => \next_state[0]_i_5_n_0\
    );
\next_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_axis_tdata(28),
      I1 => s_axis_tdata(29),
      I2 => s_axis_tdata(24),
      I3 => s_axis_tdata(25),
      I4 => s_axis_tdata(21),
      I5 => s_axis_tdata(20),
      O => \next_state[0]_i_6_n_0\
    );
\next_state[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(14),
      I2 => s_axis_tdata(13),
      I3 => s_axis_tdata(12),
      O => \next_state[0]_i_7_n_0\
    );
\next_state[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => s_axis_tdata(10),
      I2 => s_axis_tdata(9),
      I3 => s_axis_tdata(8),
      O => \next_state[0]_i_8_n_0\
    );
\next_state[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => s_axis_tdata(0),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(2),
      O => \next_state[0]_i_9_n_0\
    );
\next_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0C000000A0"
    )
        port map (
      I0 => last,
      I1 => data_ready_i_2_n_0,
      I2 => \next_state_reg_n_0_[0]\,
      I3 => rst,
      I4 => \next_state_reg_n_0_[2]\,
      I5 => \next_state_reg_n_0_[1]\,
      O => \next_state[1]_i_1_n_0\
    );
\next_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000008FF0F0000"
    )
        port map (
      I0 => \buffer_index_reg_n_0_[0]\,
      I1 => \buffer_index_reg_n_0_[1]\,
      I2 => \next_state_reg_n_0_[0]\,
      I3 => rst,
      I4 => \next_state_reg_n_0_[2]\,
      I5 => \next_state_reg_n_0_[1]\,
      O => \next_state[2]_i_1_n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \next_state[0]_i_1_n_0\,
      Q => \next_state_reg_n_0_[0]\,
      R => '0'
    );
\next_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \next_state[1]_i_1_n_0\,
      Q => \next_state_reg_n_0_[1]\,
      R => '0'
    );
\next_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \next_state[2]_i_1_n_0\,
      Q => \next_state_reg_n_0_[2]\,
      R => '0'
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
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    last : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axis2fifo_0_0,axis2fifo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axis2fifo,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis2fifo
     port map (
      clk => clk,
      data_ready => data_ready,
      dout(31 downto 0) => dout(31 downto 0),
      last => last,
      rst => rst,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0)
    );
end STRUCTURE;
