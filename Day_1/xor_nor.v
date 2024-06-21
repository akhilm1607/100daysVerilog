`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 12:52:27
// Design Name: 
// Module Name: xor_nor
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


module xor_nor(input a, b, output y);

wire temp1, temp2, temp3, temp4;

nor nr10(temp1, a, b);
nor nr11(temp2, a, temp1);
nor nr12(temp3, temp1, b);
nor nr13(temp4, temp2, temp3);
nor nr14(y, temp4, temp4);

endmodule
