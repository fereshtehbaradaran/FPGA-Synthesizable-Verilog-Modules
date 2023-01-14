`timescale 1ns / 1ps

module multiplier_UpAccumulate_regAfterMul(
    input CLK,
    input reset,
    input [7:0] A,
    input [7:0] B ,
    output [15:0] RES
    );
	 
	 reg [15:0] mult, accum;
	 
	 always @ (posedge CLK) begin
		if (reset)
			mult <= 16'b0000000000000000;
		else
			mult <= A * B;
			
	 end
	 
	 always @ (posedge CLK) begin
		if (reset)
			accum <= 16'b0000000000000000;
		else
			accum <= accum + mult;
	 end
	 
	 assign RES = accum;
endmodule
