`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:42:37 09/14/2022
// Design Name:   Str_4_bit_Counter
// Module Name:   /home/jaswanth/ISE Project/UpCounter/Str_4_bit_Counter_tb.v
// Project Name:  UpCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Str_4_bit_Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Str_4_bit_Counter_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] dff_out;

	// Instantiate the Unit Under Test (UUT)
	Str_4_bit_Counter uut (
		.clk(clk), 
		.dff_out(dff_out), 
		.rst(rst)
	);

	initial
    begin
        clk<=1'd0;
        rst<=1'd1;
    end

always #10 clk=~clk;

initial
    begin
        #50 ;
		  rst<=1'd0;
		  
    end
      
endmodule

