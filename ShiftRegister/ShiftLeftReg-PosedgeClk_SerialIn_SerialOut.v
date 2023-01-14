`timescale 1ns / 1ps

module shiftReg_posedgeClk_serialIn_serialOut(
    input C,
    input SI,
    output SO
    );
	 
	 reg [7:0] temp;
	 
	 always @ (posedge C) begin
		temp <= {temp[6:0], SI};
	 end
	 
	 assign SO = temp[7];
endmodule
