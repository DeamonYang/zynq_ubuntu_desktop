-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
-- Date        : Sat Nov 09 11:09:23 2019
-- Host        : DESKTOP-L1VR7A3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               H:/FPGA/ZYNQ_PSPL/X_Ubuntu_lcd/X_Ubuntu/X_Ubuntu.srcs/sources_1/ip/clk_lvds/clk_lvds_stub.vhdl
-- Design      : clk_lvds
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_lvds is
  Port ( 
    clk_in1 : in STD_LOGIC;
    clk_shift : out STD_LOGIC;
    clk_hs : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC
  );

end clk_lvds;

architecture stub of clk_lvds is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in1,clk_shift,clk_hs,resetn,locked";
begin
end;
