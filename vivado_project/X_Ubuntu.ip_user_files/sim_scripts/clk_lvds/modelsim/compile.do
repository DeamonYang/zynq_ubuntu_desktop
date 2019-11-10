vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../X_Ubuntu.srcs/sources_1/ip/clk_lvds/clk_lvds_clk_wiz.v" \
"../../../../X_Ubuntu.srcs/sources_1/ip/clk_lvds/clk_lvds.v" \


vlog -work xil_defaultlib "glbl.v"

