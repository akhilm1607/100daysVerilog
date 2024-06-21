`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 17:42:59
// Design Name: 
// Module Name: onehot_bin
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


module onehot_bin(input [7:0]onehot, output reg [2:0]bin);

reg [2:0]num;
reg [7:0]onehot_temp;
integer i;

initial 
begin
    num = 0;
    onehot_temp = onehot;
end

always@(*)
begin
    bin = 0;
    for(i = 0; i < 8; i = i + 1)
    begin
        if(onehot[i])
            bin = i;
    end
end

endmodule
