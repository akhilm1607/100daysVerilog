`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 12:52:27
// Design Name: 
// Module Name: or_nor
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


module or_nor(input a, b, output y);

wire temp;

nor nr4(temp, a, b);
nor nr5(y, temp, temp);

endmodule
