`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 27.01.2023 21:14:29
// Design Name: 
// Module Name: SIPO
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


module SIPO(clk,load,cnst,out);
input clk,load,cnst;
output reg [3:0]out;



always@(posedge clk)
begin
    if(load)
       begin
       out[3] <= cnst;
       out[2] <= out[3];
       out[1] <= out[2];
       out[0] <= out[1];
       end
    else
        out = 4'b0000;
          
end
endmodule
