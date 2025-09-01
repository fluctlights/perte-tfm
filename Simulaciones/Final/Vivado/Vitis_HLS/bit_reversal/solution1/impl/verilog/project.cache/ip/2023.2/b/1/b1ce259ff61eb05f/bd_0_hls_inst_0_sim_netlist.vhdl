-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue Aug  5 00:31:46 2025
-- Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_flow_control_loop_pipe is
  port (
    ap_loop_init : out STD_LOGIC;
    \B_V_data_1_state_reg[0]\ : out STD_LOGIC;
    \i_fu_72_reg[1]\ : out STD_LOGIC;
    \B_V_data_1_state_reg[0]_0\ : out STD_LOGIC;
    \output_word_last_reg_167_reg[0]\ : out STD_LOGIC;
    ap_loop_init_reg_0 : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    s_axis_TVALID_int_regslice : in STD_LOGIC;
    \i_fu_72_reg[2]\ : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    \i_fu_72_reg[2]_0\ : in STD_LOGIC;
    \i_fu_72_reg[1]_0\ : in STD_LOGIC;
    \output_word_last_reg_167_reg[0]_0\ : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_flow_control_loop_pipe;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_flow_control_loop_pipe is
  signal \^ap_loop_init\ : STD_LOGIC;
  signal ap_loop_init_i_1_n_3 : STD_LOGIC;
  signal \i_fu_72[1]_i_2_n_3\ : STD_LOGIC;
  signal \i_fu_72[2]_i_2_n_3\ : STD_LOGIC;
  signal \^i_fu_72_reg[1]\ : STD_LOGIC;
  signal \output_word_last_reg_167[0]_i_2_n_3\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_done_INST_0_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_fu_72[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_fu_72[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \output_word_last_reg_167[0]_i_2\ : label is "soft_lutpair0";
begin
  ap_loop_init <= \^ap_loop_init\;
  \i_fu_72_reg[1]\ <= \^i_fu_72_reg[1]\;
\B_V_data_1_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0010FFFF"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => ap_loop_exit_ready_pp0_iter1_reg_reg,
      I2 => \i_fu_72_reg[2]_0\,
      I3 => \i_fu_72_reg[1]_0\,
      I4 => ap_start,
      I5 => s_axis_TVALID_int_regslice,
      O => ap_loop_init_reg_0
    );
ap_done_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \i_fu_72_reg[1]_0\,
      I1 => \i_fu_72_reg[2]_0\,
      I2 => ap_loop_exit_ready_pp0_iter1_reg_reg,
      I3 => \^ap_loop_init\,
      O => \^i_fu_72_reg[1]\
    );
ap_loop_init_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFCFCFFF4FCFCF"
    )
        port map (
      I0 => s_axis_TVALID_int_regslice,
      I1 => \^ap_loop_init\,
      I2 => ap_rst_n,
      I3 => \^i_fu_72_reg[1]\,
      I4 => ap_start,
      I5 => \i_fu_72_reg[2]\,
      O => ap_loop_init_i_1_n_3
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_i_1_n_3,
      Q => \^ap_loop_init\,
      R => '0'
    );
ap_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => ap_loop_exit_ready_pp0_iter1_reg_reg,
      I2 => \i_fu_72_reg[2]_0\,
      I3 => \i_fu_72_reg[1]_0\,
      I4 => ap_start,
      I5 => \i_fu_72_reg[2]\,
      O => ap_ready
    );
\i_fu_72[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00000400"
    )
        port map (
      I0 => \i_fu_72[1]_i_2_n_3\,
      I1 => s_axis_TVALID_int_regslice,
      I2 => \i_fu_72_reg[2]\,
      I3 => ap_start,
      I4 => \^i_fu_72_reg[1]\,
      I5 => \i_fu_72_reg[1]_0\,
      O => \B_V_data_1_state_reg[0]_0\
    );
\i_fu_72[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F88F"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => ap_start,
      I2 => ap_loop_exit_ready_pp0_iter1_reg_reg,
      I3 => \i_fu_72_reg[1]_0\,
      O => \i_fu_72[1]_i_2_n_3\
    );
\i_fu_72[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => \i_fu_72[2]_i_2_n_3\,
      I1 => s_axis_TVALID_int_regslice,
      I2 => \i_fu_72_reg[2]\,
      I3 => ap_start,
      I4 => \^i_fu_72_reg[1]\,
      I5 => \i_fu_72_reg[2]_0\,
      O => \B_V_data_1_state_reg[0]\
    );
\i_fu_72[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07707000"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => ap_start,
      I2 => ap_loop_exit_ready_pp0_iter1_reg_reg,
      I3 => \i_fu_72_reg[1]_0\,
      I4 => \i_fu_72_reg[2]_0\,
      O => \i_fu_72[2]_i_2_n_3\
    );
\output_word_last_reg_167[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCFF4F0040"
    )
        port map (
      I0 => \^i_fu_72_reg[1]\,
      I1 => \output_word_last_reg_167_reg[0]_0\,
      I2 => ap_start,
      I3 => s_axis_TVALID_int_regslice,
      I4 => \output_word_last_reg_167[0]_i_2_n_3\,
      I5 => \i_fu_72_reg[2]\,
      O => \output_word_last_reg_167_reg[0]\
    );
\output_word_last_reg_167[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007000"
    )
        port map (
      I0 => ap_start,
      I1 => \^ap_loop_init\,
      I2 => ap_loop_exit_ready_pp0_iter1_reg_reg,
      I3 => \i_fu_72_reg[1]_0\,
      I4 => \i_fu_72_reg[2]_0\,
      O => \output_word_last_reg_167[0]_i_2_n_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both is
  port (
    m_axis_TREADY_int_regslice : out STD_LOGIC;
    \B_V_data_1_state_reg[0]_0\ : out STD_LOGIC;
    \B_V_data_1_state_reg[0]_1\ : out STD_LOGIC;
    \B_V_data_1_state_reg[1]_0\ : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    m_axis_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    m_axis_TREADY : in STD_LOGIC;
    \B_V_data_1_state_reg[0]_2\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    B_V_data_1_sel_wr_reg_0 : in STD_LOGIC;
    B_V_data_1_sel_wr : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both is
  signal B_V_data_1_load_A : STD_LOGIC;
  signal B_V_data_1_load_B : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[0]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[10]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[11]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[12]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[13]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[14]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[15]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[16]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[17]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[18]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[19]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[1]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[20]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[21]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[22]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[23]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[24]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[25]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[26]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[27]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[28]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[29]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[2]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[30]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[31]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[3]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[4]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[5]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[6]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[7]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[8]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[9]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[0]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[10]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[11]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[12]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[13]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[14]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[15]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[16]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[17]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[18]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[19]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[1]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[20]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[21]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[22]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[23]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[24]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[25]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[26]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[27]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[28]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[29]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[2]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[30]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[31]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[3]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[4]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[5]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[6]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[7]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[8]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[9]\ : STD_LOGIC;
  signal B_V_data_1_sel_rd_i_1_n_3 : STD_LOGIC;
  signal B_V_data_1_sel_rd_reg_n_3 : STD_LOGIC;
  signal B_V_data_1_sel_wr_0 : STD_LOGIC;
  signal \B_V_data_1_sel_wr_i_1__1_n_3\ : STD_LOGIC;
  signal B_V_data_1_sel_wr_i_2_n_3 : STD_LOGIC;
  signal B_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \B_V_data_1_state[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \^b_v_data_1_state_reg[0]_0\ : STD_LOGIC;
  signal \^m_axis_tready_int_regslice\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of B_V_data_1_sel_rd_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of B_V_data_1_sel_wr_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \B_V_data_1_state[1]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ap_done_INST_0_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_TDATA[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_TDATA[10]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_TDATA[11]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_TDATA[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_TDATA[13]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_TDATA[14]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_TDATA[15]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_TDATA[16]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_TDATA[17]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_TDATA[18]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_TDATA[19]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_TDATA[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_TDATA[20]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_TDATA[21]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_TDATA[22]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_TDATA[23]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_TDATA[24]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_TDATA[25]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_TDATA[26]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_TDATA[27]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_TDATA[28]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_TDATA[29]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_TDATA[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_TDATA[30]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_TDATA[31]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_TDATA[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_TDATA[4]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_TDATA[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_TDATA[6]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_TDATA[7]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_TDATA[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_TDATA[9]_INST_0\ : label is "soft_lutpair8";
begin
  \B_V_data_1_state_reg[0]_0\ <= \^b_v_data_1_state_reg[0]_0\;
  m_axis_TREADY_int_regslice <= \^m_axis_tready_int_regslice\;
\B_V_data_1_payload_A[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => B_V_data_1_sel_wr_0,
      I1 => \^m_axis_tready_int_regslice\,
      I2 => \^b_v_data_1_state_reg[0]_0\,
      O => B_V_data_1_load_A
    );
\B_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(0),
      Q => \B_V_data_1_payload_A_reg_n_3_[0]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(10),
      Q => \B_V_data_1_payload_A_reg_n_3_[10]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(11),
      Q => \B_V_data_1_payload_A_reg_n_3_[11]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(12),
      Q => \B_V_data_1_payload_A_reg_n_3_[12]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(13),
      Q => \B_V_data_1_payload_A_reg_n_3_[13]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(14),
      Q => \B_V_data_1_payload_A_reg_n_3_[14]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(15),
      Q => \B_V_data_1_payload_A_reg_n_3_[15]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(16),
      Q => \B_V_data_1_payload_A_reg_n_3_[16]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(17),
      Q => \B_V_data_1_payload_A_reg_n_3_[17]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(18),
      Q => \B_V_data_1_payload_A_reg_n_3_[18]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(19),
      Q => \B_V_data_1_payload_A_reg_n_3_[19]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(1),
      Q => \B_V_data_1_payload_A_reg_n_3_[1]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(20),
      Q => \B_V_data_1_payload_A_reg_n_3_[20]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(21),
      Q => \B_V_data_1_payload_A_reg_n_3_[21]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(22),
      Q => \B_V_data_1_payload_A_reg_n_3_[22]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(23),
      Q => \B_V_data_1_payload_A_reg_n_3_[23]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(24),
      Q => \B_V_data_1_payload_A_reg_n_3_[24]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(25),
      Q => \B_V_data_1_payload_A_reg_n_3_[25]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(26),
      Q => \B_V_data_1_payload_A_reg_n_3_[26]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(27),
      Q => \B_V_data_1_payload_A_reg_n_3_[27]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(28),
      Q => \B_V_data_1_payload_A_reg_n_3_[28]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(29),
      Q => \B_V_data_1_payload_A_reg_n_3_[29]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(2),
      Q => \B_V_data_1_payload_A_reg_n_3_[2]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(30),
      Q => \B_V_data_1_payload_A_reg_n_3_[30]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(31),
      Q => \B_V_data_1_payload_A_reg_n_3_[31]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(3),
      Q => \B_V_data_1_payload_A_reg_n_3_[3]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(4),
      Q => \B_V_data_1_payload_A_reg_n_3_[4]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(5),
      Q => \B_V_data_1_payload_A_reg_n_3_[5]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(6),
      Q => \B_V_data_1_payload_A_reg_n_3_[6]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(7),
      Q => \B_V_data_1_payload_A_reg_n_3_[7]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(8),
      Q => \B_V_data_1_payload_A_reg_n_3_[8]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => Q(9),
      Q => \B_V_data_1_payload_A_reg_n_3_[9]\,
      R => '0'
    );
\B_V_data_1_payload_B[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => B_V_data_1_sel_wr_0,
      I1 => \^m_axis_tready_int_regslice\,
      I2 => \^b_v_data_1_state_reg[0]_0\,
      O => B_V_data_1_load_B
    );
\B_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(0),
      Q => \B_V_data_1_payload_B_reg_n_3_[0]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(10),
      Q => \B_V_data_1_payload_B_reg_n_3_[10]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(11),
      Q => \B_V_data_1_payload_B_reg_n_3_[11]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(12),
      Q => \B_V_data_1_payload_B_reg_n_3_[12]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(13),
      Q => \B_V_data_1_payload_B_reg_n_3_[13]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(14),
      Q => \B_V_data_1_payload_B_reg_n_3_[14]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(15),
      Q => \B_V_data_1_payload_B_reg_n_3_[15]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(16),
      Q => \B_V_data_1_payload_B_reg_n_3_[16]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(17),
      Q => \B_V_data_1_payload_B_reg_n_3_[17]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(18),
      Q => \B_V_data_1_payload_B_reg_n_3_[18]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(19),
      Q => \B_V_data_1_payload_B_reg_n_3_[19]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(1),
      Q => \B_V_data_1_payload_B_reg_n_3_[1]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(20),
      Q => \B_V_data_1_payload_B_reg_n_3_[20]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(21),
      Q => \B_V_data_1_payload_B_reg_n_3_[21]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(22),
      Q => \B_V_data_1_payload_B_reg_n_3_[22]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(23),
      Q => \B_V_data_1_payload_B_reg_n_3_[23]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(24),
      Q => \B_V_data_1_payload_B_reg_n_3_[24]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(25),
      Q => \B_V_data_1_payload_B_reg_n_3_[25]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(26),
      Q => \B_V_data_1_payload_B_reg_n_3_[26]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(27),
      Q => \B_V_data_1_payload_B_reg_n_3_[27]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(28),
      Q => \B_V_data_1_payload_B_reg_n_3_[28]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(29),
      Q => \B_V_data_1_payload_B_reg_n_3_[29]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(2),
      Q => \B_V_data_1_payload_B_reg_n_3_[2]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(30),
      Q => \B_V_data_1_payload_B_reg_n_3_[30]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(31),
      Q => \B_V_data_1_payload_B_reg_n_3_[31]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(3),
      Q => \B_V_data_1_payload_B_reg_n_3_[3]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(4),
      Q => \B_V_data_1_payload_B_reg_n_3_[4]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(5),
      Q => \B_V_data_1_payload_B_reg_n_3_[5]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(6),
      Q => \B_V_data_1_payload_B_reg_n_3_[6]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(7),
      Q => \B_V_data_1_payload_B_reg_n_3_[7]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(8),
      Q => \B_V_data_1_payload_B_reg_n_3_[8]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => Q(9),
      Q => \B_V_data_1_payload_B_reg_n_3_[9]\,
      R => '0'
    );
B_V_data_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => m_axis_TREADY,
      I1 => \^b_v_data_1_state_reg[0]_0\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => B_V_data_1_sel_rd_i_1_n_3
    );
B_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_rd_i_1_n_3,
      Q => B_V_data_1_sel_rd_reg_n_3,
      R => ap_rst_n_inv
    );
\B_V_data_1_sel_wr_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => \B_V_data_1_state_reg[0]_2\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \^m_axis_tready_int_regslice\,
      I3 => B_V_data_1_sel_wr_reg_0,
      I4 => B_V_data_1_sel_wr_i_2_n_3,
      I5 => B_V_data_1_sel_wr,
      O => ap_enable_reg_pp0_iter1_reg
    );
\B_V_data_1_sel_wr_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7FFF7F80800080"
    )
        port map (
      I0 => \B_V_data_1_state_reg[0]_2\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \^m_axis_tready_int_regslice\,
      I3 => \^b_v_data_1_state_reg[0]_0\,
      I4 => m_axis_TREADY,
      I5 => B_V_data_1_sel_wr_0,
      O => \B_V_data_1_sel_wr_i_1__1_n_3\
    );
B_V_data_1_sel_wr_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^b_v_data_1_state_reg[0]_0\,
      I1 => m_axis_TREADY,
      O => B_V_data_1_sel_wr_i_2_n_3
    );
B_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_sel_wr_i_1__1_n_3\,
      Q => B_V_data_1_sel_wr_0,
      R => ap_rst_n_inv
    );
\B_V_data_1_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA02A002A002A00"
    )
        port map (
      I0 => ap_rst_n,
      I1 => m_axis_TREADY,
      I2 => \^m_axis_tready_int_regslice\,
      I3 => \^b_v_data_1_state_reg[0]_0\,
      I4 => \B_V_data_1_state_reg[0]_2\,
      I5 => ap_enable_reg_pp0_iter1,
      O => \B_V_data_1_state[0]_i_1__0_n_3\
    );
\B_V_data_1_state[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => m_axis_TREADY,
      I1 => \^m_axis_tready_int_regslice\,
      I2 => \^b_v_data_1_state_reg[0]_0\,
      O => B_V_data_1_state(1)
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1__0_n_3\,
      Q => \^b_v_data_1_state_reg[0]_0\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_state(1),
      Q => \^m_axis_tready_int_regslice\,
      R => ap_rst_n_inv
    );
ap_done_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77775550"
    )
        port map (
      I0 => \^m_axis_tready_int_regslice\,
      I1 => m_axis_TREADY,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => \^b_v_data_1_state_reg[0]_0\,
      O => \B_V_data_1_state_reg[1]_0\
    );
ap_ready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220FFFF2220FAF0"
    )
        port map (
      I0 => \^b_v_data_1_state_reg[0]_0\,
      I1 => m_axis_TREADY,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      I4 => \^m_axis_tready_int_regslice\,
      I5 => ap_enable_reg_pp0_iter2,
      O => \B_V_data_1_state_reg[0]_1\
    );
\m_axis_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[0]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[0]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(0)
    );
\m_axis_TDATA[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[10]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[10]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(10)
    );
\m_axis_TDATA[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[11]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[11]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(11)
    );
\m_axis_TDATA[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[12]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[12]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(12)
    );
\m_axis_TDATA[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[13]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[13]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(13)
    );
\m_axis_TDATA[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[14]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[14]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(14)
    );
\m_axis_TDATA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[15]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[15]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(15)
    );
\m_axis_TDATA[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[16]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[16]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(16)
    );
\m_axis_TDATA[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[17]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[17]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(17)
    );
\m_axis_TDATA[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[18]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[18]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(18)
    );
\m_axis_TDATA[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[19]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[19]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(19)
    );
\m_axis_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[1]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[1]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(1)
    );
\m_axis_TDATA[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[20]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[20]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(20)
    );
\m_axis_TDATA[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[21]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[21]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(21)
    );
\m_axis_TDATA[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[22]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[22]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(22)
    );
\m_axis_TDATA[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[23]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[23]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(23)
    );
\m_axis_TDATA[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[24]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[24]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(24)
    );
\m_axis_TDATA[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[25]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[25]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(25)
    );
\m_axis_TDATA[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[26]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[26]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(26)
    );
\m_axis_TDATA[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[27]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[27]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(27)
    );
\m_axis_TDATA[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[28]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[28]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(28)
    );
\m_axis_TDATA[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[29]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[29]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(29)
    );
\m_axis_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[2]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[2]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(2)
    );
\m_axis_TDATA[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[30]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[30]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(30)
    );
\m_axis_TDATA[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[31]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[31]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(31)
    );
\m_axis_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[3]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[3]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(3)
    );
\m_axis_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[4]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[4]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(4)
    );
\m_axis_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[5]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[5]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(5)
    );
\m_axis_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[6]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[6]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(6)
    );
\m_axis_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[7]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[7]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(7)
    );
\m_axis_TDATA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[8]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[8]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(8)
    );
\m_axis_TDATA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[9]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[9]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => m_axis_TDATA(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both_0 is
  port (
    \B_V_data_1_state_reg[1]_0\ : out STD_LOGIC;
    ap_rst_n_inv : out STD_LOGIC;
    s_axis_TVALID_int_regslice : out STD_LOGIC;
    \B_V_data_1_state_reg[0]_0\ : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    \i_fu_72_reg[0]\ : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    \i_fu_72_reg[0]_0\ : in STD_LOGIC;
    ap_loop_init : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg_1 : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    ap_done_0 : in STD_LOGIC;
    s_axis_TVALID : in STD_LOGIC;
    \i_fu_72_reg[0]_1\ : in STD_LOGIC;
    \i_fu_72_reg[0]_2\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    s_axis_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both_0 : entity is "bit_reverse_accel_regslice_both";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both_0 is
  signal B_V_data_1_load_A : STD_LOGIC;
  signal B_V_data_1_load_B : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[0]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[10]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[11]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[12]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[13]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[14]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[15]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[16]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[17]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[18]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[19]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[1]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[20]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[21]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[22]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[23]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[24]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[25]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[26]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[27]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[28]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[29]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[2]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[30]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[31]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[3]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[4]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[5]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[6]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[7]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[8]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[9]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[0]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[10]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[11]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[12]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[13]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[14]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[15]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[16]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[17]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[18]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[19]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[1]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[20]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[21]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[22]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[23]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[24]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[25]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[26]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[27]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[28]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[29]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[2]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[30]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[31]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[3]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[4]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[5]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[6]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[7]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[8]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[9]\ : STD_LOGIC;
  signal B_V_data_1_sel : STD_LOGIC;
  signal \B_V_data_1_sel_rd_i_1__0_n_3\ : STD_LOGIC;
  signal B_V_data_1_sel_wr : STD_LOGIC;
  signal B_V_data_1_sel_wr_i_1_n_3 : STD_LOGIC;
  signal B_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \B_V_data_1_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \B_V_data_1_state[0]_i_2__1_n_3\ : STD_LOGIC;
  signal \^b_v_data_1_state_reg[1]_0\ : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal \i_fu_72[0]_i_2_n_3\ : STD_LOGIC;
  signal \^s_axis_tvalid_int_regslice\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B_V_data_1_sel_rd_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of B_V_data_1_sel_wr_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \B_V_data_1_state[0]_i_2__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reversed_reg_162[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \reversed_reg_162[10]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \reversed_reg_162[11]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \reversed_reg_162[12]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \reversed_reg_162[13]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \reversed_reg_162[14]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \reversed_reg_162[15]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \reversed_reg_162[16]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \reversed_reg_162[17]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \reversed_reg_162[18]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \reversed_reg_162[19]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \reversed_reg_162[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \reversed_reg_162[20]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reversed_reg_162[21]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reversed_reg_162[22]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reversed_reg_162[23]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reversed_reg_162[24]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reversed_reg_162[25]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reversed_reg_162[26]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reversed_reg_162[27]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reversed_reg_162[28]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reversed_reg_162[29]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reversed_reg_162[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \reversed_reg_162[30]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reversed_reg_162[31]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reversed_reg_162[31]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reversed_reg_162[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \reversed_reg_162[4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \reversed_reg_162[5]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \reversed_reg_162[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \reversed_reg_162[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \reversed_reg_162[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \reversed_reg_162[9]_i_1\ : label is "soft_lutpair35";
begin
  \B_V_data_1_state_reg[1]_0\ <= \^b_v_data_1_state_reg[1]_0\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  s_axis_TVALID_int_regslice <= \^s_axis_tvalid_int_regslice\;
\B_V_data_1_payload_A[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => B_V_data_1_sel_wr,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => \^s_axis_tvalid_int_regslice\,
      O => B_V_data_1_load_A
    );
\B_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(0),
      Q => \B_V_data_1_payload_A_reg_n_3_[0]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(10),
      Q => \B_V_data_1_payload_A_reg_n_3_[10]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(11),
      Q => \B_V_data_1_payload_A_reg_n_3_[11]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(12),
      Q => \B_V_data_1_payload_A_reg_n_3_[12]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(13),
      Q => \B_V_data_1_payload_A_reg_n_3_[13]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(14),
      Q => \B_V_data_1_payload_A_reg_n_3_[14]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(15),
      Q => \B_V_data_1_payload_A_reg_n_3_[15]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(16),
      Q => \B_V_data_1_payload_A_reg_n_3_[16]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(17),
      Q => \B_V_data_1_payload_A_reg_n_3_[17]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(18),
      Q => \B_V_data_1_payload_A_reg_n_3_[18]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(19),
      Q => \B_V_data_1_payload_A_reg_n_3_[19]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(1),
      Q => \B_V_data_1_payload_A_reg_n_3_[1]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(20),
      Q => \B_V_data_1_payload_A_reg_n_3_[20]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(21),
      Q => \B_V_data_1_payload_A_reg_n_3_[21]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(22),
      Q => \B_V_data_1_payload_A_reg_n_3_[22]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(23),
      Q => \B_V_data_1_payload_A_reg_n_3_[23]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(24),
      Q => \B_V_data_1_payload_A_reg_n_3_[24]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(25),
      Q => \B_V_data_1_payload_A_reg_n_3_[25]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(26),
      Q => \B_V_data_1_payload_A_reg_n_3_[26]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(27),
      Q => \B_V_data_1_payload_A_reg_n_3_[27]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(28),
      Q => \B_V_data_1_payload_A_reg_n_3_[28]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(29),
      Q => \B_V_data_1_payload_A_reg_n_3_[29]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(2),
      Q => \B_V_data_1_payload_A_reg_n_3_[2]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(30),
      Q => \B_V_data_1_payload_A_reg_n_3_[30]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(31),
      Q => \B_V_data_1_payload_A_reg_n_3_[31]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(3),
      Q => \B_V_data_1_payload_A_reg_n_3_[3]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(4),
      Q => \B_V_data_1_payload_A_reg_n_3_[4]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(5),
      Q => \B_V_data_1_payload_A_reg_n_3_[5]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(6),
      Q => \B_V_data_1_payload_A_reg_n_3_[6]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(7),
      Q => \B_V_data_1_payload_A_reg_n_3_[7]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(8),
      Q => \B_V_data_1_payload_A_reg_n_3_[8]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => s_axis_TDATA(9),
      Q => \B_V_data_1_payload_A_reg_n_3_[9]\,
      R => '0'
    );
\B_V_data_1_payload_B[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => B_V_data_1_sel_wr,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => \^s_axis_tvalid_int_regslice\,
      O => B_V_data_1_load_B
    );
\B_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(0),
      Q => \B_V_data_1_payload_B_reg_n_3_[0]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(10),
      Q => \B_V_data_1_payload_B_reg_n_3_[10]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(11),
      Q => \B_V_data_1_payload_B_reg_n_3_[11]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(12),
      Q => \B_V_data_1_payload_B_reg_n_3_[12]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(13),
      Q => \B_V_data_1_payload_B_reg_n_3_[13]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(14),
      Q => \B_V_data_1_payload_B_reg_n_3_[14]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(15),
      Q => \B_V_data_1_payload_B_reg_n_3_[15]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(16),
      Q => \B_V_data_1_payload_B_reg_n_3_[16]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(17),
      Q => \B_V_data_1_payload_B_reg_n_3_[17]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(18),
      Q => \B_V_data_1_payload_B_reg_n_3_[18]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(19),
      Q => \B_V_data_1_payload_B_reg_n_3_[19]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(1),
      Q => \B_V_data_1_payload_B_reg_n_3_[1]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(20),
      Q => \B_V_data_1_payload_B_reg_n_3_[20]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(21),
      Q => \B_V_data_1_payload_B_reg_n_3_[21]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(22),
      Q => \B_V_data_1_payload_B_reg_n_3_[22]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(23),
      Q => \B_V_data_1_payload_B_reg_n_3_[23]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(24),
      Q => \B_V_data_1_payload_B_reg_n_3_[24]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(25),
      Q => \B_V_data_1_payload_B_reg_n_3_[25]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(26),
      Q => \B_V_data_1_payload_B_reg_n_3_[26]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(27),
      Q => \B_V_data_1_payload_B_reg_n_3_[27]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(28),
      Q => \B_V_data_1_payload_B_reg_n_3_[28]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(29),
      Q => \B_V_data_1_payload_B_reg_n_3_[29]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(2),
      Q => \B_V_data_1_payload_B_reg_n_3_[2]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(30),
      Q => \B_V_data_1_payload_B_reg_n_3_[30]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(31),
      Q => \B_V_data_1_payload_B_reg_n_3_[31]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(3),
      Q => \B_V_data_1_payload_B_reg_n_3_[3]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(4),
      Q => \B_V_data_1_payload_B_reg_n_3_[4]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(5),
      Q => \B_V_data_1_payload_B_reg_n_3_[5]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(6),
      Q => \B_V_data_1_payload_B_reg_n_3_[6]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(7),
      Q => \B_V_data_1_payload_B_reg_n_3_[7]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(8),
      Q => \B_V_data_1_payload_B_reg_n_3_[8]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => s_axis_TDATA(9),
      Q => \B_V_data_1_payload_B_reg_n_3_[9]\,
      R => '0'
    );
\B_V_data_1_sel_rd_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0400"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_1,
      I1 => ap_start,
      I2 => \i_fu_72_reg[0]\,
      I3 => \^s_axis_tvalid_int_regslice\,
      I4 => B_V_data_1_sel,
      O => \B_V_data_1_sel_rd_i_1__0_n_3\
    );
B_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_sel_rd_i_1__0_n_3\,
      Q => B_V_data_1_sel,
      R => \^ap_rst_n_inv\
    );
B_V_data_1_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^b_v_data_1_state_reg[1]_0\,
      I1 => s_axis_TVALID,
      I2 => B_V_data_1_sel_wr,
      O => B_V_data_1_sel_wr_i_1_n_3
    );
B_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_wr_i_1_n_3,
      Q => B_V_data_1_sel_wr,
      R => \^ap_rst_n_inv\
    );
\B_V_data_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888088"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^s_axis_tvalid_int_regslice\,
      I2 => ap_enable_reg_pp0_iter1_reg_1,
      I3 => ap_start,
      I4 => \i_fu_72_reg[0]\,
      I5 => \B_V_data_1_state[0]_i_2__1_n_3\,
      O => \B_V_data_1_state[0]_i_1_n_3\
    );
\B_V_data_1_state[0]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^s_axis_tvalid_int_regslice\,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => s_axis_TVALID,
      I3 => ap_rst_n,
      O => \B_V_data_1_state[0]_i_2__1_n_3\
    );
\B_V_data_1_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\B_V_data_1_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF0404FFFFFFFF"
    )
        port map (
      I0 => \i_fu_72_reg[0]\,
      I1 => ap_start,
      I2 => ap_enable_reg_pp0_iter1_reg_1,
      I3 => s_axis_TVALID,
      I4 => \^b_v_data_1_state_reg[1]_0\,
      I5 => \^s_axis_tvalid_int_regslice\,
      O => B_V_data_1_state(1)
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1_n_3\,
      Q => \^s_axis_tvalid_int_regslice\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_state(1),
      Q => \^b_v_data_1_state_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
ap_done_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FB00"
    )
        port map (
      I0 => \^s_axis_tvalid_int_regslice\,
      I1 => ap_start,
      I2 => ap_enable_reg_pp0_iter1_reg_1,
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      I4 => ap_done_0,
      O => ap_done
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A000E00000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \^s_axis_tvalid_int_regslice\,
      I2 => ap_rst_n,
      I3 => ap_enable_reg_pp0_iter1_reg_1,
      I4 => ap_start,
      I5 => \i_fu_72_reg[0]\,
      O => ap_enable_reg_pp0_iter1_reg
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAABA0000AA8A"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \^s_axis_tvalid_int_regslice\,
      I2 => ap_start,
      I3 => ap_enable_reg_pp0_iter1_reg_1,
      I4 => \i_fu_72_reg[0]\,
      I5 => ap_enable_reg_pp0_iter2,
      O => ap_enable_reg_pp0_iter1_reg_0
    );
\i_fu_72[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2020DFDF0020"
    )
        port map (
      I0 => \^s_axis_tvalid_int_regslice\,
      I1 => \i_fu_72_reg[0]\,
      I2 => ap_start,
      I3 => \i_fu_72[0]_i_2_n_3\,
      I4 => \i_fu_72_reg[0]_0\,
      I5 => ap_loop_init,
      O => \B_V_data_1_state_reg[0]_0\
    );
\i_fu_72[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_fu_72_reg[0]_1\,
      I1 => \i_fu_72_reg[0]_2\,
      O => \i_fu_72[0]_i_2_n_3\
    );
\reversed_reg_162[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[31]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[31]\,
      I2 => B_V_data_1_sel,
      O => D(0)
    );
\reversed_reg_162[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[21]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[21]\,
      I2 => B_V_data_1_sel,
      O => D(10)
    );
\reversed_reg_162[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[20]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[20]\,
      I2 => B_V_data_1_sel,
      O => D(11)
    );
\reversed_reg_162[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[19]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[19]\,
      I2 => B_V_data_1_sel,
      O => D(12)
    );
\reversed_reg_162[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[18]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[18]\,
      I2 => B_V_data_1_sel,
      O => D(13)
    );
\reversed_reg_162[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[17]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[17]\,
      I2 => B_V_data_1_sel,
      O => D(14)
    );
\reversed_reg_162[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[16]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[16]\,
      I2 => B_V_data_1_sel,
      O => D(15)
    );
\reversed_reg_162[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[15]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[15]\,
      I2 => B_V_data_1_sel,
      O => D(16)
    );
\reversed_reg_162[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[14]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[14]\,
      I2 => B_V_data_1_sel,
      O => D(17)
    );
\reversed_reg_162[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[13]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[13]\,
      I2 => B_V_data_1_sel,
      O => D(18)
    );
\reversed_reg_162[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[12]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[12]\,
      I2 => B_V_data_1_sel,
      O => D(19)
    );
\reversed_reg_162[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[30]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[30]\,
      I2 => B_V_data_1_sel,
      O => D(1)
    );
\reversed_reg_162[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[11]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[11]\,
      I2 => B_V_data_1_sel,
      O => D(20)
    );
\reversed_reg_162[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[10]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[10]\,
      I2 => B_V_data_1_sel,
      O => D(21)
    );
\reversed_reg_162[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[9]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[9]\,
      I2 => B_V_data_1_sel,
      O => D(22)
    );
\reversed_reg_162[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[8]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[8]\,
      I2 => B_V_data_1_sel,
      O => D(23)
    );
\reversed_reg_162[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[7]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[7]\,
      I2 => B_V_data_1_sel,
      O => D(24)
    );
\reversed_reg_162[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[6]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[6]\,
      I2 => B_V_data_1_sel,
      O => D(25)
    );
\reversed_reg_162[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[5]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[5]\,
      I2 => B_V_data_1_sel,
      O => D(26)
    );
\reversed_reg_162[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[4]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[4]\,
      I2 => B_V_data_1_sel,
      O => D(27)
    );
\reversed_reg_162[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[3]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[3]\,
      I2 => B_V_data_1_sel,
      O => D(28)
    );
\reversed_reg_162[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[2]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[2]\,
      I2 => B_V_data_1_sel,
      O => D(29)
    );
\reversed_reg_162[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[29]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[29]\,
      I2 => B_V_data_1_sel,
      O => D(2)
    );
\reversed_reg_162[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[1]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[1]\,
      I2 => B_V_data_1_sel,
      O => D(30)
    );
\reversed_reg_162[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
        port map (
      I0 => \^s_axis_tvalid_int_regslice\,
      I1 => ap_start,
      I2 => ap_enable_reg_pp0_iter1_reg_1,
      I3 => \i_fu_72_reg[0]\,
      O => E(0)
    );
\reversed_reg_162[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[0]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[0]\,
      I2 => B_V_data_1_sel,
      O => D(31)
    );
\reversed_reg_162[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[28]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[28]\,
      I2 => B_V_data_1_sel,
      O => D(3)
    );
\reversed_reg_162[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[27]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[27]\,
      I2 => B_V_data_1_sel,
      O => D(4)
    );
\reversed_reg_162[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[26]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[26]\,
      I2 => B_V_data_1_sel,
      O => D(5)
    );
\reversed_reg_162[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[25]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[25]\,
      I2 => B_V_data_1_sel,
      O => D(6)
    );
\reversed_reg_162[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[24]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[24]\,
      I2 => B_V_data_1_sel,
      O => D(7)
    );
\reversed_reg_162[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[23]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[23]\,
      I2 => B_V_data_1_sel,
      O => D(8)
    );
\reversed_reg_162[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[22]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[22]\,
      I2 => B_V_data_1_sel,
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both__parameterized1\ is
  port (
    \B_V_data_1_state_reg[1]_0\ : out STD_LOGIC;
    B_V_data_1_sel_wr : out STD_LOGIC;
    m_axis_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    B_V_data_1_sel_wr_reg_0 : in STD_LOGIC;
    m_axis_TVALID : in STD_LOGIC;
    m_axis_TREADY_int_regslice : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \B_V_data_1_state_reg[1]_1\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    m_axis_TREADY : in STD_LOGIC;
    \B_V_data_1_payload_A_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both__parameterized1\ : entity is "bit_reverse_accel_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both__parameterized1\ is
  signal B_V_data_1_payload_A : STD_LOGIC;
  signal \B_V_data_1_payload_A[0]_i_1_n_3\ : STD_LOGIC;
  signal B_V_data_1_payload_B : STD_LOGIC;
  signal \B_V_data_1_payload_B[0]_i_1_n_3\ : STD_LOGIC;
  signal B_V_data_1_sel : STD_LOGIC;
  signal \B_V_data_1_sel_rd_i_1__1_n_3\ : STD_LOGIC;
  signal \^b_v_data_1_sel_wr\ : STD_LOGIC;
  signal B_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \B_V_data_1_state[0]_i_1__1_n_3\ : STD_LOGIC;
  signal \B_V_data_1_state[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \B_V_data_1_state[0]_i_3_n_3\ : STD_LOGIC;
  signal \B_V_data_1_state[1]_i_2__0_n_3\ : STD_LOGIC;
  signal \^b_v_data_1_state_reg[1]_0\ : STD_LOGIC;
  signal \B_V_data_1_state_reg_n_3_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B_V_data_1_sel_rd_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \B_V_data_1_state[0]_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \B_V_data_1_state[0]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \B_V_data_1_state[1]_i_2__0\ : label is "soft_lutpair21";
begin
  B_V_data_1_sel_wr <= \^b_v_data_1_sel_wr\;
  \B_V_data_1_state_reg[1]_0\ <= \^b_v_data_1_state_reg[1]_0\;
\B_V_data_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[0]_0\,
      I1 => \^b_v_data_1_sel_wr\,
      I2 => \^b_v_data_1_state_reg[1]_0\,
      I3 => \B_V_data_1_state_reg_n_3_[0]\,
      I4 => B_V_data_1_payload_A,
      O => \B_V_data_1_payload_A[0]_i_1_n_3\
    );
\B_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_payload_A[0]_i_1_n_3\,
      Q => B_V_data_1_payload_A,
      R => '0'
    );
\B_V_data_1_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[0]_0\,
      I1 => \^b_v_data_1_sel_wr\,
      I2 => \^b_v_data_1_state_reg[1]_0\,
      I3 => \B_V_data_1_state_reg_n_3_[0]\,
      I4 => B_V_data_1_payload_B,
      O => \B_V_data_1_payload_B[0]_i_1_n_3\
    );
\B_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_payload_B[0]_i_1_n_3\,
      Q => B_V_data_1_payload_B,
      R => '0'
    );
\B_V_data_1_sel_rd_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \B_V_data_1_state_reg_n_3_[0]\,
      I1 => m_axis_TREADY,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_sel_rd_i_1__1_n_3\
    );
B_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_sel_rd_i_1__1_n_3\,
      Q => B_V_data_1_sel,
      R => ap_rst_n_inv
    );
B_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_wr_reg_0,
      Q => \^b_v_data_1_sel_wr\,
      R => ap_rst_n_inv
    );
\B_V_data_1_state[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000AAAAAAAA"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \B_V_data_1_state[0]_i_2__0_n_3\,
      I2 => m_axis_TREADY_int_regslice,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \B_V_data_1_state_reg[1]_1\,
      I5 => \B_V_data_1_state[0]_i_3_n_3\,
      O => \B_V_data_1_state[0]_i_1__1_n_3\
    );
\B_V_data_1_state[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^b_v_data_1_state_reg[1]_0\,
      I1 => m_axis_TREADY,
      I2 => m_axis_TVALID,
      O => \B_V_data_1_state[0]_i_2__0_n_3\
    );
\B_V_data_1_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^b_v_data_1_state_reg[1]_0\,
      I1 => m_axis_TREADY,
      I2 => \B_V_data_1_state_reg_n_3_[0]\,
      O => \B_V_data_1_state[0]_i_3_n_3\
    );
\B_V_data_1_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5DDDDDDDDDDDDDD"
    )
        port map (
      I0 => \B_V_data_1_state[1]_i_2__0_n_3\,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => m_axis_TVALID,
      I3 => m_axis_TREADY_int_regslice,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => \B_V_data_1_state_reg[1]_1\,
      O => B_V_data_1_state(1)
    );
\B_V_data_1_state[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \B_V_data_1_state_reg_n_3_[0]\,
      I1 => m_axis_TREADY,
      O => \B_V_data_1_state[1]_i_2__0_n_3\
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1__1_n_3\,
      Q => \B_V_data_1_state_reg_n_3_[0]\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_state(1),
      Q => \^b_v_data_1_state_reg[1]_0\,
      R => ap_rst_n_inv
    );
\m_axis_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_V_data_1_payload_B,
      I1 => B_V_data_1_sel,
      I2 => B_V_data_1_payload_A,
      O => m_axis_TLAST(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    s_axis_TVALID : in STD_LOGIC;
    m_axis_TREADY : in STD_LOGIC;
    s_axis_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_TREADY : out STD_LOGIC;
    s_axis_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_TVALID : out STD_LOGIC;
    m_axis_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel is
  signal \<const0>\ : STD_LOGIC;
  signal B_V_data_1_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal B_V_data_1_sel_wr : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_4 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_5 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_6 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_7 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_8 : STD_LOGIC;
  signal \i_fu_72_reg_n_3_[0]\ : STD_LOGIC;
  signal \i_fu_72_reg_n_3_[1]\ : STD_LOGIC;
  signal \i_fu_72_reg_n_3_[2]\ : STD_LOGIC;
  signal m_axis_TREADY_int_regslice : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal \output_word_last_reg_167_reg_n_3_[0]\ : STD_LOGIC;
  signal regslice_both_m_axis_V_data_V_U_n_5 : STD_LOGIC;
  signal regslice_both_m_axis_V_data_V_U_n_6 : STD_LOGIC;
  signal regslice_both_m_axis_V_data_V_U_n_7 : STD_LOGIC;
  signal regslice_both_m_axis_V_last_V_U_n_3 : STD_LOGIC;
  signal regslice_both_s_axis_V_data_V_U_n_10 : STD_LOGIC;
  signal regslice_both_s_axis_V_data_V_U_n_6 : STD_LOGIC;
  signal regslice_both_s_axis_V_data_V_U_n_7 : STD_LOGIC;
  signal reversed_reg_162 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axis_TVALID_int_regslice : STD_LOGIC;
begin
  ap_ready <= \^ap_ready\;
  m_axis_TKEEP(3) <= \<const0>\;
  m_axis_TKEEP(2) <= \<const0>\;
  m_axis_TKEEP(1) <= \<const0>\;
  m_axis_TKEEP(0) <= \<const0>\;
  m_axis_TSTRB(3) <= \<const0>\;
  m_axis_TSTRB(2) <= \<const0>\;
  m_axis_TSTRB(1) <= \<const0>\;
  m_axis_TSTRB(0) <= \<const0>\;
  m_axis_TVALID <= \^m_axis_tvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_s_axis_V_data_V_U_n_7,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_s_axis_V_data_V_U_n_10,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_rst_n_inv
    );
ap_idle_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ap_start,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => ap_enable_reg_pp0_iter1,
      O => ap_idle
    );
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \^ap_ready\,
      Q => ap_loop_exit_ready_pp0_iter1_reg,
      R => '0'
    );
flow_control_loop_pipe_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_flow_control_loop_pipe
     port map (
      \B_V_data_1_state_reg[0]\ => flow_control_loop_pipe_U_n_4,
      \B_V_data_1_state_reg[0]_0\ => flow_control_loop_pipe_U_n_6,
      ap_clk => ap_clk,
      ap_loop_exit_ready_pp0_iter1_reg_reg => \i_fu_72_reg_n_3_[0]\,
      ap_loop_init => ap_loop_init,
      ap_loop_init_reg_0 => flow_control_loop_pipe_U_n_8,
      ap_ready => \^ap_ready\,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      \i_fu_72_reg[1]\ => flow_control_loop_pipe_U_n_5,
      \i_fu_72_reg[1]_0\ => \i_fu_72_reg_n_3_[1]\,
      \i_fu_72_reg[2]\ => regslice_both_m_axis_V_data_V_U_n_5,
      \i_fu_72_reg[2]_0\ => \i_fu_72_reg_n_3_[2]\,
      \output_word_last_reg_167_reg[0]\ => flow_control_loop_pipe_U_n_7,
      \output_word_last_reg_167_reg[0]_0\ => \output_word_last_reg_167_reg_n_3_[0]\,
      s_axis_TVALID_int_regslice => s_axis_TVALID_int_regslice
    );
\i_fu_72_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_s_axis_V_data_V_U_n_6,
      Q => \i_fu_72_reg_n_3_[0]\,
      R => '0'
    );
\i_fu_72_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_6,
      Q => \i_fu_72_reg_n_3_[1]\,
      R => '0'
    );
\i_fu_72_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_4,
      Q => \i_fu_72_reg_n_3_[2]\,
      R => '0'
    );
\output_word_last_reg_167_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_7,
      Q => \output_word_last_reg_167_reg_n_3_[0]\,
      R => '0'
    );
regslice_both_m_axis_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both
     port map (
      B_V_data_1_sel_wr => B_V_data_1_sel_wr,
      B_V_data_1_sel_wr_reg_0 => regslice_both_m_axis_V_last_V_U_n_3,
      \B_V_data_1_state_reg[0]_0\ => \^m_axis_tvalid\,
      \B_V_data_1_state_reg[0]_1\ => regslice_both_m_axis_V_data_V_U_n_5,
      \B_V_data_1_state_reg[0]_2\ => flow_control_loop_pipe_U_n_8,
      \B_V_data_1_state_reg[1]_0\ => regslice_both_m_axis_V_data_V_U_n_6,
      Q(31 downto 0) => reversed_reg_162(31 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter1_reg => regslice_both_m_axis_V_data_V_U_n_7,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      m_axis_TDATA(31 downto 0) => m_axis_TDATA(31 downto 0),
      m_axis_TREADY => m_axis_TREADY,
      m_axis_TREADY_int_regslice => m_axis_TREADY_int_regslice
    );
regslice_both_m_axis_V_last_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both__parameterized1\
     port map (
      \B_V_data_1_payload_A_reg[0]_0\ => \output_word_last_reg_167_reg_n_3_[0]\,
      B_V_data_1_sel_wr => B_V_data_1_sel_wr,
      B_V_data_1_sel_wr_reg_0 => regslice_both_m_axis_V_data_V_U_n_7,
      \B_V_data_1_state_reg[1]_0\ => regslice_both_m_axis_V_last_V_U_n_3,
      \B_V_data_1_state_reg[1]_1\ => flow_control_loop_pipe_U_n_8,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      m_axis_TLAST(0) => m_axis_TLAST(0),
      m_axis_TREADY => m_axis_TREADY,
      m_axis_TREADY_int_regslice => m_axis_TREADY_int_regslice,
      m_axis_TVALID => \^m_axis_tvalid\
    );
regslice_both_s_axis_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel_regslice_both_0
     port map (
      \B_V_data_1_state_reg[0]_0\ => regslice_both_s_axis_V_data_V_U_n_6,
      \B_V_data_1_state_reg[1]_0\ => s_axis_TREADY,
      D(31) => B_V_data_1_data_out(0),
      D(30) => B_V_data_1_data_out(1),
      D(29) => B_V_data_1_data_out(2),
      D(28) => B_V_data_1_data_out(3),
      D(27) => B_V_data_1_data_out(4),
      D(26) => B_V_data_1_data_out(5),
      D(25) => B_V_data_1_data_out(6),
      D(24) => B_V_data_1_data_out(7),
      D(23) => B_V_data_1_data_out(8),
      D(22) => B_V_data_1_data_out(9),
      D(21) => B_V_data_1_data_out(10),
      D(20) => B_V_data_1_data_out(11),
      D(19) => B_V_data_1_data_out(12),
      D(18) => B_V_data_1_data_out(13),
      D(17) => B_V_data_1_data_out(14),
      D(16) => B_V_data_1_data_out(15),
      D(15) => B_V_data_1_data_out(16),
      D(14) => B_V_data_1_data_out(17),
      D(13) => B_V_data_1_data_out(18),
      D(12) => B_V_data_1_data_out(19),
      D(11) => B_V_data_1_data_out(20),
      D(10) => B_V_data_1_data_out(21),
      D(9) => B_V_data_1_data_out(22),
      D(8) => B_V_data_1_data_out(23),
      D(7) => B_V_data_1_data_out(24),
      D(6) => B_V_data_1_data_out(25),
      D(5) => B_V_data_1_data_out(26),
      D(4) => B_V_data_1_data_out(27),
      D(3) => B_V_data_1_data_out(28),
      D(2) => B_V_data_1_data_out(29),
      D(1) => B_V_data_1_data_out(30),
      D(0) => B_V_data_1_data_out(31),
      E(0) => ap_block_pp0_stage0_subdone,
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_done_0 => regslice_both_m_axis_V_data_V_U_n_6,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter1_reg => regslice_both_s_axis_V_data_V_U_n_7,
      ap_enable_reg_pp0_iter1_reg_0 => regslice_both_s_axis_V_data_V_U_n_10,
      ap_enable_reg_pp0_iter1_reg_1 => flow_control_loop_pipe_U_n_5,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_loop_init => ap_loop_init,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      \i_fu_72_reg[0]\ => regslice_both_m_axis_V_data_V_U_n_5,
      \i_fu_72_reg[0]_0\ => \i_fu_72_reg_n_3_[0]\,
      \i_fu_72_reg[0]_1\ => \i_fu_72_reg_n_3_[2]\,
      \i_fu_72_reg[0]_2\ => \i_fu_72_reg_n_3_[1]\,
      s_axis_TDATA(31 downto 0) => s_axis_TDATA(31 downto 0),
      s_axis_TVALID => s_axis_TVALID,
      s_axis_TVALID_int_regslice => s_axis_TVALID_int_regslice
    );
\reversed_reg_162_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(31),
      Q => reversed_reg_162(0),
      R => '0'
    );
\reversed_reg_162_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(21),
      Q => reversed_reg_162(10),
      R => '0'
    );
\reversed_reg_162_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(20),
      Q => reversed_reg_162(11),
      R => '0'
    );
\reversed_reg_162_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(19),
      Q => reversed_reg_162(12),
      R => '0'
    );
\reversed_reg_162_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(18),
      Q => reversed_reg_162(13),
      R => '0'
    );
\reversed_reg_162_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(17),
      Q => reversed_reg_162(14),
      R => '0'
    );
\reversed_reg_162_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(16),
      Q => reversed_reg_162(15),
      R => '0'
    );
\reversed_reg_162_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(15),
      Q => reversed_reg_162(16),
      R => '0'
    );
\reversed_reg_162_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(14),
      Q => reversed_reg_162(17),
      R => '0'
    );
\reversed_reg_162_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(13),
      Q => reversed_reg_162(18),
      R => '0'
    );
\reversed_reg_162_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(12),
      Q => reversed_reg_162(19),
      R => '0'
    );
\reversed_reg_162_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(30),
      Q => reversed_reg_162(1),
      R => '0'
    );
\reversed_reg_162_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(11),
      Q => reversed_reg_162(20),
      R => '0'
    );
\reversed_reg_162_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(10),
      Q => reversed_reg_162(21),
      R => '0'
    );
\reversed_reg_162_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(9),
      Q => reversed_reg_162(22),
      R => '0'
    );
\reversed_reg_162_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(8),
      Q => reversed_reg_162(23),
      R => '0'
    );
\reversed_reg_162_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(7),
      Q => reversed_reg_162(24),
      R => '0'
    );
\reversed_reg_162_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(6),
      Q => reversed_reg_162(25),
      R => '0'
    );
\reversed_reg_162_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(5),
      Q => reversed_reg_162(26),
      R => '0'
    );
\reversed_reg_162_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(4),
      Q => reversed_reg_162(27),
      R => '0'
    );
\reversed_reg_162_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(3),
      Q => reversed_reg_162(28),
      R => '0'
    );
\reversed_reg_162_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(2),
      Q => reversed_reg_162(29),
      R => '0'
    );
\reversed_reg_162_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(29),
      Q => reversed_reg_162(2),
      R => '0'
    );
\reversed_reg_162_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(1),
      Q => reversed_reg_162(30),
      R => '0'
    );
\reversed_reg_162_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(0),
      Q => reversed_reg_162(31),
      R => '0'
    );
\reversed_reg_162_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(28),
      Q => reversed_reg_162(3),
      R => '0'
    );
\reversed_reg_162_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(27),
      Q => reversed_reg_162(4),
      R => '0'
    );
\reversed_reg_162_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(26),
      Q => reversed_reg_162(5),
      R => '0'
    );
\reversed_reg_162_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(25),
      Q => reversed_reg_162(6),
      R => '0'
    );
\reversed_reg_162_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(24),
      Q => reversed_reg_162(7),
      R => '0'
    );
\reversed_reg_162_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(23),
      Q => reversed_reg_162(8),
      R => '0'
    );
\reversed_reg_162_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => B_V_data_1_data_out(22),
      Q => reversed_reg_162(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    s_axis_TVALID : in STD_LOGIC;
    s_axis_TREADY : out STD_LOGIC;
    s_axis_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_TVALID : out STD_LOGIC;
    m_axis_TREADY : in STD_LOGIC;
    m_axis_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,bit_reverse_accel,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bit_reverse_accel,Vivado 2023.2";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_m_axis_TKEEP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axis:m_axis, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of m_axis_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_TREADY : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_TVALID : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_TKEEP : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute X_INTERFACE_INFO of m_axis_TLAST : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_TSTRB : signal is "xilinx.com:interface:axis:1.0 m_axis TSTRB";
  attribute X_INTERFACE_PARAMETER of m_axis_TSTRB : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_TDATA : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_TKEEP : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
  attribute X_INTERFACE_INFO of s_axis_TLAST : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_TSTRB : signal is "xilinx.com:interface:axis:1.0 s_axis TSTRB";
  attribute X_INTERFACE_PARAMETER of s_axis_TSTRB : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
begin
  m_axis_TKEEP(3) <= \<const0>\;
  m_axis_TKEEP(2) <= \<const0>\;
  m_axis_TKEEP(1) <= \<const0>\;
  m_axis_TKEEP(0) <= \<const0>\;
  m_axis_TSTRB(3) <= \<const0>\;
  m_axis_TSTRB(2) <= \<const0>\;
  m_axis_TSTRB(1) <= \<const0>\;
  m_axis_TSTRB(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_reverse_accel
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      m_axis_TDATA(31 downto 0) => m_axis_TDATA(31 downto 0),
      m_axis_TKEEP(3 downto 0) => NLW_inst_m_axis_TKEEP_UNCONNECTED(3 downto 0),
      m_axis_TLAST(0) => m_axis_TLAST(0),
      m_axis_TREADY => m_axis_TREADY,
      m_axis_TSTRB(3 downto 0) => NLW_inst_m_axis_TSTRB_UNCONNECTED(3 downto 0),
      m_axis_TVALID => m_axis_TVALID,
      s_axis_TDATA(31 downto 0) => s_axis_TDATA(31 downto 0),
      s_axis_TKEEP(3 downto 0) => B"0000",
      s_axis_TLAST(0) => '0',
      s_axis_TREADY => s_axis_TREADY,
      s_axis_TSTRB(3 downto 0) => B"0000",
      s_axis_TVALID => s_axis_TVALID
    );
end STRUCTURE;
