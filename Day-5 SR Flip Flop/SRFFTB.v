`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 28.12.2022 18:08:40
// Design Name: 
// Module Name: SRFFTB
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


module SRFFTB();
reg [1:0]sr;
reg clk;
wire q,qbar;

SRFF ut(.sr(sr),.clk(clk),.q(q),.qbar(qbar));

initial begin
    clk = 0;
        forever #10 clk = ~clk;
end

initial begin
    sr = 2'b00;
    #100
    sr = 2'b01;
    #100
    sr = 2'b10;
    #100
    sr = 2'b11;
    end
endmodule
