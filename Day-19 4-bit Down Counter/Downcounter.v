`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 09.01.2023 17:22:07
// Design Name: 
// Module Name: Downcounter
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


module Downcounter(clk,rest,cnt);
input clk,rest;
output reg [3:0] cnt; 

always@(posedge clk)
    begin
        if(rest)
            begin
                cnt <= 4'b1111;
            end 
        else
            cnt <= cnt - 1;
    end
endmodule
