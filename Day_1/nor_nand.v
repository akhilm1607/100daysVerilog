`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 12:04:14
// Design Name: 
// Module Name: nor_nand
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


module nor_nand(input a, b, output y);

wire temp1, temp2, temp3;

nand n6(temp1, a, a);
nand n7(temp2, b, b);
nand n8(temp3, temp1, temp2);
nand n9(y, temp3, temp3);

endmodule
