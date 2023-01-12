`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:25:05 12/27/2022
// Design Name:   FF_neg_edge_clk_async_reset
// Module Name:   C:/Users/fereshteh/FPGA/Flip_Flops/FF_neg_edge_clk_async_reset_tst.v
// Project Name:  Flip_Flops
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FF_neg_edge_clk_async_reset
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FF_neg_edge_clk_async_reset_tst;

	// Inputs
	reg D;
	reg CLK;
	reg CLR;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	FF_neg_edge_clk_async_reset uut (
		.D(D), 
		.CLK(CLK), 
		.CLR(CLR), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		CLK = 0;
		CLR = 0;
		forever #(50) CLK = ~CLK;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial begin
		forever #(150) CLR = ~CLR;
	end
	
	initial begin
		forever #(100) D = ~D;
	end
      
endmodule

