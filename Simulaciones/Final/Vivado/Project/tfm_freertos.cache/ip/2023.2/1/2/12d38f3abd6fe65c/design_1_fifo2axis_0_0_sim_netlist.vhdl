-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Aug 29 14:54:45 2025
-- Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo2axis_0_0_sim_netlist.vhdl
-- Design      : design_1_fifo2axis_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    start : in STD_LOGIC;
    write : in STD_LOGIC;
    s_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : out STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    start_accel : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_fifo2axis_0_0,fifo2axis,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fifo2axis,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  s_axis_tdata(31) <= \<const0>\;
  s_axis_tdata(30) <= \<const0>\;
  s_axis_tdata(29) <= \<const0>\;
  s_axis_tdata(28) <= \<const0>\;
  s_axis_tdata(27) <= \<const0>\;
  s_axis_tdata(26) <= \<const0>\;
  s_axis_tdata(25) <= \<const0>\;
  s_axis_tdata(24) <= \<const0>\;
  s_axis_tdata(23) <= \<const0>\;
  s_axis_tdata(22) <= \<const0>\;
  s_axis_tdata(21) <= \<const0>\;
  s_axis_tdata(20) <= \<const0>\;
  s_axis_tdata(19) <= \<const0>\;
  s_axis_tdata(18) <= \<const0>\;
  s_axis_tdata(17) <= \<const0>\;
  s_axis_tdata(16) <= \<const0>\;
  s_axis_tdata(15) <= \<const0>\;
  s_axis_tdata(14) <= \<const0>\;
  s_axis_tdata(13) <= \<const0>\;
  s_axis_tdata(12) <= \<const0>\;
  s_axis_tdata(11) <= \<const0>\;
  s_axis_tdata(10) <= \<const0>\;
  s_axis_tdata(9) <= \<const0>\;
  s_axis_tdata(8) <= \<const0>\;
  s_axis_tdata(7) <= \<const0>\;
  s_axis_tdata(6) <= \<const0>\;
  s_axis_tdata(5) <= \<const0>\;
  s_axis_tdata(4) <= \<const0>\;
  s_axis_tdata(3) <= \<const0>\;
  s_axis_tdata(2) <= \<const0>\;
  s_axis_tdata(1) <= \<const0>\;
  s_axis_tdata(0) <= \<const0>\;
  s_axis_tvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
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
