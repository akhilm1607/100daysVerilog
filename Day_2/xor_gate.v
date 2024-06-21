`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 16:29:35
// Design Name: 
// Module Name: xor_gate
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


module xor_gate(input a, b, output y1, y2);

wire temp0, temp1, temp2;

nor n0(temp0, a, b);
nand n1(temp1, a, b);
aoi21 a0(y1, a, b, temp0);
oai21 o0(temp2, a, b, temp1);
not n2(y2, temp2);

endmodule
