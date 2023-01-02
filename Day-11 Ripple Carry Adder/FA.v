`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2023 18:10:48
// Design Name: 
// Module Name: FA
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


module FA(in1,in2,cin,sum,cout);

input in1,in2,cin;
output sum,cout;

assign sum = in1 ^ in2 ^ cin;
assign cout = ((in1 ^ in2) & cin) | (in1 & in2);

endmodule
