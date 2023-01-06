`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2023 22:11:25
// Design Name: 
// Module Name: UC4bTB
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


module UC4bTB();
reg clk,rst;
wire [4:0] cnt;

UC4b uut(.clk(clk),.rst(rst),.cnt(cnt));
initial
    begin
        clk = 0;
        forever #10 clk = ~clk;
    end
initial     
    begin
        rst = 1;
        #100
        rst = 0;
        
        #400
        $finish();
    end
endmodule
