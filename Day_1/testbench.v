`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 11:51:12
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
wire out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11;

not_nand  uut0(in1, out0);
and_nand  uut1(in1, in2, out1);
or_nand   uut2(in1, in2, out2);
nor_nand  uut3(in1, in2, out3);
xor_nand  uut4(in1, in2, out4);
xnor_nand uut5(in1, in2, out5);
not_nor   uut6(in2, out6);
and_nor   uut7(in1, in2, out7);
or_nor    uut8(in1, in2, out8);
nand_nor  uut9(in1, in2, out9);
xor_nor   uut10(in1, in2, out10);
xnor_nor  uut11(in1, in2, out11);

initial
begin
    in1 = 1'b1; in2 = 1'b1;
    #10 in1 = 1'b1; in2 = 1'b0;
    #10 in1 = 1'b0; in2 = 1'b1;
    #10 in1 = 1'b0; in2 = 1'b0;
    #10 $finish;
end

endmodule
