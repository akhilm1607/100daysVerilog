`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 16:08:21
// Design Name: 
// Module Name: bcd_bin
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


module bcd_bin(
input [11:0]bcd,
output reg [7:0]bin);

reg [7:0]dig3, dig2, dig1;

always@(bcd)
begin
    case(bcd[3:0])		//Units digit
        0: dig1 = 0;
        1: dig1 = 1;
        2: dig1 = 2;
        3: dig1 = 3;
        4: dig1 = 4;
        5: dig1 = 5;
        6: dig1 = 6;
        7: dig1 = 7;
        8: dig1 = 8;
        9: dig1 = 9;
    endcase
    case(bcd[7:4])		//Tens digit
        0: dig2 = 0;
        1: dig2 = 10;
        2: dig2 = 20;
        3: dig2 = 30;
        4: dig2 = 40;
        5: dig2 = 50;
        6: dig2 = 60;
        7: dig2 = 70;
        8: dig2 = 80;
        9: dig2 = 90;
    endcase
    case(bcd[11:8])		//Hundereds digit
        0: dig3 = 0;
        1: dig3 = 100;
        2: dig3 = 200;
        3: dig3 = 300;
        4: dig3 = 400;
        5: dig3 = 500;
        6: dig3 = 600;
        7: dig3 = 700;
        8: dig3 = 800;
        9: dig3 = 900;
    endcase
    
//All the digits are added to get the binary
    bin = dig1 + dig2 + dig3;
end
endmodule

