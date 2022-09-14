`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:22 09/14/2022 
// Design Name: 
// Module Name:    Add_by_one 
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
module Add_by_one( a,sum);
	 
	 input [3:0] a;
    output [3:0] sum;
    wire [3:0] p, g;        // propagate and generate bits 
    wire [3:0] c;           // carry bits
    assign p = a;       // assign values to propagate bits

    // compute the carry bits
    assign c[0] = 1'b1;
    assign c[1] = p[0];
    assign c[2] =(p[1] & p[0]);
    assign c[3] = (p[2] & p[1] & p[0]);
    assign c_out =  (p[3] & p[2] & p[1] & p[0]);

    // compute the sum
    assign sum = p ^ c;





endmodule
