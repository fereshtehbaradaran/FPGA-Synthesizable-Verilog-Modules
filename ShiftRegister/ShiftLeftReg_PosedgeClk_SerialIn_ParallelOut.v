`timescale 1ns / 1ps

module shiftReg_posedgeClk_serialIn_parallelOut(
    input C,
    input SI,
    output [7:0] PO
    );
	 
	 reg [7:0] temp;
	 
	 always @ (posedge C) begin
		temp <= {temp[6:0], SI};
	 end
	 
	 assign PO = temp;      // 8 CLB will be used


endmodule
