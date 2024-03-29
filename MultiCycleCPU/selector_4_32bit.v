`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:24:06 05/08/2016 
// Design Name: 
// Module Name:    selector_4_32bit 
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
module selector_4_32bit(
	input [31:0] DataA,
   input [31:0] DataB,
	input [31:0] DataC,
	input [31:0] DataD,
	input [1:0] Selection,
   output reg [31:0] DataOut
   );
	always @(Selection or DataA or DataB or DataC or DataD) begin
		if (Selection == 0)
			DataOut = DataA;
		else if (Selection == 1)
			DataOut = DataB;
		else if (Selection == 2)
			DataOut = DataC;
		else
			DataOut = DataD;
	end
endmodule