`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2022 21:57:21
// Design Name: 
// Module Name: JKFF
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


module JKFF(jk,clk,q,qbar);
input [1:0] jk;
input clk;
output reg q;
output qbar;

always@(posedge clk)
    begin
   case(jk)
        2'b00 : q = q;
        2'b01 : q = 0;
        2'b10 : q = 1;
        2'b11 : q = ~q;
   endcase
   end
   assign qbar = ~q;
endmodule
