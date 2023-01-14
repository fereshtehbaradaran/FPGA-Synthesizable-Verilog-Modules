`timescale 1ns / 1ps

module shiftReg_negedgeClk_CE_serialIn_serialOut(
    input C,
    input CE,
    input SI,
    inout SO
    );
	 
	 reg [7:0] temp;
	 
	 always @ (negedge C) begin
		if(CE) begin
			temp <= {temp[6:0], SI};
		end
	 end
	 
	 assign SO = temp[7];
	 
endmodule
