`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 29.12.2022 15:56:39
// Design Name: 
// Module Name: TFF
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


module TFF(t,clk,q,qbar);
input t,clk;
output reg q;
output qbar;

always@(posedge clk) 
begin
    q = 0;
    if(t==1)
        q = ~q;
    else 
        q = q;
    end
    assign qbar = ~q;
    endmodule
