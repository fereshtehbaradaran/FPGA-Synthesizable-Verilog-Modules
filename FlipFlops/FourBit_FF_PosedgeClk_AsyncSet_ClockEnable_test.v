`timescale 1ns / 1ps

module fourBit_FF_posedgeClk_async_set_CE_tst;

	// Inputs
	reg D;
	reg clk;
	reg S;
	reg CE;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	fourBit_FF_posedgeClk_async_set_CE uut (
		.D(D), 
		.clk(clk), 
		.S(S), 
		.CE(CE), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;
		S = 0;
		CE = 1;
		
		forever #(50) clk = ~clk;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial begin
		forever #(100) D = ~D; 
	end
	
	initial begin
		forever #(150) S = ~S;
	end
	
	initial begin
		forever #(200) CE = ~CE;
	end
      
endmodule

