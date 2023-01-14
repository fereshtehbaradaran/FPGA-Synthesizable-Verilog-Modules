`timescale 1ns / 1ps

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

