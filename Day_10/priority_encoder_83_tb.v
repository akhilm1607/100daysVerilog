`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 12:03:00
// Design Name: 
// Module Name: priority_encoder_83_tb
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


module priority_encoder_83_tb();

reg [7:0]d;
wire [2:0]y;
integer i;

priority_encoder_83 p0(d, y);


initial
begin
    for(i=0;i<9;i=i+1)
    begin
        d = 8'b1 << i;
        #10;
    end
    d = 8'b0010_1101; #10
    d = 8'b1111_1111; #10
    d = 8'b0001_0001; #10
    d = 8'b0111_0000; #10
    d = 8'b0000_1000; #10
    $finish;
end

endmodule
