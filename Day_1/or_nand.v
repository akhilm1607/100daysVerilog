`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 12:00:34
// Design Name: 
// Module Name: or_nand
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


module or_nand(input a, b, output y);

wire temp1, temp2;

nand n3(temp1, a, a);
nand n4(temp2, b, b);
nand n5(y, temp1, temp2);

endmodule
