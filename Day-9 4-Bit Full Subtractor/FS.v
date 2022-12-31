`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 30.12.2022 19:20:45
// Design Name: 
// Module Name: FS
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


module FS(x,y,z,br,sub);

input [3:0]x,y,z;
output [3:0]sub;
output br;


    assign sub = x^y^z;
    assign br = ~x&y | (z & ~(x^y));
    
    
endmodule
