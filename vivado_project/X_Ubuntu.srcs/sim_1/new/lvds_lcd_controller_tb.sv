`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/09 19:48:54
// Design Name: 
// Module Name: lvds_lcd_controller_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lvds_lcd_controller_tb;

    parameter DATA_IN_LEN = 8;
    parameter LVDS_LANES = 4;

    logic                    clk_sys_i;
    logic                   clk_sys_h_i;
    logic                    rst_n_i;
    
    logic                    lcd_de_i;
    logic                    lcd_vs_i;
    logic                    lcd_hs_i;
    
    logic[DATA_IN_LEN-1:0]    lcd_r_i    ;
    logic[DATA_IN_LEN-1:0]    lcd_g_i    ;
    logic[DATA_IN_LEN-1:0]    lcd_b_i    ;
           
    wire[LVDS_LANES-1:0]    lvds_data_p_o;
    wire[LVDS_LANES-1:0]    lvds_data_n_o;
    wire                    lvds_clk_p_o;
    wire                    lvds_clk_n_o;  
    
    lvds_lcd_controller#(
        .DATA_IN_LEN(DATA_IN_LEN),
        .LVDS_LANES (LVDS_LANES )
       )test(
        .clk_sys_i	(clk_sys_i	),
        .clk_sys_h_i(clk_sys_h_i),
        .rst_n_i	(rst_n_i	),
        .lcd_de_i	(lcd_de_i	),
        .lcd_vs_i	(lcd_vs_i	),
        .lcd_hs_i	(lcd_hs_i	),
        .lcd_r_i    (lcd_r_i    ),
        .lcd_g_i    (lcd_g_i    ),
        .lcd_b_i    (lcd_b_i    ),
           
        .lvds_data_p_o	(lvds_data_p_o	),
        .lvds_data_n_o	(lvds_data_n_o	),
        .lvds_clk_p_o	(lvds_clk_p_o	),
        .lvds_clk_n_o	(lvds_clk_n_o	)
       );
	   
	vga_drv#(
		.PIX_WIDTH(8)
	)vga_drv_int(
		.rst_n_i(rst_n_i),
		.clk_i	(clk_sys_i),
		.r_i	(8'hA5),
		.g_i	(8'h00),
		.b_i	(8'h00),
		
		.r_o	(lcd_r_i),
		.g_o	(lcd_g_i),
		.b_o	(lcd_b_i),
		.de 	(lcd_de_i),
		.vsync	(lcd_vs_i),
		.hsync	(lcd_hs_i),
		.new_fram_o()
    );   
	   
	
	initial begin
		clk_sys_i = 0;
		clk_sys_h_i = 0;
		rst_n_i = 0;
		repeat(100)@(posedge clk_sys_i);
		rst_n_i = 1;
		repeat(2000)@(posedge clk_sys_i);
		$stop;
	end
	
	always #35 	clk_sys_i = ~clk_sys_i;
	always #5	clk_sys_h_i = ~clk_sys_h_i;
	
	
    
endmodule
