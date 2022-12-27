`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Santosh Kumar E
// 
// Create Date: 27.12.2022 14:16:23
// Design Name: 
// Module Name: DFF_TB
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


module DFF_TB();

    reg d, clk;
    wire q;
    
    DFF ut(.d(d),.q(q),.clk(clk));
    initial begin 
        clk = 0;
            forever #10 clk = ~clk;
    end
    
    initial begin
    d<=0;
    #100     
    d <= 1;
    #100
    d <= 0;
    #100
    d <= 1;
    #100
    $finish();                          // To terminate the operation 
    end
endmodule
