`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:28:44 12/18/2022
// Design Name:   bidirec
// Module Name:   C:/Users/fereshteh/fundamentals/bidir_test.v
// Project Name:  fundamentals
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bidirec
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bidir_test;

	// Inputs
	reg oe;
	reg clk;
	reg [7:0] inp;

	// Outputs
	wire [7:0] outp;

	// Bidirs
	wire [7:0] bidir;

	// Instantiate the Unit Under Test (UUT)
	bidirec uut (
		.oe(oe), 
		.clk(clk), 
		.inp(inp), 
		.outp(outp), 
		.bidir(bidir)
	);

	initial begin
		// Initialize Inputs
		oe = 0;
		clk = 0;
		inp = 0;
		
		forever #(50/2) clk = ~clk;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial begin
		forever #(100/2) oe = ~oe;
	end
	
	initial begin
		inp = 0;;
		#100;
		
		inp = 1;
		#100;
		
		inp = 2;
		#100
		
		inp = 3;
		#100;
		
		inp = 4;
	
	end
	
      
endmodule

