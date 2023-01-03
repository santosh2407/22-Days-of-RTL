`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 02.01.2023 20:13:12
// Design Name: 
// Module Name: CLA
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


module CLA(in1,in2,cin,sum,cout);

input [3:0] in1,in2;
input cin;
output [3:0] sum;
output cout;

wire pr0,pr1,pr2,pr3,gen0,gen1,gen2,gen3;   //Propagates and Generates
wire cry1,cry2,cry3,cry4;                   // Carries

assign 
    pr0 = in1[0] ^ in2[0],
    pr1 = in1[1] ^ in2[1],
    pr2 = in1[2] ^ in2[2],
    pr3 = in1[3] ^ in2[3];

assign 
    gen0 = in1[0] & in2[0],
    gen1 = in1[1] & in2[1],
    gen2 = in1[2] & in2[2],
    gen3 = in1[3] & in2[3];

assign 
    cry1 = gen0 | (pr0 & cin),
    cry2 = gen1 | (pr1 & gen0) | (pr1 & pr0 & cin),
    cry3 = gen2 | (pr2 & gen1) | (pr2 & pr1 & gen0) | (pr2 & pr1 & pr0 & cin),
    cry4 = gen3 | (pr3 & gen2) | (pr3 & pr2 & gen1) | (pr3 & pr2 & pr1 & cin) | (pr3 & pr2 & pr1 & pr0 & cin);
    
assign 
    sum[0] = pr0 ^ cin,
    sum[1] = pr1 ^ cry1,
    sum[2] = pr2 ^ cry2,
    sum[3] = pr3 ^ cry3;

assign cout = cry4; 

endmodule
