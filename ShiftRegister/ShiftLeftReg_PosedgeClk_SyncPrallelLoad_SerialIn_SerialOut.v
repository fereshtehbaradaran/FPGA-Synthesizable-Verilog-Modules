`timescale 1ns / 1ps

module shiftReg_posedgeClk_syncPrallelload_serialIn_serialOut(
    input C,
    input SLOAD,
    input SI,
    input [7:0] D,
    output SO
    );
	 
	 reg [7:0] temp;
	 always @ (posedge C) begin
		if (SLOAD)
			temp <= D;
		else
			temp <= {temp[6:0], SI};
	 end
	 
	 assign SO = temp[7];

endmodule
