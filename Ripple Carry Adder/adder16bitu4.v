`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:19:32 04/24/2025 
// Design Name: 
// Module Name:    adder16bitu4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module adder16bitu4(x, y, z, carry, sign, parity, zero, overflow);

input [15:0] x, y;
output [15:0] z;
output carry, sign, parity, zero, overflow;

assign sign = z[15];
assign parity = ~^z;
assign zero = ~|z;
assign overflow = (x[15] & y[15] & ~z[15])| (~x[15] & ~y[15] & z[15]);

wire [3:1]c;

adder4bitufa fa1(x[3:0], y[3:0], 1'b0, z[3:0], c[1]);
adder4bitufa fa2(x[7:4], y[7:4], c[1], z[7:4], c[2]);
adder4bitufa fa3(x[11:8], y[11:8], c[2], z[11:8], c[3]);
adder4bitufa fa4(x[15:12], y[15:12], c[3], z[15:12], carry);



endmodule
