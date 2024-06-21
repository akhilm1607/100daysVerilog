`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 17:01:12
// Design Name: 
// Module Name: full_adder_primitives
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


primitive full_adder_carry(carry, a, b, c);

output carry;
input a, b, c;
table
   // a b c : carry
      0 0 0 : 0;
      0 0 1 : 0;
      0 1 0 : 0;
      0 1 1 : 1;
      1 0 0 : 0;
      1 0 1 : 1;
      1 1 0 : 1;
      1 1 1 : 1;
endtable

endprimitive

primitive full_adder_sum(sum, a, b, c);

output sum;
input a, b, c;
table
   // a b c : sum
      0 0 0 : 0;
      0 0 1 : 1;
      0 1 0 : 1;
      0 1 1 : 0;
      1 0 0 : 1;
      1 0 1 : 0;
      1 1 0 : 0;
      1 1 1 : 1;
endtable

endprimitive