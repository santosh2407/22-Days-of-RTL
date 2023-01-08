`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2023 11:52:31
// Design Name: 
// Module Name: Comp8bitTB
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


module Comp8bitTB();
reg [7:0] in1,in2;
wire le,eq,gr;

Comp8bit uut(.in1(in1),.in2(in2),.le(le),.eq(eq),.gr(gr));
initial
    begin
        in1 = 8'd1; in2 = 8'd2; #100
        in1 = 8'd5; in2 = 8'd2; #100
        in1 = 8'd1; in2 = 8'd9; #100
        in1 = 8'd1; in2 = 8'd0; #100
        in1 = 8'd5; in2 = 8'd5; #100
        in1 = 8'd9; in2 = 8'd9; #100
        $finish();
    end
endmodule
