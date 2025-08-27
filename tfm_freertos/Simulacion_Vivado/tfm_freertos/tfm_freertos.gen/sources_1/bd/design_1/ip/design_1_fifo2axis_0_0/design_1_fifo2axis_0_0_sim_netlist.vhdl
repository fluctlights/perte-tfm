-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Aug 15 21:20:42 2025
-- Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_fifo2axis_0_0 -prefix
--               design_1_fifo2axis_0_0_ design_1_fifo2axis_0_0_sim_netlist.vhdl
-- Design      : design_1_fifo2axis_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo2axis_0_0_fifo2axis is
  port (
    s_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rst : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    start : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end design_1_fifo2axis_0_0_fifo2axis;

architecture STRUCTURE of design_1_fifo2axis_0_0_fifo2axis is
  signal \buffer[0][31]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \buffer_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \buffer_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \buffer_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \buffer_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \buffer_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \next_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal s_axis_tdata0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \s_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \send_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \send_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \send_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \send_index_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_state[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \next_state[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \next_state[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \next_state[2]_i_3\ : label is "soft_lutpair0";
begin
\buffer[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \buffer_index_reg_n_0_[0]\,
      I1 => \buffer_index_reg_n_0_[1]\,
      I2 => rst,
      I3 => \next_state_reg_n_0_[0]\,
      I4 => \next_state_reg_n_0_[2]\,
      I5 => \next_state_reg_n_0_[1]\,
      O => \buffer[0][31]_i_1_n_0\
    );
\buffer[1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \buffer_index_reg_n_0_[1]\,
      I1 => \buffer_index_reg_n_0_[0]\,
      I2 => rst,
      I3 => \next_state_reg_n_0_[0]\,
      I4 => \next_state_reg_n_0_[2]\,
      I5 => \next_state_reg_n_0_[1]\,
      O => \buffer[1][31]_i_1_n_0\
    );
\buffer[2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \buffer_index_reg_n_0_[0]\,
      I1 => \buffer_index_reg_n_0_[1]\,
      I2 => rst,
      I3 => \next_state_reg_n_0_[0]\,
      I4 => \next_state_reg_n_0_[2]\,
      I5 => \next_state_reg_n_0_[1]\,
      O => \buffer[2][31]_i_1_n_0\
    );
\buffer[3][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \buffer_index_reg_n_0_[1]\,
      I1 => \buffer_index_reg_n_0_[0]\,
      I2 => rst,
      I3 => \next_state_reg_n_0_[0]\,
      I4 => \next_state_reg_n_0_[2]\,
      I5 => \next_state_reg_n_0_[1]\,
      O => \buffer[3][31]_i_1_n_0\
    );
\buffer_index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE11FF00FE11EE00"
    )
        port map (
      I0 => \next_state_reg_n_0_[2]\,
      I1 => \next_state_reg_n_0_[1]\,
      I2 => \buffer_index_reg_n_0_[1]\,
      I3 => \buffer_index_reg_n_0_[0]\,
      I4 => \next_state_reg_n_0_[0]\,
      I5 => start,
      O => \buffer_index[0]_i_1_n_0\
    );
\buffer_index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F0F0F0F1F0E0E0"
    )
        port map (
      I0 => \next_state_reg_n_0_[2]\,
      I1 => \next_state_reg_n_0_[1]\,
      I2 => \buffer_index_reg_n_0_[1]\,
      I3 => \buffer_index_reg_n_0_[0]\,
      I4 => \next_state_reg_n_0_[0]\,
      I5 => start,
      O => \buffer_index[1]_i_1_n_0\
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
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(0),
      Q => \buffer_reg[0]\(0),
      R => '0'
    );
\buffer_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(10),
      Q => \buffer_reg[0]\(10),
      R => '0'
    );
\buffer_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(11),
      Q => \buffer_reg[0]\(11),
      R => '0'
    );
\buffer_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(12),
      Q => \buffer_reg[0]\(12),
      R => '0'
    );
\buffer_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(13),
      Q => \buffer_reg[0]\(13),
      R => '0'
    );
\buffer_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(14),
      Q => \buffer_reg[0]\(14),
      R => '0'
    );
\buffer_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(15),
      Q => \buffer_reg[0]\(15),
      R => '0'
    );
\buffer_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(16),
      Q => \buffer_reg[0]\(16),
      R => '0'
    );
\buffer_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(17),
      Q => \buffer_reg[0]\(17),
      R => '0'
    );
\buffer_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(18),
      Q => \buffer_reg[0]\(18),
      R => '0'
    );
\buffer_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(19),
      Q => \buffer_reg[0]\(19),
      R => '0'
    );
\buffer_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(1),
      Q => \buffer_reg[0]\(1),
      R => '0'
    );
\buffer_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(20),
      Q => \buffer_reg[0]\(20),
      R => '0'
    );
\buffer_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(21),
      Q => \buffer_reg[0]\(21),
      R => '0'
    );
\buffer_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(22),
      Q => \buffer_reg[0]\(22),
      R => '0'
    );
\buffer_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(23),
      Q => \buffer_reg[0]\(23),
      R => '0'
    );
\buffer_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(24),
      Q => \buffer_reg[0]\(24),
      R => '0'
    );
\buffer_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(25),
      Q => \buffer_reg[0]\(25),
      R => '0'
    );
\buffer_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(26),
      Q => \buffer_reg[0]\(26),
      R => '0'
    );
\buffer_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(27),
      Q => \buffer_reg[0]\(27),
      R => '0'
    );
\buffer_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(28),
      Q => \buffer_reg[0]\(28),
      R => '0'
    );
\buffer_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(29),
      Q => \buffer_reg[0]\(29),
      R => '0'
    );
\buffer_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(2),
      Q => \buffer_reg[0]\(2),
      R => '0'
    );
\buffer_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(30),
      Q => \buffer_reg[0]\(30),
      R => '0'
    );
\buffer_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(31),
      Q => \buffer_reg[0]\(31),
      R => '0'
    );
\buffer_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(3),
      Q => \buffer_reg[0]\(3),
      R => '0'
    );
\buffer_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(4),
      Q => \buffer_reg[0]\(4),
      R => '0'
    );
\buffer_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(5),
      Q => \buffer_reg[0]\(5),
      R => '0'
    );
\buffer_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(6),
      Q => \buffer_reg[0]\(6),
      R => '0'
    );
\buffer_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(7),
      Q => \buffer_reg[0]\(7),
      R => '0'
    );
\buffer_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(8),
      Q => \buffer_reg[0]\(8),
      R => '0'
    );
\buffer_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0][31]_i_1_n_0\,
      D => fifo_data(9),
      Q => \buffer_reg[0]\(9),
      R => '0'
    );
\buffer_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(0),
      Q => \buffer_reg[1]\(0),
      R => '0'
    );
\buffer_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(10),
      Q => \buffer_reg[1]\(10),
      R => '0'
    );
\buffer_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(11),
      Q => \buffer_reg[1]\(11),
      R => '0'
    );
\buffer_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(12),
      Q => \buffer_reg[1]\(12),
      R => '0'
    );
\buffer_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(13),
      Q => \buffer_reg[1]\(13),
      R => '0'
    );
\buffer_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(14),
      Q => \buffer_reg[1]\(14),
      R => '0'
    );
\buffer_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(15),
      Q => \buffer_reg[1]\(15),
      R => '0'
    );
\buffer_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(16),
      Q => \buffer_reg[1]\(16),
      R => '0'
    );
\buffer_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(17),
      Q => \buffer_reg[1]\(17),
      R => '0'
    );
\buffer_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(18),
      Q => \buffer_reg[1]\(18),
      R => '0'
    );
\buffer_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(19),
      Q => \buffer_reg[1]\(19),
      R => '0'
    );
\buffer_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(1),
      Q => \buffer_reg[1]\(1),
      R => '0'
    );
\buffer_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(20),
      Q => \buffer_reg[1]\(20),
      R => '0'
    );
\buffer_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(21),
      Q => \buffer_reg[1]\(21),
      R => '0'
    );
\buffer_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(22),
      Q => \buffer_reg[1]\(22),
      R => '0'
    );
\buffer_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(23),
      Q => \buffer_reg[1]\(23),
      R => '0'
    );
\buffer_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(24),
      Q => \buffer_reg[1]\(24),
      R => '0'
    );
\buffer_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(25),
      Q => \buffer_reg[1]\(25),
      R => '0'
    );
\buffer_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(26),
      Q => \buffer_reg[1]\(26),
      R => '0'
    );
\buffer_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(27),
      Q => \buffer_reg[1]\(27),
      R => '0'
    );
\buffer_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(28),
      Q => \buffer_reg[1]\(28),
      R => '0'
    );
\buffer_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(29),
      Q => \buffer_reg[1]\(29),
      R => '0'
    );
\buffer_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(2),
      Q => \buffer_reg[1]\(2),
      R => '0'
    );
\buffer_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(30),
      Q => \buffer_reg[1]\(30),
      R => '0'
    );
\buffer_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(31),
      Q => \buffer_reg[1]\(31),
      R => '0'
    );
\buffer_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(3),
      Q => \buffer_reg[1]\(3),
      R => '0'
    );
\buffer_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(4),
      Q => \buffer_reg[1]\(4),
      R => '0'
    );
\buffer_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(5),
      Q => \buffer_reg[1]\(5),
      R => '0'
    );
\buffer_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(6),
      Q => \buffer_reg[1]\(6),
      R => '0'
    );
\buffer_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(7),
      Q => \buffer_reg[1]\(7),
      R => '0'
    );
\buffer_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(8),
      Q => \buffer_reg[1]\(8),
      R => '0'
    );
\buffer_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[1][31]_i_1_n_0\,
      D => fifo_data(9),
      Q => \buffer_reg[1]\(9),
      R => '0'
    );
\buffer_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(0),
      Q => \buffer_reg[2]\(0),
      R => '0'
    );
\buffer_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(10),
      Q => \buffer_reg[2]\(10),
      R => '0'
    );
\buffer_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(11),
      Q => \buffer_reg[2]\(11),
      R => '0'
    );
\buffer_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(12),
      Q => \buffer_reg[2]\(12),
      R => '0'
    );
\buffer_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(13),
      Q => \buffer_reg[2]\(13),
      R => '0'
    );
\buffer_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(14),
      Q => \buffer_reg[2]\(14),
      R => '0'
    );
\buffer_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(15),
      Q => \buffer_reg[2]\(15),
      R => '0'
    );
\buffer_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(16),
      Q => \buffer_reg[2]\(16),
      R => '0'
    );
\buffer_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(17),
      Q => \buffer_reg[2]\(17),
      R => '0'
    );
\buffer_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(18),
      Q => \buffer_reg[2]\(18),
      R => '0'
    );
\buffer_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(19),
      Q => \buffer_reg[2]\(19),
      R => '0'
    );
\buffer_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(1),
      Q => \buffer_reg[2]\(1),
      R => '0'
    );
\buffer_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(20),
      Q => \buffer_reg[2]\(20),
      R => '0'
    );
\buffer_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(21),
      Q => \buffer_reg[2]\(21),
      R => '0'
    );
\buffer_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(22),
      Q => \buffer_reg[2]\(22),
      R => '0'
    );
\buffer_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(23),
      Q => \buffer_reg[2]\(23),
      R => '0'
    );
\buffer_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(24),
      Q => \buffer_reg[2]\(24),
      R => '0'
    );
\buffer_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(25),
      Q => \buffer_reg[2]\(25),
      R => '0'
    );
\buffer_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(26),
      Q => \buffer_reg[2]\(26),
      R => '0'
    );
\buffer_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(27),
      Q => \buffer_reg[2]\(27),
      R => '0'
    );
\buffer_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(28),
      Q => \buffer_reg[2]\(28),
      R => '0'
    );
\buffer_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(29),
      Q => \buffer_reg[2]\(29),
      R => '0'
    );
\buffer_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(2),
      Q => \buffer_reg[2]\(2),
      R => '0'
    );
\buffer_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(30),
      Q => \buffer_reg[2]\(30),
      R => '0'
    );
\buffer_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(31),
      Q => \buffer_reg[2]\(31),
      R => '0'
    );
\buffer_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(3),
      Q => \buffer_reg[2]\(3),
      R => '0'
    );
\buffer_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(4),
      Q => \buffer_reg[2]\(4),
      R => '0'
    );
\buffer_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(5),
      Q => \buffer_reg[2]\(5),
      R => '0'
    );
\buffer_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(6),
      Q => \buffer_reg[2]\(6),
      R => '0'
    );
\buffer_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(7),
      Q => \buffer_reg[2]\(7),
      R => '0'
    );
\buffer_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(8),
      Q => \buffer_reg[2]\(8),
      R => '0'
    );
\buffer_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[2][31]_i_1_n_0\,
      D => fifo_data(9),
      Q => \buffer_reg[2]\(9),
      R => '0'
    );
\buffer_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(0),
      Q => \buffer_reg[3]\(0),
      R => '0'
    );
\buffer_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(10),
      Q => \buffer_reg[3]\(10),
      R => '0'
    );
\buffer_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(11),
      Q => \buffer_reg[3]\(11),
      R => '0'
    );
\buffer_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(12),
      Q => \buffer_reg[3]\(12),
      R => '0'
    );
\buffer_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(13),
      Q => \buffer_reg[3]\(13),
      R => '0'
    );
\buffer_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(14),
      Q => \buffer_reg[3]\(14),
      R => '0'
    );
\buffer_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(15),
      Q => \buffer_reg[3]\(15),
      R => '0'
    );
\buffer_reg[3][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(16),
      Q => \buffer_reg[3]\(16),
      R => '0'
    );
\buffer_reg[3][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(17),
      Q => \buffer_reg[3]\(17),
      R => '0'
    );
\buffer_reg[3][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(18),
      Q => \buffer_reg[3]\(18),
      R => '0'
    );
\buffer_reg[3][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(19),
      Q => \buffer_reg[3]\(19),
      R => '0'
    );
\buffer_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(1),
      Q => \buffer_reg[3]\(1),
      R => '0'
    );
\buffer_reg[3][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(20),
      Q => \buffer_reg[3]\(20),
      R => '0'
    );
\buffer_reg[3][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(21),
      Q => \buffer_reg[3]\(21),
      R => '0'
    );
\buffer_reg[3][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(22),
      Q => \buffer_reg[3]\(22),
      R => '0'
    );
\buffer_reg[3][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(23),
      Q => \buffer_reg[3]\(23),
      R => '0'
    );
\buffer_reg[3][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(24),
      Q => \buffer_reg[3]\(24),
      R => '0'
    );
\buffer_reg[3][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(25),
      Q => \buffer_reg[3]\(25),
      R => '0'
    );
\buffer_reg[3][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(26),
      Q => \buffer_reg[3]\(26),
      R => '0'
    );
\buffer_reg[3][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(27),
      Q => \buffer_reg[3]\(27),
      R => '0'
    );
\buffer_reg[3][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(28),
      Q => \buffer_reg[3]\(28),
      R => '0'
    );
\buffer_reg[3][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(29),
      Q => \buffer_reg[3]\(29),
      R => '0'
    );
\buffer_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(2),
      Q => \buffer_reg[3]\(2),
      R => '0'
    );
\buffer_reg[3][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(30),
      Q => \buffer_reg[3]\(30),
      R => '0'
    );
\buffer_reg[3][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(31),
      Q => \buffer_reg[3]\(31),
      R => '0'
    );
\buffer_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(3),
      Q => \buffer_reg[3]\(3),
      R => '0'
    );
\buffer_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(4),
      Q => \buffer_reg[3]\(4),
      R => '0'
    );
\buffer_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(5),
      Q => \buffer_reg[3]\(5),
      R => '0'
    );
\buffer_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(6),
      Q => \buffer_reg[3]\(6),
      R => '0'
    );
\buffer_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(7),
      Q => \buffer_reg[3]\(7),
      R => '0'
    );
\buffer_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(8),
      Q => \buffer_reg[3]\(8),
      R => '0'
    );
\buffer_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[3][31]_i_1_n_0\,
      D => fifo_data(9),
      Q => \buffer_reg[3]\(9),
      R => '0'
    );
\next_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AFF0A0A0C0C0C0C"
    )
        port map (
      I0 => \next_state[0]_i_2_n_0\,
      I1 => \next_state[0]_i_3_n_0\,
      I2 => \next_state_reg_n_0_[2]\,
      I3 => \next_state[2]_i_3_n_0\,
      I4 => \next_state_reg_n_0_[0]\,
      I5 => \next_state_reg_n_0_[1]\,
      O => \next_state[0]_i_1_n_0\
    );
\next_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FF0"
    )
        port map (
      I0 => \send_index_reg_n_0_[1]\,
      I1 => \send_index_reg_n_0_[0]\,
      I2 => \next_state_reg_n_0_[0]\,
      I3 => s_axis_tready,
      O => \next_state[0]_i_2_n_0\
    );
\next_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => \buffer_index_reg_n_0_[1]\,
      I1 => \buffer_index_reg_n_0_[0]\,
      I2 => \next_state_reg_n_0_[0]\,
      I3 => start,
      O => \next_state[0]_i_3_n_0\
    );
\next_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AFF0F0F03030000"
    )
        port map (
      I0 => \next_state[2]_i_2_n_0\,
      I1 => data1(0),
      I2 => \next_state_reg_n_0_[2]\,
      I3 => \next_state[2]_i_3_n_0\,
      I4 => \next_state_reg_n_0_[0]\,
      I5 => \next_state_reg_n_0_[1]\,
      O => \next_state[1]_i_1_n_0\
    );
\next_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \buffer_index_reg_n_0_[1]\,
      I1 => \buffer_index_reg_n_0_[0]\,
      O => data1(0)
    );
\next_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00003350000000"
    )
        port map (
      I0 => \next_state[2]_i_2_n_0\,
      I1 => s_axis_tlast,
      I2 => \next_state[2]_i_3_n_0\,
      I3 => \next_state_reg_n_0_[0]\,
      I4 => \next_state_reg_n_0_[1]\,
      I5 => \next_state_reg_n_0_[2]\,
      O => \next_state[2]_i_1_n_0\
    );
\next_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \send_index_reg_n_0_[1]\,
      I1 => \send_index_reg_n_0_[0]\,
      I2 => s_axis_tready,
      O => \next_state[2]_i_2_n_0\
    );
\next_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \next_state_reg_n_0_[2]\,
      I1 => s_axis_tready,
      I2 => rst,
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      O => \next_state[2]_i_3_n_0\
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
\s_axis_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(0),
      I1 => \buffer_reg[3]\(0),
      I2 => \buffer_reg[0]\(0),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(0),
      O => s_axis_tdata0(0)
    );
\s_axis_tdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(10),
      I1 => \buffer_reg[3]\(10),
      I2 => \buffer_reg[0]\(10),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(10),
      O => s_axis_tdata0(10)
    );
\s_axis_tdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(11),
      I1 => \buffer_reg[3]\(11),
      I2 => \buffer_reg[0]\(11),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(11),
      O => s_axis_tdata0(11)
    );
\s_axis_tdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(12),
      I1 => \buffer_reg[3]\(12),
      I2 => \buffer_reg[0]\(12),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(12),
      O => s_axis_tdata0(12)
    );
\s_axis_tdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(13),
      I1 => \buffer_reg[3]\(13),
      I2 => \buffer_reg[0]\(13),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(13),
      O => s_axis_tdata0(13)
    );
\s_axis_tdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(14),
      I1 => \buffer_reg[3]\(14),
      I2 => \buffer_reg[0]\(14),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(14),
      O => s_axis_tdata0(14)
    );
\s_axis_tdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(15),
      I1 => \buffer_reg[3]\(15),
      I2 => \buffer_reg[0]\(15),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(15),
      O => s_axis_tdata0(15)
    );
\s_axis_tdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(16),
      I1 => \buffer_reg[3]\(16),
      I2 => \buffer_reg[0]\(16),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(16),
      O => s_axis_tdata0(16)
    );
\s_axis_tdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(17),
      I1 => \buffer_reg[3]\(17),
      I2 => \buffer_reg[0]\(17),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(17),
      O => s_axis_tdata0(17)
    );
\s_axis_tdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(18),
      I1 => \buffer_reg[3]\(18),
      I2 => \buffer_reg[0]\(18),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(18),
      O => s_axis_tdata0(18)
    );
\s_axis_tdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(19),
      I1 => \buffer_reg[3]\(19),
      I2 => \buffer_reg[0]\(19),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(19),
      O => s_axis_tdata0(19)
    );
\s_axis_tdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(1),
      I1 => \buffer_reg[3]\(1),
      I2 => \buffer_reg[0]\(1),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(1),
      O => s_axis_tdata0(1)
    );
\s_axis_tdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(20),
      I1 => \buffer_reg[3]\(20),
      I2 => \buffer_reg[0]\(20),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(20),
      O => s_axis_tdata0(20)
    );
\s_axis_tdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(21),
      I1 => \buffer_reg[3]\(21),
      I2 => \buffer_reg[0]\(21),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(21),
      O => s_axis_tdata0(21)
    );
\s_axis_tdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(22),
      I1 => \buffer_reg[3]\(22),
      I2 => \buffer_reg[0]\(22),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(22),
      O => s_axis_tdata0(22)
    );
\s_axis_tdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(23),
      I1 => \buffer_reg[3]\(23),
      I2 => \buffer_reg[0]\(23),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(23),
      O => s_axis_tdata0(23)
    );
\s_axis_tdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(24),
      I1 => \buffer_reg[3]\(24),
      I2 => \buffer_reg[0]\(24),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(24),
      O => s_axis_tdata0(24)
    );
\s_axis_tdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(25),
      I1 => \buffer_reg[3]\(25),
      I2 => \buffer_reg[0]\(25),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(25),
      O => s_axis_tdata0(25)
    );
\s_axis_tdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(26),
      I1 => \buffer_reg[3]\(26),
      I2 => \buffer_reg[0]\(26),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(26),
      O => s_axis_tdata0(26)
    );
\s_axis_tdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(27),
      I1 => \buffer_reg[3]\(27),
      I2 => \buffer_reg[0]\(27),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(27),
      O => s_axis_tdata0(27)
    );
\s_axis_tdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(28),
      I1 => \buffer_reg[3]\(28),
      I2 => \buffer_reg[0]\(28),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(28),
      O => s_axis_tdata0(28)
    );
\s_axis_tdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(29),
      I1 => \buffer_reg[3]\(29),
      I2 => \buffer_reg[0]\(29),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(29),
      O => s_axis_tdata0(29)
    );
\s_axis_tdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(2),
      I1 => \buffer_reg[3]\(2),
      I2 => \buffer_reg[0]\(2),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(2),
      O => s_axis_tdata0(2)
    );
\s_axis_tdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(30),
      I1 => \buffer_reg[3]\(30),
      I2 => \buffer_reg[0]\(30),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(30),
      O => s_axis_tdata0(30)
    );
\s_axis_tdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s_axis_tready,
      I1 => \next_state_reg_n_0_[2]\,
      I2 => \next_state_reg_n_0_[0]\,
      I3 => \next_state_reg_n_0_[1]\,
      O => \s_axis_tdata[31]_i_1_n_0\
    );
\s_axis_tdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(31),
      I1 => \buffer_reg[3]\(31),
      I2 => \buffer_reg[0]\(31),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(31),
      O => s_axis_tdata0(31)
    );
\s_axis_tdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(3),
      I1 => \buffer_reg[3]\(3),
      I2 => \buffer_reg[0]\(3),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(3),
      O => s_axis_tdata0(3)
    );
\s_axis_tdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(4),
      I1 => \buffer_reg[3]\(4),
      I2 => \buffer_reg[0]\(4),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(4),
      O => s_axis_tdata0(4)
    );
\s_axis_tdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(5),
      I1 => \buffer_reg[3]\(5),
      I2 => \buffer_reg[0]\(5),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(5),
      O => s_axis_tdata0(5)
    );
\s_axis_tdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(6),
      I1 => \buffer_reg[3]\(6),
      I2 => \buffer_reg[0]\(6),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(6),
      O => s_axis_tdata0(6)
    );
\s_axis_tdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(7),
      I1 => \buffer_reg[3]\(7),
      I2 => \buffer_reg[0]\(7),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(7),
      O => s_axis_tdata0(7)
    );
\s_axis_tdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(8),
      I1 => \buffer_reg[3]\(8),
      I2 => \buffer_reg[0]\(8),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(8),
      O => s_axis_tdata0(8)
    );
\s_axis_tdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \buffer_reg[2]\(9),
      I1 => \buffer_reg[3]\(9),
      I2 => \buffer_reg[0]\(9),
      I3 => \send_index_reg_n_0_[1]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \buffer_reg[1]\(9),
      O => s_axis_tdata0(9)
    );
\s_axis_tdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(0),
      Q => s_axis_tdata(0)
    );
\s_axis_tdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(10),
      Q => s_axis_tdata(10)
    );
\s_axis_tdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(11),
      Q => s_axis_tdata(11)
    );
\s_axis_tdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(12),
      Q => s_axis_tdata(12)
    );
\s_axis_tdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(13),
      Q => s_axis_tdata(13)
    );
\s_axis_tdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(14),
      Q => s_axis_tdata(14)
    );
\s_axis_tdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(15),
      Q => s_axis_tdata(15)
    );
\s_axis_tdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(16),
      Q => s_axis_tdata(16)
    );
\s_axis_tdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(17),
      Q => s_axis_tdata(17)
    );
\s_axis_tdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(18),
      Q => s_axis_tdata(18)
    );
\s_axis_tdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(19),
      Q => s_axis_tdata(19)
    );
\s_axis_tdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(1),
      Q => s_axis_tdata(1)
    );
\s_axis_tdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(20),
      Q => s_axis_tdata(20)
    );
\s_axis_tdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(21),
      Q => s_axis_tdata(21)
    );
\s_axis_tdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(22),
      Q => s_axis_tdata(22)
    );
\s_axis_tdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(23),
      Q => s_axis_tdata(23)
    );
\s_axis_tdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(24),
      Q => s_axis_tdata(24)
    );
\s_axis_tdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(25),
      Q => s_axis_tdata(25)
    );
\s_axis_tdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(26),
      Q => s_axis_tdata(26)
    );
\s_axis_tdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(27),
      Q => s_axis_tdata(27)
    );
\s_axis_tdata_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(28),
      Q => s_axis_tdata(28)
    );
\s_axis_tdata_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(29),
      Q => s_axis_tdata(29)
    );
\s_axis_tdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(2),
      Q => s_axis_tdata(2)
    );
\s_axis_tdata_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(30),
      Q => s_axis_tdata(30)
    );
\s_axis_tdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(31),
      Q => s_axis_tdata(31)
    );
\s_axis_tdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(3),
      Q => s_axis_tdata(3)
    );
\s_axis_tdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(4),
      Q => s_axis_tdata(4)
    );
\s_axis_tdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(5),
      Q => s_axis_tdata(5)
    );
\s_axis_tdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(6),
      Q => s_axis_tdata(6)
    );
\s_axis_tdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(7),
      Q => s_axis_tdata(7)
    );
\s_axis_tdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(8),
      Q => s_axis_tdata(8)
    );
\s_axis_tdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axis_tdata[31]_i_1_n_0\,
      CLR => rst,
      D => s_axis_tdata0(9),
      Q => s_axis_tdata(9)
    );
\send_index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF4000BFBF4000"
    )
        port map (
      I0 => \next_state_reg_n_0_[2]\,
      I1 => \next_state_reg_n_0_[1]\,
      I2 => s_axis_tready,
      I3 => \next_state_reg_n_0_[0]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \send_index_reg_n_0_[1]\,
      O => \send_index[0]_i_1_n_0\
    );
\send_index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFBF40000000"
    )
        port map (
      I0 => \next_state_reg_n_0_[2]\,
      I1 => \next_state_reg_n_0_[1]\,
      I2 => s_axis_tready,
      I3 => \next_state_reg_n_0_[0]\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \send_index_reg_n_0_[1]\,
      O => \send_index[1]_i_1_n_0\
    );
\send_index_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \send_index[0]_i_1_n_0\,
      Q => \send_index_reg_n_0_[0]\
    );
\send_index_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \send_index[1]_i_1_n_0\,
      Q => \send_index_reg_n_0_[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo2axis_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    start : in STD_LOGIC;
    s_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : out STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    start_accel : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_fifo2axis_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fifo2axis_0_0 : entity is "design_1_fifo2axis_0_0,fifo2axis,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_fifo2axis_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_fifo2axis_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_fifo2axis_0_0 : entity is "fifo2axis,Vivado 2023.2";
end design_1_fifo2axis_0_0;

architecture STRUCTURE of design_1_fifo2axis_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  s_axis_tvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_fifo2axis_0_0_fifo2axis
     port map (
      clk => clk,
      fifo_data(31 downto 0) => fifo_data(31 downto 0),
      rst => rst,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      start => start
    );
start_accel_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => start_accel
    );
end STRUCTURE;
