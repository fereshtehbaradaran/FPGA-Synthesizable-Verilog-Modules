`timescale 1ns / 1ps

module MUX_Case(
    input [1:0] S,
    input A,
    input B,
    input C,
    input D,
    output O
    );
	 
	 reg O;
	 
	 always @ (S or A or B or C or D) begin
		case(S)
			2'b00: O = A;
			2'b01: O = B;
			2'b10: O = C;
			2'b11: O = D;
		endcase
	 end

endmodule
