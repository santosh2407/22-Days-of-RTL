`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2023 18:53:19
// Design Name: 
// Module Name: RCA
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


module RCA(in1,in2,sum,cout);
input [3:0] in1,in2;
output [3:0] sum;
output cout;

wire cry1,cry2,cry3;

FA a1(in1[0],in2[0],0,sum[0],cry1);
FA a2(in1[1],in2[1],cry1,sum[1],cry2);
FA a3(in1[2],in2[2],cry2,sum[2],cry3);
FA a4(in1[3],in2[3],cry3,sum[3],cout);
 
endmodule
