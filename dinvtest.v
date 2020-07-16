`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:29:24 07/04/2020
// Design Name:   dinv
// Module Name:   D:/dinv.v/dinvtest.v
// Project Name:  dinv.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dinv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dinvtest;

	// Inputs
	reg a;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	dinv uut (
		.a(a), 
		.y(y)
	);

	initial begin
	   $monitor("a=%b y=%b",a,y);
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
		#30 a=0;

	end
      
endmodule

