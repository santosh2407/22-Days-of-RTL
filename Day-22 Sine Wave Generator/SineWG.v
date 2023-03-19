`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 22:59:23
// Design Name: Santosh Kumar E
// Module Name: SineWG
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


module SineWG(clk,dout);
//declare input and output
    input clk;
    output [7:0] dout;
//declare the sine ROM - 30 registers each 8 bit wide.  
    reg [7:0] sine [0:99];
//Internal signals  
    integer i;  
    reg [7:0] dout; 
//Initialize the sine rom with samples. 
    initial begin
        i = 0;
       sine[0] = 0;
                sine[1] = 5;
                sine[2] = 10;
                sine[3] = 15;
                sine[4] = 19;
                sine[5] = 24;
                sine[6] = 29;
                sine[7] = 33;
                sine[8] = 38;
                sine[9] = 42;
                sine[10] = 46;
                sine[11] = 50;
                sine[12] = 53;
                sine[13] = 57;
                sine[14] = 60;
                sine[15] = 63;
                sine[16] = 66;
                sine[17] = 68;
                sine[18] = 71;
                sine[19] = 73;
                sine[20] = 74;
                sine[21] = 76;
                sine[22] = 77;
                sine[23] = 78;
                sine[24] = 78;
                sine[25] = 78;
                sine[26] = 78;
                sine[27] = 78;
                sine[28] = 77;
                sine[29] = 76;
                sine[30] = 74;
                sine[31] = 73;
                sine[32] = 71;
                sine[33] = 68;
                sine[34] = 66;
                sine[35] = 63;
                sine[36] = 60;
                sine[37] = 57;
                sine[38] = 53;
                sine[39] = 50;
                sine[40] = 46;
                sine[41] = 42;
                sine[42] = 38;
                sine[43] = 33;
                sine[44] = 29;
                sine[45] = 24;
                sine[46] = 19;
                sine[47] = 15;
                sine[48] = 10;
                sine[49] = 5;
                sine[50] = 0;
                sine[51] = -5;
                sine[52] = -10;
                sine[53] = -15;
                sine[54] = -19;
                sine[55] = -24;
                sine[56] = -29;
                sine[57] = -33;
                sine[58] = -38;
                sine[59] = -42;
                sine[60] = -46;
                sine[61] = -50;
                sine[62] = -53;
                sine[63] = -57;
                sine[64] = -60;
                sine[65] = -63;
                sine[66] = -66;
                sine[67] = -68;
                sine[68] = -71;
                sine[69] = -73;
                sine[70] = -74;
                sine[71] = -76;
                sine[72] = -77;
                sine[73] = -78;
                sine[74] = -78;
                sine[75] = -78;
                sine[76] = -78;
                sine[77] = -78;
                sine[78] = -77;
                sine[79] = -76;
                sine[80] = -74;
                sine[81] = -73;
                sine[82] = -71;
                sine[83] = -68;
                sine[84] = -66;
                sine[85] = -63;
                sine[86] = -60;
                sine[87] = -57;
                sine[88] = -53;
                sine[89] = -50;
                sine[90] = -46;
                sine[91] = -42;
                sine[92] = -38;
                sine[93] = -33;
                sine[94] = -29;
                sine[95] = -24;
                sine[96] = -19;
                sine[97] = -15;
                sine[98] = -10;
                sine[99] = -5;
    end
    
    //At every positive edge of the clock, output a sine wave sample.
    always@ (posedge(clk))
    begin
        dout = sine[i];
        i = i+ 1;
        if(i == 100)
            i = 0;
    end

endmodule
