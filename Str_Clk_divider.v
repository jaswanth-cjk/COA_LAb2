`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:03:12 09/14/2022 
// Design Name: 
// Module Name:    Str_Clk_divider 
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
module Str_Clk_divider(input clk, output reg newclk );

reg [20:0] count =21'd0;
always @(posedge clk)

  begin
     count=count+1;
	  newclk=count[20];
  
  end

  
endmodule

