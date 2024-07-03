`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 12:57:34
// Design Name: 
// Module Name: mux_41_tb
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


module mux_41_tb();

reg [3:0]in;
reg [1:0]s;
wire y1, y2;
integer i;

mux_41_behav  m0(in, s, y1);
mux_41_struct m1(in, s, y2);

initial
begin
    for(i=0; i<64; i=i+1)
    begin
        {in[3], in[1], s, in[0], in[2]} = i;
        #10;
    end
    $finish;
end

endmodule
