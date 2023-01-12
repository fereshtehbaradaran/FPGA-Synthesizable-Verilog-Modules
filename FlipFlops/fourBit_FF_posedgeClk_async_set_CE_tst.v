`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:07:11 12/27/2022
// Design Name:   fourBit_FF_posedgeClk_async_set_CE
// Module Name:   C:/Users/fereshteh/FPGA/Flip_Flops/fourBit_FF_posedgeClk_async_set_CE_tst.v
// Project Name:  Flip_Flops
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourBit_FF_posedgeClk_async_set_CE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

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

