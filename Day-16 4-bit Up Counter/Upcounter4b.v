`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2023 22:04:55
// Design Name: 
// Module Name: UC4b
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


module UC4b(clk,rst,cnt);
input clk,rst;
output reg [4:0] cnt;

always@(posedge clk) 
begin
    if(rst==1)begin
    cnt = 0;
    end
    else 
        cnt = cnt+1;
end 
endmodule
