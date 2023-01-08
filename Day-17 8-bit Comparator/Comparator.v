`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 08.01.2023 11:48:37
// Design Name: 
// Module Name: Comp8bit
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


module Comp8bit(in1,in2,le,eq,gr);
input [7:0] in1,in2;
output le,eq,gr;

assign 
        le = in1 < in2,
        eq = in1 == in2,
        gr = in1 > in2;
endmodule
