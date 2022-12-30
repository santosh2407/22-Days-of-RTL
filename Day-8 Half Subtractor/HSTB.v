`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 29.12.2022 22:54:36
// Design Name: 
// Module Name: HSTB
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


module HSTB();

reg x,y;
wire br, sub;

HS ut(.x(x),.y(y),.br(br),.sub(sub));
initial 
    begin
        x = 1'b0; y = 1'b0;
           #100
           x = 1'b0; y = 1'b1;
           #100
           x = 1'b1; y = 1'b0;
           #100
           x = 1'b1; y = 1'b1;
    end
endmodule
