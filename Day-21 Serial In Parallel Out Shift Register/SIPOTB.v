`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 27.01.2023 21:43:35
// Design Name: 
// Module Name: SIPOTB
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


module SIPOTB();
reg clk,load,cnst;
wire [3:0]out;

SIPO uut(.clk(clk),.load(load),.cnst(cnst),.out(out));
initial
    begin
        clk = 0;
        forever #10 clk = ~clk;
    end
initial
    begin
    load = 0;
    cnst = 0;
    #10 load = 1'b0;
    #10 load = 1'b1;
    #100 cnst = 1'b0;
    #100 cnst = 1'b1;
    #100 cnst = 1'b0;
    #100 cnst = 1'b1;
    #100
    $finish();
    end
endmodule
