-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Aug 15 21:20:42 2025
-- Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_fifo2axis_0_0 -prefix
--               design_1_fifo2axis_0_0_ design_1_fifo2axis_0_0_stub.vhdl
-- Design      : design_1_fifo2axis_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fifo2axis_0_0 is
  Port ( 
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

end design_1_fifo2axis_0_0;

architecture stub of design_1_fifo2axis_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,fifo_data[31:0],start,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tready,start_accel,s_axis_tlast";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fifo2axis,Vivado 2023.2";
begin
end;
