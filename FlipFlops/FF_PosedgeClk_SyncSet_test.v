`timescale 1ns / 1ps

module FF_pos_edge_clk_sync_set_tst;

	// Inputs
	reg D;
	reg S;
	reg clk;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	FF_pos_edge_Clk_sync_set uut (
		.D(D), 
		.S(S), 
		.clk(clk), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		S = 0;
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
	
	initial begin
		forever #(150) S = ~S;
	end
	
	initial begin
		forever #(100) D = ~D;
	end
      
endmodule

