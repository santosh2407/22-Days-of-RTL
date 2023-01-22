`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 22.01.2023 18:56:25
// Design Name: 
// Module Name: PIPO
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


module PIPO(load,clk,in,out);
input clk,load;
input [3:0]in;
output reg [3:0]out;

always@(posedge clk)
begin
     if(load)
        begin 
            out = in;
        end
     else 
        begin 
            out = 4'b0000;
         end
end 
endmodule
