`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 17:53:26
// Design Name: 
// Module Name: onehot_bin_tb
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


module onehot_bin_tb();

reg [7:0]onehot;
wire [2:0]bin;

onehot_bin o0(onehot, bin);

reg [3:0]num;

initial
begin: blk1
    for(num = 0; num < 8; num = num + 1)
    begin
        onehot = 8'b1 << num;
        #10;
    end
    #10 $finish;
end


endmodule
