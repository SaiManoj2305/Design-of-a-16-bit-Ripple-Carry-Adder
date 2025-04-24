`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:57 04/22/2025 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(a, b, cin, sum, cout);

input a, b, cin;
output sum, cout;

wire c1,c2,s1;

xor G1(s1,a,b), G2(sum,s1,cin), G3(cout,c1,c2);
and G4(c1,a,b), G5(c2,s1,cin);

endmodule
