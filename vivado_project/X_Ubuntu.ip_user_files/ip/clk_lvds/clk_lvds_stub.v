// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Sat Nov 09 11:09:23 2019
// Host        : DESKTOP-L1VR7A3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               H:/FPGA/ZYNQ_PSPL/X_Ubuntu_lcd/X_Ubuntu/X_Ubuntu.srcs/sources_1/ip/clk_lvds/clk_lvds_stub.v
// Design      : clk_lvds
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_lvds(clk_in1, clk_shift, clk_hs, resetn, locked)
/* synthesis syn_black_box black_box_pad_pin="clk_in1,clk_shift,clk_hs,resetn,locked" */;
  input clk_in1;
  output clk_shift;
  output clk_hs;
  input resetn;
  output locked;
endmodule
