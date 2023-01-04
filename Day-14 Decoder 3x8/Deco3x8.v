`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 03.01.2023 23:31:29
// Design Name: 
// Module Name: Deco3x8
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


module Deco3x8(x,y,z,en,d0,d1,d2,d3,d4,d5,d6,d7);

input x,y,z,en;
output d0,d1,d2,d3,d4,d5,d6,d7;

assign 
    d0 = (~x & ~y & ~z),
    d1 = (~x & ~y & z),
    d2 = (~x & y & ~z),
    d3 = (~x & y & z),
    d4 = (x & ~y & ~z),
    d5 = (x & ~y & z),
    d6 = (x & y & ~z),
    d7 = (x & y & z);

endmodule
