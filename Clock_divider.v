`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:39 09/14/2022 
// Design Name: 
// Module Name:    Clock_divider 
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
module Clock_divider(input clk, output reg newclk);
reg [20:0] count =21'd0;
always @(posedge clk)

  begin
     count=count+1;
	  newclk=count[20];
  
  end

  
endmodule


