`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 12:25:40
// Design Name: 
// Module Name: mux_21_tb
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


module mux_21_tb();

reg [1:0]in;
reg s;
wire y1, y2, y3;
integer i;

mux_21_behav_1 m0(in[0], in[1], s, y1);
mux_21_behav_2 m1(in, s, y2);
mux_21_dataflow m2(in[0], in[1], s, y3);

initial
begin
    for(i=0;i<8;i=i+1)
    begin
        {s, in} = i;
        #10;
    end
    $finish;
end

endmodule
