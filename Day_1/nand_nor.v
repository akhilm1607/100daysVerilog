`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 12:52:27
// Design Name: 
// Module Name: nand_nor
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


module nand_nor(input a, b, output y);

wire temp1, temp2, temp3;

nor nr6(temp1, a, a);
nor nr7(temp2, b, b);
nor nr8(temp3, temp2, temp1);
nor nr9(y, temp3, temp3);

endmodule
