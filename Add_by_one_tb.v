`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:00:55 09/14/2022
// Design Name:   Add_by_one
// Module Name:   /home/jaswanth/ISE Project/UpCounter/Add_by_one_tb.v
// Project Name:  UpCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Add_by_one
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Add_by_one_tb;

	// Inputs
	reg [3:0] a;

	// Outputs
	wire [3:0] sum;

	// Instantiate the Unit Under Test (UUT)
	Add_by_one uut (
		.a(a), 
		.sum(sum)
	);

	initial begin
		// Initialize Inputs
		a = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
		
		a=4'b0001;
		#50;
		a=4'b0010;
		#50;
		a=4'b0011;
		#50;
		
		
        
		// Add stimulus here

	end
      
endmodule

