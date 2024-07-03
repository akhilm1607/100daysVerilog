`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 13:11:28
// Design Name: 
// Module Name: mux_81
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


module mux_81_behav(input [7:0]in, input [2:0]s, output reg y);

always@(*)
begin
    y = in[s];
end

endmodule

//////////////////////////////////////////////////////////////////////////////////

module mux_81_struct(input [7:0]in, input [2:0]s, output y);

wire out1, out2;

mux_41_struct  m0(in[3:0], s[1:0], out1);
mux_41_behav   m1(in[7:4], s[1:0], out2);
mux_21_behav_1 m2(out1, out2, s[2], y);

endmodule