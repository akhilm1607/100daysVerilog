`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 16:33:22
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

reg in1, in2;
wire out1, out2;

xor_gate x0(in1, in2, out1, out2);

initial
begin
    in1 = 1'b0; in2 = 1'b0;
    #10 in1 = 1'b0; in2 = 1'b1;
    #10 in1 = 1'b1; in2 = 1'b0;
    #10 in1 = 1'b1; in2 = 1'b1;
    #10 $finish;
end

endmodule
