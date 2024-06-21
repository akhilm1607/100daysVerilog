`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 12:52:27
// Design Name: 
// Module Name: and_nor
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


module and_nor(input a, b, output y);

wire temp1, temp2;

nor nr1(temp1, a, a);
nor nr2(temp2, b, b);
nor nr3(y, temp1, temp2);

endmodule
