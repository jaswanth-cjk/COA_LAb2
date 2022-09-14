`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:40:57 09/14/2022
// Design Name:   B_4_bit_upcounter
// Module Name:   /home/jaswanth/ISE Project/UpCounter/B_4_bit_upcounter_tb.v
// Project Name:  UpCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: B_4_bit_upcounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module B_4_bit_upcounter_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	B_4_bit_upcounter uut (
		.clk(clk), 
		.rst(rst), 
		.y(y)
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

