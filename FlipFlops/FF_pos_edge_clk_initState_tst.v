`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:14:19 12/27/2022
// Design Name:   FF_pos_edge_clk_initState
// Module Name:   C:/Users/fereshteh/FPGA/Flip_Flops/FF_pos_edge_clk_initState_tst.v
// Project Name:  Flip_Flops
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FF_pos_edge_clk_initState
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FF_pos_edge_clk_initState_tst;

	// Inputs
	reg D;
	reg clk;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	FF_pos_edge_clk_initState uut (
		.D(D), 
		.clk(clk), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;
		forever #(50) clk = ~clk;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		D = 1;
		
		#100;
		
		D = 0;
		
		#100;
		
		D = 1;

	end
      
endmodule

