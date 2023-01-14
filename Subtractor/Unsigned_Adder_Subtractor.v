`timescale 1ns / 1ps

module unsigned_adder_subtractor(
    input [7:0] A,
    input [7:0] B,
    input OPER,
    output [7:0] RES
    );
	 
	 reg [7:0] RES;
	 
	 always @ (A or B or OPER) begin
		if (OPER == 1'b0)
			RES = A + B;
		else
			RES = A - B;
	 end

endmodule
