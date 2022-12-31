`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 30.12.2022 19:43:22
// Design Name: 
// Module Name: FSTB
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


module FSTB();

reg [3:0]x,y,z;
wire [3:0]sub;
wire br;

FS uut(.x(x),.y(y),.z(z),.sub(sub),.br(br));

initial 
    begin
            x = 4'b0001; y = 4'b0001; z = 4'b0000;
            #100
            x = 4'b0001; y = 4'b0001; z = 4'b0001;
            #100
            x = 4'b0101; y = 4'b0001; z = 4'b0001;
            #100
            x = 4'b0111; y = 4'b0010; z = 4'b0001;
            #100
            x = 4'b0000; y = 4'b0001; z = 4'b0010;
            #100
            x = 4'b1111; y = 4'b0101; z = 4'b0000;
            #100
            $finish();
    end
endmodule
