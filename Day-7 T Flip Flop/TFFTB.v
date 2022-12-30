`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 29.12.2022 15:59:29
// Design Name: 
// Module Name: TFFTB
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


module TFFTB();
reg t,clk;
wire q,qbar;

TFF ut(.t(t),.clk(clk),.q(q),.qbar(qbar));

initial begin
    clk = 0;
        forever #10 clk = ~clk;
    end 
initial begin 
t = 0;
#100
t = 1;
#100
t = 0;
#100
t = 1;
#100
$finish();
end
endmodule
