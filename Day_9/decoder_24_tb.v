`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 17:26:16
// Design Name: 
// Module Name: decoder_24_tb
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


module decoder_24_tb();

reg [1:0]d, en;
wire [3:0]y1, y2, y3, y4;

decoder_24_behav_1 d0(d, en, y1);
decoder_24_behav_2 d1(d, en, y2);
decoder_24_dataflow d2(d, en, y3);
decoder_24_struct d3(d, en, y4);

initial
begin
    en = 0;
    #10 en = 1; d = 0;
    #10 d = 1;
    #10 d = 2;
    #10 d = 3;
    #10 $finish;
end

endmodule
