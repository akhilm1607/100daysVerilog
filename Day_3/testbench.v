`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 17:03:53
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

reg a, b, c;
wire sum, carry;

full_adder f0(a, b, c, sum, carry);

reg [3:0]num;

initial
begin: blk1
    for(num = 0; num < 8; num = num + 1)
    begin
        {a, b, c} = num;
        #10;
    end
    #10 $finish;
end

endmodule
