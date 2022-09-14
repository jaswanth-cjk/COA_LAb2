`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:08:40 09/14/2022 
// Design Name: 
// Module Name:    B_4_bit_upcounter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module B_4_bit_upcounter(clk, rst, y );

input clk;
input rst;
output reg [3:0] y;

wire newclk;

Clock_divider clk_div(.clk(clk) , .newclk(newclk));
always @(posedge newclk or posedge rst)
	begin
		 if(rst)
		 y<= 4'b0000;
		 
		 else
		 begin
		  y<=y+4'd1;
		 end

	end
endmodule 


