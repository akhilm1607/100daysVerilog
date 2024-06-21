`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 17:45:27
// Design Name: 
// Module Name: bin_onehot_tb
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


module bin_onehot_tb();

reg [2:0]bin;
wire [7:0]one_hot;

bin_onehot b0(bin, one_hot);

reg [3:0]num;

initial
begin: blk1
    for(num = 0; num < 8; num = num + 1)
    begin
        bin = num;
        #10;
    end
    #10 $finish;
end


endmodule
