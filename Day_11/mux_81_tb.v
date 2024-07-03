`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 13:32:20
// Design Name: 
// Module Name: mux_81_tb
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


module mux_81_tb();

reg [7:0]in;
reg [2:0]s;
wire y1, y2;

mux_81_behav  m0(in, s, y1);
mux_81_struct m1(in, s, y2);

initial
begin
    in = 8'b1010_0101; s = 3'b111; #10
    in = 8'b0001_1111; s = 3'b110; #10
    in = 8'b1011_1101; s = 3'b101; #10
    in = 8'b0100_1110; s = 3'b100; #10
    in = 8'b0011_0011; s = 3'b011; #10
    in = 8'b1011_1110; s = 3'b010; #10
    in = 8'b0000_1111; s = 3'b001; #10
    in = 8'b1100_1110; s = 3'b000; #10 $finish;
end

endmodule
