-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Aug 15 18:29:19 2025
-- Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo_out_0_0_sim_netlist.vhdl
-- Design      : design_1_fifo_out_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_out is
  port (
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_ready : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_out;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_out is
  signal FSM_sequential_state_i_1_n_0 : STD_LOGIC;
  signal FSM_sequential_state_reg_n_0 : STD_LOGIC;
  signal can_read_i_1_n_0 : STD_LOGIC;
  signal can_read_reg_n_0 : STD_LOGIC;
  signal \dout[31]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_data_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_data_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_data_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_data_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \fifo_data_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \fifo_data_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \mem[0][31]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \mem[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \mem[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \mem_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \mem_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \mem_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd_ptr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rd_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal wr_ptr0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wr_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FSM_sequential_state_i_1 : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_state_reg : label is "IDLE:0,READ:1,WAIT:10,";
  attribute SOFT_HLUTNM of can_read_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of empty_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fifo_data_count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifo_data_count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of full_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rd_ptr[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rd_ptr[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_ptr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_ptr[1]_i_2\ : label is "soft_lutpair4";
begin
FSM_sequential_state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => data_ready,
      I1 => \fifo_data_count_reg_n_0_[2]\,
      I2 => FSM_sequential_state_reg_n_0,
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
can_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \fifo_data_count_reg_n_0_[2]\,
      I1 => data_ready,
      I2 => FSM_sequential_state_reg_n_0,
      I3 => can_read_reg_n_0,
      O => can_read_i_1_n_0
    );
can_read_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => can_read_i_1_n_0,
      Q => can_read_reg_n_0
    );
\dout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(0),
      I1 => \mem_reg[0]\(0),
      I2 => \mem_reg[3]\(0),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(0),
      O => p_0_in(0)
    );
\dout[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(10),
      I1 => \mem_reg[0]\(10),
      I2 => \mem_reg[3]\(10),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(10),
      O => p_0_in(10)
    );
\dout[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(11),
      I1 => \mem_reg[0]\(11),
      I2 => \mem_reg[3]\(11),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(11),
      O => p_0_in(11)
    );
\dout[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(12),
      I1 => \mem_reg[0]\(12),
      I2 => \mem_reg[3]\(12),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(12),
      O => p_0_in(12)
    );
\dout[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(13),
      I1 => \mem_reg[0]\(13),
      I2 => \mem_reg[3]\(13),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(13),
      O => p_0_in(13)
    );
\dout[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(14),
      I1 => \mem_reg[0]\(14),
      I2 => \mem_reg[3]\(14),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(14),
      O => p_0_in(14)
    );
\dout[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(15),
      I1 => \mem_reg[0]\(15),
      I2 => \mem_reg[3]\(15),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(15),
      O => p_0_in(15)
    );
\dout[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(16),
      I1 => \mem_reg[0]\(16),
      I2 => \mem_reg[3]\(16),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(16),
      O => p_0_in(16)
    );
\dout[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(17),
      I1 => \mem_reg[0]\(17),
      I2 => \mem_reg[3]\(17),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(17),
      O => p_0_in(17)
    );
\dout[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(18),
      I1 => \mem_reg[0]\(18),
      I2 => \mem_reg[3]\(18),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(18),
      O => p_0_in(18)
    );
\dout[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(19),
      I1 => \mem_reg[0]\(19),
      I2 => \mem_reg[3]\(19),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(19),
      O => p_0_in(19)
    );
\dout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(1),
      I1 => \mem_reg[0]\(1),
      I2 => \mem_reg[3]\(1),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(1),
      O => p_0_in(1)
    );
\dout[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(20),
      I1 => \mem_reg[0]\(20),
      I2 => \mem_reg[3]\(20),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(20),
      O => p_0_in(20)
    );
\dout[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(21),
      I1 => \mem_reg[0]\(21),
      I2 => \mem_reg[3]\(21),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(21),
      O => p_0_in(21)
    );
\dout[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(22),
      I1 => \mem_reg[0]\(22),
      I2 => \mem_reg[3]\(22),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(22),
      O => p_0_in(22)
    );
\dout[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(23),
      I1 => \mem_reg[0]\(23),
      I2 => \mem_reg[3]\(23),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(23),
      O => p_0_in(23)
    );
\dout[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(24),
      I1 => \mem_reg[0]\(24),
      I2 => \mem_reg[3]\(24),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(24),
      O => p_0_in(24)
    );
\dout[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(25),
      I1 => \mem_reg[0]\(25),
      I2 => \mem_reg[3]\(25),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(25),
      O => p_0_in(25)
    );
\dout[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(26),
      I1 => \mem_reg[0]\(26),
      I2 => \mem_reg[3]\(26),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(26),
      O => p_0_in(26)
    );
\dout[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(27),
      I1 => \mem_reg[0]\(27),
      I2 => \mem_reg[3]\(27),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(27),
      O => p_0_in(27)
    );
\dout[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(28),
      I1 => \mem_reg[0]\(28),
      I2 => \mem_reg[3]\(28),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(28),
      O => p_0_in(28)
    );
\dout[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(29),
      I1 => \mem_reg[0]\(29),
      I2 => \mem_reg[3]\(29),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(29),
      O => p_0_in(29)
    );
\dout[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(2),
      I1 => \mem_reg[0]\(2),
      I2 => \mem_reg[3]\(2),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(2),
      O => p_0_in(2)
    );
\dout[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(30),
      I1 => \mem_reg[0]\(30),
      I2 => \mem_reg[3]\(30),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(30),
      O => p_0_in(30)
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
      I0 => \mem_reg[1]\(31),
      I1 => \mem_reg[0]\(31),
      I2 => \mem_reg[3]\(31),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(31),
      O => p_0_in(31)
    );
\dout[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(3),
      I1 => \mem_reg[0]\(3),
      I2 => \mem_reg[3]\(3),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(3),
      O => p_0_in(3)
    );
\dout[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(4),
      I1 => \mem_reg[0]\(4),
      I2 => \mem_reg[3]\(4),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(4),
      O => p_0_in(4)
    );
\dout[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(5),
      I1 => \mem_reg[0]\(5),
      I2 => \mem_reg[3]\(5),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(5),
      O => p_0_in(5)
    );
\dout[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(6),
      I1 => \mem_reg[0]\(6),
      I2 => \mem_reg[3]\(6),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(6),
      O => p_0_in(6)
    );
\dout[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(7),
      I1 => \mem_reg[0]\(7),
      I2 => \mem_reg[3]\(7),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(7),
      O => p_0_in(7)
    );
\dout[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(8),
      I1 => \mem_reg[0]\(8),
      I2 => \mem_reg[3]\(8),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(8),
      O => p_0_in(8)
    );
\dout[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \mem_reg[1]\(9),
      I1 => \mem_reg[0]\(9),
      I2 => \mem_reg[3]\(9),
      I3 => rd_ptr(1),
      I4 => rd_ptr(0),
      I5 => \mem_reg[2]\(9),
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
empty_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \fifo_data_count_reg_n_0_[2]\,
      I1 => \fifo_data_count_reg_n_0_[1]\,
      I2 => \fifo_data_count_reg_n_0_[0]\,
      O => empty
    );
\fifo_data_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_data_count_reg_n_0_[2]\,
      I1 => \fifo_data_count_reg_n_0_[0]\,
      O => \fifo_data_count[0]_i_1_n_0\
    );
\fifo_data_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \fifo_data_count_reg_n_0_[1]\,
      I1 => \fifo_data_count_reg_n_0_[0]\,
      I2 => \fifo_data_count_reg_n_0_[2]\,
      O => \fifo_data_count[1]_i_1_n_0\
    );
\fifo_data_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \fifo_data_count_reg_n_0_[1]\,
      I1 => \fifo_data_count_reg_n_0_[0]\,
      I2 => \fifo_data_count_reg_n_0_[2]\,
      O => \fifo_data_count[2]_i_1_n_0\
    );
\fifo_data_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wr_ptr[1]_i_1_n_0\,
      CLR => rst,
      D => \fifo_data_count[0]_i_1_n_0\,
      Q => \fifo_data_count_reg_n_0_[0]\
    );
\fifo_data_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wr_ptr[1]_i_1_n_0\,
      CLR => rst,
      D => \fifo_data_count[1]_i_1_n_0\,
      Q => \fifo_data_count_reg_n_0_[1]\
    );
\fifo_data_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wr_ptr[1]_i_1_n_0\,
      CLR => rst,
      D => \fifo_data_count[2]_i_1_n_0\,
      Q => \fifo_data_count_reg_n_0_[2]\
    );
full_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \fifo_data_count_reg_n_0_[1]\,
      I1 => \fifo_data_count_reg_n_0_[2]\,
      I2 => \fifo_data_count_reg_n_0_[0]\,
      O => full
    );
\mem[0][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => FSM_sequential_state_reg_n_0,
      I1 => data_ready,
      I2 => \wr_ptr_reg_n_0_[1]\,
      I3 => \wr_ptr_reg_n_0_[0]\,
      I4 => rst,
      O => \mem[0][31]_i_1_n_0\
    );
\mem[1][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => FSM_sequential_state_reg_n_0,
      I1 => data_ready,
      I2 => \wr_ptr_reg_n_0_[1]\,
      I3 => \wr_ptr_reg_n_0_[0]\,
      I4 => rst,
      O => \mem[1][31]_i_1_n_0\
    );
\mem[2][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => FSM_sequential_state_reg_n_0,
      I1 => data_ready,
      I2 => \wr_ptr_reg_n_0_[0]\,
      I3 => \wr_ptr_reg_n_0_[1]\,
      I4 => rst,
      O => \mem[2][31]_i_1_n_0\
    );
\mem[3][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => FSM_sequential_state_reg_n_0,
      I1 => data_ready,
      I2 => \wr_ptr_reg_n_0_[1]\,
      I3 => \wr_ptr_reg_n_0_[0]\,
      I4 => rst,
      O => \mem[3][31]_i_1_n_0\
    );
\mem_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(0),
      Q => \mem_reg[0]\(0),
      R => '0'
    );
\mem_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(10),
      Q => \mem_reg[0]\(10),
      R => '0'
    );
\mem_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(11),
      Q => \mem_reg[0]\(11),
      R => '0'
    );
\mem_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(12),
      Q => \mem_reg[0]\(12),
      R => '0'
    );
\mem_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(13),
      Q => \mem_reg[0]\(13),
      R => '0'
    );
\mem_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(14),
      Q => \mem_reg[0]\(14),
      R => '0'
    );
\mem_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(15),
      Q => \mem_reg[0]\(15),
      R => '0'
    );
\mem_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(16),
      Q => \mem_reg[0]\(16),
      R => '0'
    );
\mem_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(17),
      Q => \mem_reg[0]\(17),
      R => '0'
    );
\mem_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(18),
      Q => \mem_reg[0]\(18),
      R => '0'
    );
\mem_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(19),
      Q => \mem_reg[0]\(19),
      R => '0'
    );
\mem_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(1),
      Q => \mem_reg[0]\(1),
      R => '0'
    );
\mem_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(20),
      Q => \mem_reg[0]\(20),
      R => '0'
    );
\mem_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(21),
      Q => \mem_reg[0]\(21),
      R => '0'
    );
\mem_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(22),
      Q => \mem_reg[0]\(22),
      R => '0'
    );
\mem_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(23),
      Q => \mem_reg[0]\(23),
      R => '0'
    );
\mem_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(24),
      Q => \mem_reg[0]\(24),
      R => '0'
    );
\mem_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(25),
      Q => \mem_reg[0]\(25),
      R => '0'
    );
\mem_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(26),
      Q => \mem_reg[0]\(26),
      R => '0'
    );
\mem_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(27),
      Q => \mem_reg[0]\(27),
      R => '0'
    );
\mem_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(28),
      Q => \mem_reg[0]\(28),
      R => '0'
    );
\mem_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(29),
      Q => \mem_reg[0]\(29),
      R => '0'
    );
\mem_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(2),
      Q => \mem_reg[0]\(2),
      R => '0'
    );
\mem_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(30),
      Q => \mem_reg[0]\(30),
      R => '0'
    );
\mem_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(31),
      Q => \mem_reg[0]\(31),
      R => '0'
    );
\mem_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(3),
      Q => \mem_reg[0]\(3),
      R => '0'
    );
\mem_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(4),
      Q => \mem_reg[0]\(4),
      R => '0'
    );
\mem_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(5),
      Q => \mem_reg[0]\(5),
      R => '0'
    );
\mem_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(6),
      Q => \mem_reg[0]\(6),
      R => '0'
    );
\mem_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(7),
      Q => \mem_reg[0]\(7),
      R => '0'
    );
\mem_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(8),
      Q => \mem_reg[0]\(8),
      R => '0'
    );
\mem_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[0][31]_i_1_n_0\,
      D => din(9),
      Q => \mem_reg[0]\(9),
      R => '0'
    );
\mem_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(0),
      Q => \mem_reg[1]\(0),
      R => '0'
    );
\mem_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(10),
      Q => \mem_reg[1]\(10),
      R => '0'
    );
\mem_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(11),
      Q => \mem_reg[1]\(11),
      R => '0'
    );
\mem_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(12),
      Q => \mem_reg[1]\(12),
      R => '0'
    );
\mem_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(13),
      Q => \mem_reg[1]\(13),
      R => '0'
    );
\mem_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(14),
      Q => \mem_reg[1]\(14),
      R => '0'
    );
\mem_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(15),
      Q => \mem_reg[1]\(15),
      R => '0'
    );
\mem_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(16),
      Q => \mem_reg[1]\(16),
      R => '0'
    );
\mem_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(17),
      Q => \mem_reg[1]\(17),
      R => '0'
    );
\mem_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(18),
      Q => \mem_reg[1]\(18),
      R => '0'
    );
\mem_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(19),
      Q => \mem_reg[1]\(19),
      R => '0'
    );
\mem_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(1),
      Q => \mem_reg[1]\(1),
      R => '0'
    );
\mem_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(20),
      Q => \mem_reg[1]\(20),
      R => '0'
    );
\mem_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(21),
      Q => \mem_reg[1]\(21),
      R => '0'
    );
\mem_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(22),
      Q => \mem_reg[1]\(22),
      R => '0'
    );
\mem_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(23),
      Q => \mem_reg[1]\(23),
      R => '0'
    );
\mem_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(24),
      Q => \mem_reg[1]\(24),
      R => '0'
    );
\mem_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(25),
      Q => \mem_reg[1]\(25),
      R => '0'
    );
\mem_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(26),
      Q => \mem_reg[1]\(26),
      R => '0'
    );
\mem_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(27),
      Q => \mem_reg[1]\(27),
      R => '0'
    );
\mem_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(28),
      Q => \mem_reg[1]\(28),
      R => '0'
    );
\mem_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(29),
      Q => \mem_reg[1]\(29),
      R => '0'
    );
\mem_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(2),
      Q => \mem_reg[1]\(2),
      R => '0'
    );
\mem_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(30),
      Q => \mem_reg[1]\(30),
      R => '0'
    );
\mem_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(31),
      Q => \mem_reg[1]\(31),
      R => '0'
    );
\mem_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(3),
      Q => \mem_reg[1]\(3),
      R => '0'
    );
\mem_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(4),
      Q => \mem_reg[1]\(4),
      R => '0'
    );
\mem_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(5),
      Q => \mem_reg[1]\(5),
      R => '0'
    );
\mem_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(6),
      Q => \mem_reg[1]\(6),
      R => '0'
    );
\mem_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(7),
      Q => \mem_reg[1]\(7),
      R => '0'
    );
\mem_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(8),
      Q => \mem_reg[1]\(8),
      R => '0'
    );
\mem_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[1][31]_i_1_n_0\,
      D => din(9),
      Q => \mem_reg[1]\(9),
      R => '0'
    );
\mem_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(0),
      Q => \mem_reg[2]\(0),
      R => '0'
    );
\mem_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(10),
      Q => \mem_reg[2]\(10),
      R => '0'
    );
\mem_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(11),
      Q => \mem_reg[2]\(11),
      R => '0'
    );
\mem_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(12),
      Q => \mem_reg[2]\(12),
      R => '0'
    );
\mem_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(13),
      Q => \mem_reg[2]\(13),
      R => '0'
    );
\mem_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(14),
      Q => \mem_reg[2]\(14),
      R => '0'
    );
\mem_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(15),
      Q => \mem_reg[2]\(15),
      R => '0'
    );
\mem_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(16),
      Q => \mem_reg[2]\(16),
      R => '0'
    );
\mem_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(17),
      Q => \mem_reg[2]\(17),
      R => '0'
    );
\mem_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(18),
      Q => \mem_reg[2]\(18),
      R => '0'
    );
\mem_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(19),
      Q => \mem_reg[2]\(19),
      R => '0'
    );
\mem_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(1),
      Q => \mem_reg[2]\(1),
      R => '0'
    );
\mem_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(20),
      Q => \mem_reg[2]\(20),
      R => '0'
    );
\mem_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(21),
      Q => \mem_reg[2]\(21),
      R => '0'
    );
\mem_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(22),
      Q => \mem_reg[2]\(22),
      R => '0'
    );
\mem_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(23),
      Q => \mem_reg[2]\(23),
      R => '0'
    );
\mem_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(24),
      Q => \mem_reg[2]\(24),
      R => '0'
    );
\mem_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(25),
      Q => \mem_reg[2]\(25),
      R => '0'
    );
\mem_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(26),
      Q => \mem_reg[2]\(26),
      R => '0'
    );
\mem_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(27),
      Q => \mem_reg[2]\(27),
      R => '0'
    );
\mem_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(28),
      Q => \mem_reg[2]\(28),
      R => '0'
    );
\mem_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(29),
      Q => \mem_reg[2]\(29),
      R => '0'
    );
\mem_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(2),
      Q => \mem_reg[2]\(2),
      R => '0'
    );
\mem_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(30),
      Q => \mem_reg[2]\(30),
      R => '0'
    );
\mem_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(31),
      Q => \mem_reg[2]\(31),
      R => '0'
    );
\mem_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(3),
      Q => \mem_reg[2]\(3),
      R => '0'
    );
\mem_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(4),
      Q => \mem_reg[2]\(4),
      R => '0'
    );
\mem_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(5),
      Q => \mem_reg[2]\(5),
      R => '0'
    );
\mem_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(6),
      Q => \mem_reg[2]\(6),
      R => '0'
    );
\mem_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(7),
      Q => \mem_reg[2]\(7),
      R => '0'
    );
\mem_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(8),
      Q => \mem_reg[2]\(8),
      R => '0'
    );
\mem_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[2][31]_i_1_n_0\,
      D => din(9),
      Q => \mem_reg[2]\(9),
      R => '0'
    );
\mem_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(0),
      Q => \mem_reg[3]\(0),
      R => '0'
    );
\mem_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(10),
      Q => \mem_reg[3]\(10),
      R => '0'
    );
\mem_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(11),
      Q => \mem_reg[3]\(11),
      R => '0'
    );
\mem_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(12),
      Q => \mem_reg[3]\(12),
      R => '0'
    );
\mem_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(13),
      Q => \mem_reg[3]\(13),
      R => '0'
    );
\mem_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(14),
      Q => \mem_reg[3]\(14),
      R => '0'
    );
\mem_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(15),
      Q => \mem_reg[3]\(15),
      R => '0'
    );
\mem_reg[3][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(16),
      Q => \mem_reg[3]\(16),
      R => '0'
    );
\mem_reg[3][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(17),
      Q => \mem_reg[3]\(17),
      R => '0'
    );
\mem_reg[3][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(18),
      Q => \mem_reg[3]\(18),
      R => '0'
    );
\mem_reg[3][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(19),
      Q => \mem_reg[3]\(19),
      R => '0'
    );
\mem_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(1),
      Q => \mem_reg[3]\(1),
      R => '0'
    );
\mem_reg[3][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(20),
      Q => \mem_reg[3]\(20),
      R => '0'
    );
\mem_reg[3][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(21),
      Q => \mem_reg[3]\(21),
      R => '0'
    );
\mem_reg[3][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(22),
      Q => \mem_reg[3]\(22),
      R => '0'
    );
\mem_reg[3][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(23),
      Q => \mem_reg[3]\(23),
      R => '0'
    );
\mem_reg[3][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(24),
      Q => \mem_reg[3]\(24),
      R => '0'
    );
\mem_reg[3][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(25),
      Q => \mem_reg[3]\(25),
      R => '0'
    );
\mem_reg[3][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(26),
      Q => \mem_reg[3]\(26),
      R => '0'
    );
\mem_reg[3][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(27),
      Q => \mem_reg[3]\(27),
      R => '0'
    );
\mem_reg[3][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(28),
      Q => \mem_reg[3]\(28),
      R => '0'
    );
\mem_reg[3][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(29),
      Q => \mem_reg[3]\(29),
      R => '0'
    );
\mem_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(2),
      Q => \mem_reg[3]\(2),
      R => '0'
    );
\mem_reg[3][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(30),
      Q => \mem_reg[3]\(30),
      R => '0'
    );
\mem_reg[3][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(31),
      Q => \mem_reg[3]\(31),
      R => '0'
    );
\mem_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(3),
      Q => \mem_reg[3]\(3),
      R => '0'
    );
\mem_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(4),
      Q => \mem_reg[3]\(4),
      R => '0'
    );
\mem_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(5),
      Q => \mem_reg[3]\(5),
      R => '0'
    );
\mem_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(6),
      Q => \mem_reg[3]\(6),
      R => '0'
    );
\mem_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(7),
      Q => \mem_reg[3]\(7),
      R => '0'
    );
\mem_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(8),
      Q => \mem_reg[3]\(8),
      R => '0'
    );
\mem_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem[3][31]_i_1_n_0\,
      D => din(9),
      Q => \mem_reg[3]\(9),
      R => '0'
    );
\rd_ptr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => can_read_reg_n_0,
      I1 => FSM_sequential_state_reg_n_0,
      I2 => rd_ptr(0),
      O => \rd_ptr[0]_i_1_n_0\
    );
\rd_ptr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_ptr(0),
      I1 => FSM_sequential_state_reg_n_0,
      I2 => can_read_reg_n_0,
      I3 => rd_ptr(1),
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
\wr_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_ready,
      I1 => FSM_sequential_state_reg_n_0,
      O => \wr_ptr[1]_i_1_n_0\
    );
\wr_ptr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_reg_n_0_[0]\,
      I1 => \wr_ptr_reg_n_0_[1]\,
      O => wr_ptr0(1)
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
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_ready : in STD_LOGIC;
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_fifo_out_0_0,fifo_out,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fifo_out,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_out
     port map (
      clk => clk,
      data_ready => data_ready,
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      rst => rst
    );
end STRUCTURE;
