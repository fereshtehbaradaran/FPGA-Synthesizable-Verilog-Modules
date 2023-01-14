`timescale 1ns / 1ps

module MUX_IF(
    input A,
    input B,
    input C,
    input D,
    input [1:0] S,
    output O
    );
	 
	 reg O;
	 
	 always @ (S or A or B or C or D) begin
		if(S == 2'b00)
			O = A;
		else if (S == 2'b01)
			O = B;
		else if (S == 2'b10)
			O = C;
		else
			O = D;
	 end
endmodule
