`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 12:52:27
// Design Name: 
// Module Name: xnor_nor
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


module xnor_nor(input a, b, output y);

wire temp1, temp2, temp3;

nor nr15(temp1, a, b);
nor nr16(temp2, a, temp1);
nor nr17(temp3, temp1, b);
nor nr18(y, temp2, temp3);

endmodule
