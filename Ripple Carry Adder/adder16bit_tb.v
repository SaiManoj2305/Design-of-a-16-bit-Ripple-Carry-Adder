`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:29:54 04/24/2025
// Design Name:   adder16bitu4
// Module Name:   /home/ise/VHDL_LAB/adder16bitfromscratch_structural/adder16bit_tb.v
// Project Name:  adder16bitfromscratch_structural
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder16bitu4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder16bit_tb;

	// Inputs
	reg [15:0] x;
	reg [15:0] y;

	// Outputs
	wire [15:0] z;
	wire carry;
	wire sign;
	wire parity;
	wire zero;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	adder16bitu4 uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.carry(carry), 
		.sign(sign), 
		.parity(parity), 
		.zero(zero), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		x = 16'b1111000011110000; y = 16'b0000111100001111;#100;
		
        
		// Add stimulus here

	end
      
endmodule

