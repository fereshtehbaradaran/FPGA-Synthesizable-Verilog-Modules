`timescale 1ns / 1ps

module signed_Up_asyncReset_moduloMax_counter(C, CLR, Q);
	parameter
	MAX_SQRT = 4,
	MAX = (MAX_SQRT * MAX_SQRT);
	input C, CLR;
	output [MAX_SQRT - 1:0] Q;
	reg [MAX_SQRT - 1:0] cnt;
	
	always @ (posedge C or posedge CLR) begin
		if (CLR)
			cnt <= 0;
		else
			cnt <= (cnt + 1) % MAX;
	end
	
	assign Q = cnt;

endmodule
