`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:14:23 07/03/2020
// Design Name:   ex
// Module Name:   D:/not/check_no.v
// Project Name:  not
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ex
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module check_no;

	// Inputs
	reg a;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	ex uut (
		.a(a), 
		.y(y)
	);

	initial begin
	   $monitor("a=%b y=%b", a,y);
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		#10 a=1;
		#20 a=0;
		#20 a=1;
		#15 a=0;
		#25 a=1;
	end
      
endmodule

