`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2022 22:03:23
// Design Name: 
// Module Name: JKFFTB
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


module JKFFTB();
reg [1:0]jk;
reg clk;
wire q, qbar;

JKFF ut(.jk(jk),.clk(clk),.q(q),.qbar(qbar));

initial begin
    clk = 0;
        forever #10 clk = ~clk;
end 

initial begin 

    jk = 2'b00;
    #100
    jk = 2'b01;
    #100
    jk = 2'b10;
    #100
    jk = 2'b11;
end
endmodule
