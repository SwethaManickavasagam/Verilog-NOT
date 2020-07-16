`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:29:44 07/03/2020 
// Design Name: 
// Module Name:    ex 
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
module ex(
    input a,
    output reg y
    );
	 always @ (a) begin
	     if (a == 1'b0) begin
	          y=1'b1;
	     end
	     else if (a==1'b1) begin
	          y=1'b0;
	     end
	 end
endmodule 