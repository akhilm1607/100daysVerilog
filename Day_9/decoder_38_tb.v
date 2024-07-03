`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 17:42:22
// Design Name: 
// Module Name: decoder_38_tb
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


module decoder_38_tb();

reg [2:0]d;
reg en;
wire [7:0]y;

decoder_38 d0(d, en, y);

initial
begin
    en = 0;
    #10 en = 1; d = 0;
    #10 d = 1;
    #10 d = 2;
    #10 d = 3;
    #10 d = 4;
    #10 d = 5;
    #10 d = 6;
    #10 d = 7;
    #10 $finish;
end

endmodule
