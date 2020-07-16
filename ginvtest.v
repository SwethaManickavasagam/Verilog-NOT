`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:21:02 07/04/2020
// Design Name:   ginv
// Module Name:   D:/ginv.v/ginvtest.v
// Project Name:  ginv.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ginv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ginvtest;

	// Inputs
	reg a;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	ginv uut (
		.a(a), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a=1;
		#10 a=0;
		#10 a=1;
		#20 a=0;
		#15 a=1;
		#50 a=0;

	end
      
endmodule

