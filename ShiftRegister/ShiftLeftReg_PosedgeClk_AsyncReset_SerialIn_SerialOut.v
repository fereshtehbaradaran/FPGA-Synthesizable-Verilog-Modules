`timescale 1ns / 1ps

module shiftReg_posedgeClk_asyncReset_serialIn_serialOut(
    input C,
    input CLR,
    input SI,
    output SO
    );
	 
	 reg [7:0] temp;
	 
	 always @ (posedge C or posedge CLR) begin
		if (CLR)
			temp <= 8'b00000000;
		else
			temp <= {temp[6:0], SI};
	 end
	 
	 assign SO = temp[7];


endmodule
