`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:45 09/14/2022 
// Design Name: 
// Module Name:    D_Flipflop 
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
/////////////////////////////////////////////////////////////////////////////////
 module D_Flipflop( input clk, input rst, input D, output reg Q); 

 always @ (posedge (clk) or posedge (rst))
 
  begin  
  
    if(rst)
	      Q= 0;
			
	 else 
	     Q= D;
  
  
  end
 
  
  endmodule 
