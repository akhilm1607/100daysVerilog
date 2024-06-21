`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 17:36:51
// Design Name: 
// Module Name: testbench
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


module testbench();

reg [3:0]bin_in, gray_in;
wire [3:0]bin_out, gray_out;

bin_gray b0(bin_in, gray_out);
gray_bin g0(gray_in, bin_out);

reg [4:0]num;

initial
begin: blk1
    for(num = 0; num < 16; num = num + 1)
    begin
        bin_in = num;
        gray_in = num;
        #10;
    end
    #10 $finish;
end

endmodule
