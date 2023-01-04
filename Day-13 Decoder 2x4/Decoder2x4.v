`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 03.01.2023 23:08:12
// Design Name: 
// Module Name: Decoder2x4
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


module Decoder2x4(a,b,en,d1,d2,d3,d4);
input a,b,en;
output d1,d2,d3,d4;

assign 
    d4 = (en & ~a & ~b),
    d3 = (en & ~a & b),
    d2 = (en & a & ~b),
    d1 = (en & a & b);
    
endmodule
