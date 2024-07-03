`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 12:31:18
// Design Name: 
// Module Name: mux_41
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


module mux_41_behav(input [3:0]in, input [1:0]s, output reg y);

always@(*)
begin
    case(s)
        2'b00: y = in[0];
        2'b01: y = in[1];
        2'b10: y = in[2];
        2'b11: y = in[3];
        default: y = 1'b0;
    endcase
end

endmodule

//////////////////////////////////////////////////////////////////////////////////

module mux_41_struct(input [3:0]in, input [1:0]s, output y);

wire out1, out2;

mux_21_behav_1 m0(in[0], in[1], s[0], out1);
mux_21_behav_2 m1(in[3:2], s[0], out2);
mux_21_dataflow m2(out1, out2, s[1], y);

endmodule