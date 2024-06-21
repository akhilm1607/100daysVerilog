`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 16:23:58
// Design Name: 
// Module Name: bcd_bin_tb
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


module bcd_bin_tb();

reg [11:0]bcd;
wire [7:0]bin;

bcd_bin b1(bcd, bin);

initial
begin
    bcd = 12'h255;
    #10 bcd = 12'h94;
    #10 bcd = 12'h11;
    #10 bcd = 12'h0;
    #10 $finish;
end

endmodule
