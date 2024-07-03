`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 12:20:29
// Design Name: 
// Module Name: mux_21
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


module mux_21_behav_1(input a, b, s, output reg y);

always@(*)
begin
    if(s == 0)
        y = a;
    else
        y = b;
end

endmodule
 
//////////////////////////////////////////////////////////////////////////////////

module mux_21_behav_2(input [1:0]in, input s, output reg y);

always@(*)
begin
    y = in[s];
end

endmodule

//////////////////////////////////////////////////////////////////////////////////

module mux_21_dataflow(input a, b, s, output y);

assign y = (~s&a)|(s&b);

endmodule
