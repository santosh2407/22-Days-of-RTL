`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 03.01.2023 23:16:09
// Design Name: 
// Module Name: Decoder2x4TB
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


module Decoder2x4TB();

reg a,b,en;
wire d1,d2,d3,d4;

Decoder2x4 uut(.a(a),.b(b),.en(en),.d1(d1),.d2(d2),.d3(d3),.d4(d4));

initial 
    begin
        a = 1'b1; b = 1'b1; en = 1'b0; #100
        a = 1'b0; b = 1'b0; en = 1'b1; #100
        a = 1'b0; b = 1'b1; en = 1'b1; #100
        a = 1'b1; b = 1'b0; en = 1'b1; #100
        a = 1'b1; b = 1'b1; en = 1'b1; #100
        $finish();
     end
endmodule
