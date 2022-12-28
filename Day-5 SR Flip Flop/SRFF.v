`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 27.12.2022 21:54:56
// Design Name: 
// Module Name: SRFF
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


module SRFF(sr,clk,q,qbar);
input [1:0]sr;
input clk;
output reg q;
output qbar;

always@(posedge clk)
    begin 
    case(sr)
        2'b00 : q = q;
        2'b01 : q = 0;              //Case Statement can also be used
        2'b10 : q = 1;
        2'b11 : q = 1'bz;
    endcase
    end
    
    assign qbar = ~q;
endmodule
