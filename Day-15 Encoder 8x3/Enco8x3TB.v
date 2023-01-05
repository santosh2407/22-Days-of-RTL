`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2023 14:42:42
// Design Name: 
// Module Name: Enco8x3TB
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


module Enco8x3TB();
reg [7:0] in;
wire [2:0] out;

Enco8x3 uut(.in(in),.out(out));
initial 
    begin
        in =  8'b00000001; #100
        in =  8'b00000010; #100
        in =  8'b00000100; #100
        in =  8'b00001000; #100
        in =  8'b00010000; #100
        in =  8'b00100000; #100
        in =  8'b01000000; #100
        in =  8'b10000000; #100
        $finish();
    end
            
endmodule
