-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Aug 15 18:28:44 2025
-- Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_bit_reverse_accel_1_0_stub.vhdl
-- Design      : design_1_bit_reverse_accel_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axis_TVALID : in STD_LOGIC;
    s_axis_TREADY : out STD_LOGIC;
    s_axis_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_TVALID : out STD_LOGIC;
    m_axis_TREADY : in STD_LOGIC;
    m_axis_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,s_axis_TVALID,s_axis_TREADY,s_axis_TDATA[31:0],s_axis_TLAST[0:0],s_axis_TKEEP[3:0],s_axis_TSTRB[3:0],m_axis_TVALID,m_axis_TREADY,m_axis_TDATA[31:0],m_axis_TLAST[0:0],m_axis_TKEEP[3:0],m_axis_TSTRB[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bit_reverse_accel,Vivado 2023.2";
begin
end;
