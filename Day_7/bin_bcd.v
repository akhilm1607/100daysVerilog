`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 16:08:21
// Design Name: 
// Module Name: bin_bcd
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


//Double dabbles algorithm is used to convert binary number to BCD number.
module bin_bcd #(parameter bin_bits = 8, bcd_bits = 12)(
input [bin_bits - 1:0] bin,
output reg [bcd_bits -1:0] bcd);

reg [bin_bits + bcd_bits - 1:0]temp;

integer i;
	
always @(bin)
begin
    temp = {12'b0, bin};
    for (i=0;i<bin_bits;i=i+1)
	begin	         				
		if(temp[11:8] > 4)
			temp[11:8] = temp[11:8] + 3;
		if(temp[15:12] > 4)
			temp[15:12] = temp[15:12] + 3;
//		if(temp[31:28] > 4)
//			temp[31:28] = temp[31:28] + 3;
//		if(temp[35:32] > 4)
//			temp[35:32] = temp[35:32] + 3;
//		if(temp[39:36] > 4)
//			temp[39:36] = temp[39:36] + 3;
		temp = temp << 1;
	end
   
	bcd =temp[bin_bits + bcd_bits - 1:bin_bits];
   
end

endmodule 
