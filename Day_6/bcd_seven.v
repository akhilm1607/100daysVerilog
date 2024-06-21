`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 10:54:33
// Design Name: 
// Module Name: bcd_seven
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


module bcd_seven(input [3:0]bcd, output reg [6:0]seven);

always@(*)
case(bcd)
//                      0123456
    4'b0000: seven = 7'b0000001;
    4'b0001: seven = 7'b1001111;
    4'b0010: seven = 7'b0010010;
    4'b0011: seven = 7'b0000110;
    4'b0100: seven = 7'b1001100;
    4'b0101: seven = 7'b0100100;
    4'b0110: seven = 7'b0100000;
    4'b0111: seven = 7'b0001111;
    4'b1000: seven = 7'b0000000;
    4'b1001: seven = 7'b0000100;
    default: seven = 7'b1111111;
endcase

endmodule
