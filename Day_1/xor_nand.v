`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 12:04:14
// Design Name: 
// Module Name: xor_nand
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


module xor_nand(input a, b, output y);

wire temp1, temp2, temp3;

nand n10(temp1, a, b);
nand n11(temp2, a, temp1);
nand n12(temp3, temp1, b);
nand n13(y, temp2, temp3);

endmodule
