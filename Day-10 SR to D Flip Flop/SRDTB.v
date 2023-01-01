`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 31.12.2022 21:16:18
// Design Name: 
// Module Name: SRDTB
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


module SRDTB();
reg d,clk;
wire s,r,q;

SRD uut(.d(d),.clk(clk),.s(s),.r(r),.q(q));
initial 
    begin 
        clk = 0;
        forever #10 clk = ~clk;
    end
initial begin
    d = 1'b0;
    #100
    d = 1'b1;
    #100
    d = 1'b0;
    #100
    d = 1'b0;
    #100
    d = 1'b1;
    #100
    $finish();
end 
endmodule
