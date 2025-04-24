`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:15:17 04/24/2025
// Design Name:   adder4bitufa
// Module Name:   /home/ise/VHDL_LAB/adder16bitfromscratch_structural/adder4bit_tb.v
// Project Name:  adder16bitfromscratch_structural
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder4bitufa
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder4bit_tb;

	// Inputs
	reg [3:0] p;
	reg [3:0] q;

	// Outputs
	wire [3:0] r;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	adder4bitufa uut (
		.p(p), 
		.q(q), 
		.r(r), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		p = 0;
		q = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		p = 0000; q = 1010; #100;
		p = 1100; q = 0011; #100;
		p = 1001; q = 0000; #100;
        
		// Add stimulus here

	end
      
endmodule

