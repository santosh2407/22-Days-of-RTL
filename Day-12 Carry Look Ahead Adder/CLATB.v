`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 02.01.2023 22:16:38
// Design Name: 
// Module Name: CLATB
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


module CLATB();

reg [3:0] in1,in2;
reg cin;
wire [3:0] sum;
wire cout;

CLA uut(.in1(in1),.in2(in2),.cin(cin),.cout(cout),.sum(sum));

initial 
    begin
            in1 = 4'b0001; in2 = 4'b0001; cin = 1'b0; #100
            in1 = 4'b0010; in2 = 4'b0101; cin = 1'b1; #100
            in1 = 4'b0000; in2 = 4'b0101; cin = 1'b1; #100
            in1 = 4'b0100; in2 = 4'b0001; cin = 1'b0; #100
            in1 = 4'b0101; in2 = 4'b0001; cin = 1'b1; #100
            $finish();
    end
endmodule
