`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:06:24 04/24/2025 
// Design Name: 
// Module Name:    adder4bitufa 
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
module adder4bitufa(p, q, cin, r, carry);

input [3:0]p, q;
input cin;
output [3:0] r;
output carry;

wire [3:1]c;

fulladder f1(p[0], q[0], cin, r[0], c[1]);
fulladder f2(p[1], q[1], c[1], r[1], c[2]);
fulladder f3(p[2], q[2], c[2], r[2], c[3]);
fulladder f4(p[3], q[3], c[3], r[3], carry);



endmodule
