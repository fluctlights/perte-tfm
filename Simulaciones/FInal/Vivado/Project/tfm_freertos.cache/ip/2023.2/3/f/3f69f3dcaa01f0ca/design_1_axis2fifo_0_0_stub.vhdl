-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Aug 29 14:18:44 2025
-- Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axis2fifo_0_0_stub.vhdl
-- Design      : design_1_axis2fifo_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    result_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    last : in STD_LOGIC;
    valid_result : in STD_LOGIC;
    ready_for_results : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    done : out STD_LOGIC;
    read : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,result_data[31:0],last,valid_result,ready_for_results,dout[31:0],done,read";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis2fifo,Vivado 2023.2";
begin
end;
