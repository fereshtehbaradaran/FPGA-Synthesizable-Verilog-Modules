`timescale 1ns / 1ps

module shiftReg_posedgeClk_asyncParallelLoad_serialIn_serialOut(
    input C,
    input ALOAD,
    input SI,
    input [7:0] D,
    output SO
    );
	 
	 reg [7:0] temp;
	 
	 always @ (posedge C or posedge ALOAD) begin
		if (ALOAD)
			temp <= D;
		else
			temp <= {temp[6:0], SI};
	 end

	assign SO = temp[7];

endmodule
