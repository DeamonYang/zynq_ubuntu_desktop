onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "E:/Xilinx_Vivado2015/Vivado/2015.4/lib/win64.o/libxil_vsim.dll" -lib xil_defaultlib clk_lvds_opt

do {wave.do}

view wave
view structure
view signals

do {clk_lvds.udo}

run -all

quit -force
