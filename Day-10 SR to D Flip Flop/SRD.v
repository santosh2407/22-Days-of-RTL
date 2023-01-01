`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 31.12.2022 21:09:43
// Design Name: 
// Module Name: SRD
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


module SRD(q,s,r,d,clk);
input d,clk;
output s,r;
output reg q;


always@(posedge clk)
begin
    q <=d;
end
assign s = d;
assign r = ~d;
endmodule
