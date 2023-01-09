`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2023 12:18:39
// Design Name: 
// Module Name: ParitygenTB
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


module ParitygenTB();
reg [15:0] in;
wire oddp,evenp,che,oddche,evenche;

Paritygen uut(.in(in),.oddp(oddp),.evenp(evenp),.che(che),.evenche(evenche),.oddche(oddche));
initial 
    begin
            in = 16'h01; #150
            in = 16'h0a; #150
            in = 16'h0b; #150
            in = 16'h09; #150
            in = 16'h05; #150
            in = 16'h04; #150
            in = 16'h02; #150
            in = 16'h0c; #150
            in = 16'h0d; #150
            in = 16'h0f; #150
            $finish();
      end   
endmodule
