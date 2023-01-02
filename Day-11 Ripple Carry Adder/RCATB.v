`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2023 19:09:32
// Design Name: 
// Module Name: RCATB
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


module RCATB();
reg [3:0] in1,in2;
wire [3:0] sum;
wire cout;

RCA uut(.in1(in1), .in2(in2), .sum(sum), .cout(cout));

initial
    begin
            in1 = 4'b0001; in2 = 4'b0000; #100
            in1 = 4'b0010; in2 = 4'b0001; #100
            in1 = 4'b0011; in2 = 4'b0010; #100
            in1 = 4'b0100; in2 = 4'b1011; #100
            in1 = 4'b0001; in2 = 4'b0100; #100
            in1 = 4'b0011; in2 = 4'b0101; #100
            in1 = 4'b1111; in2 = 4'b0110; #100
            in1 = 4'b0010; in2 = 4'b0111; #100
            in1 = 4'b0101; in2 = 4'b1000; #100
            in1 = 4'b0111; in2 = 4'b1001; #100
            $finish();    
    end 
endmodule
