`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: K L University
// Engineer: Santosh Kumar E
// 
// Create Date: 20.12.2022 21:55:06
// Design Name: 
// Module Name: All Logic Gates TB
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


module logicgate_tb();
reg a_tb,b_tb,c_tb;
wire y1_tb,y2_tb,y3_tb,y4_tb,y5_tb,y6_tb,y7_tb;
AllLogicGates a1(.a(a_tb),.b(b_tb),.c(c_tb),.y2(y2_tb));
AllLogicGates o1(.a(a_tb),.b(b_tb),.c(c_tb),.y1(y1_tb));
AllLogicGates n1(.a(a_tb),.y3(y3_tb));
AllLogicGates nr(.a(a_tb),.b(b_tb),.c(c_tb),.y4(y4_tb));
AllLogicGates na(.a(a_tb),.b(b_tb),.c(c_tb),.y5(y5_tb));
AllLogicGates xr(.a(a_tb),.b(b_tb),.c(c_tb),.y6(y6_tb));
AllLogicGates xn(.a(a_tb),.b(b_tb),.c(c_tb),.y7(y7_tb));

initial begin
a_tb=0;b_tb=0;c_tb=1;
#30 a_tb=0;b_tb=1;c_tb=0;
#30 a_tb=1;b_tb=0;c_tb=1;
#30 a_tb=1;b_tb=1;c_tb=1;
end
endmodule

