`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 03.01.2023 23:39:11
// Design Name: 
// Module Name: Deco3x8TB
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


module Deco3x8TB();
reg x,y,z,en;
wire d0,d1,d2,d3,d4,d5,d6,d7;

Deco3x8 uut(.x(x),.y(y),.z(z),.en(en),.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7));

initial 
    begin 
            x = 1'b0; y = 1'b0; z = 1'b0; en = 1'b0; #100
            x = 1'b0; y = 1'b0; z = 1'b1; en = 1'b1; #100
            x = 1'b0; y = 1'b1; z = 1'b0; en = 1'b1; #100
            x = 1'b0; y = 1'b1; z = 1'b1; en = 1'b1; #100
            x = 1'b1; y = 1'b0; z = 1'b0; en = 1'b1; #100
            x = 1'b1; y = 1'b0; z = 1'b1; en = 1'b1; #100
            x = 1'b1; y = 1'b1; z = 1'b0; en = 1'b1; #100
            x = 1'b1; y = 1'b1; z = 1'b1; en = 1'b1; #100
            $finish();
    end

endmodule
