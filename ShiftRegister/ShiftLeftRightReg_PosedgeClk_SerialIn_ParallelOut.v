`timescale 1ns / 1ps

module shiftLeftRightReg_posedgeClk_serialIn_parallelOut(
    input C,
    input SI,
    input LEFT_RIGHT,
    output [7:0] PO
    );
	 
	 reg [7:0] temp;
	 
	 always @ (posedge C) begin
		if (LEFT_RIGHT == 1'b0)
			temp <= {temp[6:0], SI};
		else
			temp <= {SI, temp[7:1]};
	 
	 end
	 
	 assign PO = temp;

endmodule
