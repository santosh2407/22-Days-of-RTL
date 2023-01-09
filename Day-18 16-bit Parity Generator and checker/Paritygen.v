`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2023 12:16:22
// Design Name: 
// Module Name: Paritygen
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


module Paritygen(in,oddp,evenp,che,oddche,evenche);

input [15:0] in;
output oddp,evenp;
output reg che = 1;
output oddche,evenche;

assign                  //Parity Generator
        evenp = ^in,
        oddp = ~^in;

assign                  //Parity Checker
        oddche = in^che,
        evenche = ~(in^che);
endmodule
