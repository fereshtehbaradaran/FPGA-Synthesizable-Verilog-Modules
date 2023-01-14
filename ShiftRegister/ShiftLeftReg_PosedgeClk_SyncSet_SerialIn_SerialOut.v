`timescale 1ns / 1ps

module shiftReg_posedgeClk_syncSet_serialIn_serialOut(
    input C,
    input S,
    input SI,
    output SO
    );
	 
	 reg [7:0] temp;
	 always @ (posedge C) begin
		if (S)
			temp <= 8'b11111111;
		else
			temp <= {temp[6:0], SI};
	 end
	 
	 assign SO = temp[7];

endmodule
