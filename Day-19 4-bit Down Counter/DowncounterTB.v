`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 09.01.2023 17:32:07
// Design Name: 
// Module Name: DowncounterTB
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


module DowncounterTB();
reg clk,rest;
wire [3:0] cnt;

Downcounter uut(.clk(clk),.rest(rest),.cnt(cnt));
initial 
    begin
          clk = 0; 
          forever #10 clk = ~clk;
    end

initial 
    begin 
        rest = 1;
        #100
        rest = 0;
        
        #400
        $finish();
    end
endmodule
