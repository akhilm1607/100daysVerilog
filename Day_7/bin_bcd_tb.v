`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 16:15:42
// Design Name: 
// Module Name: bin_bcd_tb
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


module bin_bcd_tb();

reg [7:0]bin;
wire [11:0]bcd;

bin_bcd b0(bin, bcd);

reg [8:0]num;

initial
begin: blk1
    for(num = 0; num < 256; num = num + 1)
    begin
        bin = num;
        #10;
    end
    #10 $finish;
end
endmodule
