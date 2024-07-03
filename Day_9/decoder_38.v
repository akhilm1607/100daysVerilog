`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 17:37:34
// Design Name: 
// Module Name: decoder_38
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


module decoder_38(input [2:0]d, input en, output [7:0]y);

wire [7:0]temp;

decoder_24_behav_1 d0(d[1:0], ~d[2], temp[3:0]);
decoder_24_behav_2 d1(d[1:0], d[2], temp[7:4]);

assign y = en ? temp : 0;

endmodule
