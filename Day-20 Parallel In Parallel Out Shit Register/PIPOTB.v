`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santish Kumar E 
// 
// Create Date: 22.01.2023 19:05:00
// Design Name: 
// Module Name: PIPOTB
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


module PIPOTB();
reg clk,load;
reg [3:0]in;
wire [3:0]out;

PIPO dut(.clk(clk),.load(load),.in(in),.out(out));
initial 
    begin 
    clk =0;
        forever #10 clk = ~clk;
    end
    
initial 
    begin 
        in = 4'b1001; load = 1; #20
        in = 4'b0101; load = 1; #20
        in = 4'b1101; load = 1; #20
        in = 4'b1011; load = 0; #20
        in = 4'b0001; load = 1; #100
       $finish();
       
     end
     
endmodule
