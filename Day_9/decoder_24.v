`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 17:22:41
// Design Name: 
// Module Name: decoder_24
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


module decoder_24_behav_1(input [1:0]d, input en, output reg [3:0]y);

always @(*)
begin
    if(~en)
    begin
        y = 4'b0000;
    end
    else
    begin
        case(d)
            2'b00: y = 4'b0001;
            2'b01: y = 4'b0010;
            2'b10: y = 4'b0100;
            2'b11: y = 4'b1000;
            default: y = 4'b0000;
        endcase
    end
end

endmodule

//////////////////////////////////////////////////////////////////////////////////

module decoder_24_behav_2(input [1:0]d, input en, output reg [3:0]y);

always @(*)
begin
    if(~en)
    begin
        y = 4'b0000;
    end
    else
    begin
        y = 4'b0001 << d;
    end
end

endmodule

//////////////////////////////////////////////////////////////////////////////////

module decoder_24_dataflow(input [1:0]d, input en, output [3:0]y);

assign y[3] = en & d[1] & d[0];
assign y[2] = en & d[1] & ~d[0];
assign y[1] = en & ~d[1] & d[0];
assign y[0] = en & ~d[1] & ~d[0];

endmodule

//////////////////////////////////////////////////////////////////////////////////

module decoder_24_struct(input [1:0]d, input en, output [3:0]y);

and a0(y[3], en, d[1], d[0]);
and a1(y[2], en, d[1], ~d[0]);
and a2(y[1], en, ~d[1], d[0]);
and a3(y[0], en, ~d[1], ~d[0]);

endmodule