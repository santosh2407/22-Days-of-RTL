`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 23:00:52
// Design Name: Santosh Kumar E
// Module Name: SineWGTB
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


module SineWGTB;

    // Inputs
    reg clk;

    // Outputs
    wire [7:0] dout;

    // Instantiate the Unit Under Test (UUT)
    SineWG uut (
        .clk(clk), 
        .dout(dout)
    );

    //Generate a clock with 10 ns clock period.
    initial clk = 0;
    always #10 clk = ~clk;
    
endmodule
