`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 12:04:14
// Design Name: 
// Module Name: xnor_nand
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


module xnor_nand(input a, b, output y);
    
wire temp1, temp2, temp3, temp4;
    
nand n14(temp1, a, b);
nand n15(temp2, a, temp1);
nand n16(temp3, temp1, b);
nand n17(temp4, temp2, temp3);
nand n18(y, temp4, temp4);

endmodule
