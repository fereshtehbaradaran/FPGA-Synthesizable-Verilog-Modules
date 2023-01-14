`timescale 1ns / 1ps

module LogicalShifter_One(  //Barrel Shifter
    input [7:0] DI,
    input [1:0] SEL,
    output [7:0] SO
    );
	 
	 reg [7:0] SO;
	 
	 always @ (DI or SO) begin
		case (SEL)
			2'b00: SO = DI;
			2'b01: SO = DI << 1;
			2'b10: SO = DI << 2;
			2'b11: SO = DI << 3;
		endcase
	 end
endmodule
