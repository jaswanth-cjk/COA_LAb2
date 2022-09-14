`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:10 09/14/2022 
// Design Name: 
// Module Name:    Str_4_bit_Counter 
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
module Str_4_bit_Counter( clk, dff_out, rst );

input clk,rst;
output [3:0] dff_out;

wire [3:0] sum_out;
wire [3:0] dff_out;
wire c;
wire newclk;

Str_Clk_divider div(.clk(clk) , .newclk(newclk));

D_Flipflop d1(newclk, rst,sum_out[0],dff_out[0]);
D_Flipflop d2(newclk, rst,sum_out[1],dff_out[1]);
D_Flipflop d3(newclk, rst,sum_out[2],dff_out[2]);
D_Flipflop d4(newclk, rst,sum_out[3],dff_out[3]);

Add_by_one add(dff_out, sum_out);
endmodule
