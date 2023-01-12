`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:24 01/12/2023 
// Design Name: 
// Module Name:    Two_Process_moore 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Two_Process_moore(
    input CLK,
    input CLR,
    input x1,
    output reg Output
    );
	 
	 reg [1:0] state;
	 parameter s1 = 2'b00;
	 parameter s2 = 2'b01;
	 parameter s3 = 2'b10;
	 parameter s4 = 2'b11;
	 initial state = 2'b00;
	 
	 always @ (posedge CLK or posedge CLR) begin
		if (CLR)
			state <= s1;
		else begin
			case (state)
				s1: 
					if (x1 == 1'b1)
						state <= s2;
					else
						state <= s3;
				s2: state <= s4;
				s3: state <= s4;
				s4: state <= s1;
			endcase
		end
	 end
	 
	 always @ (state) begin
		case (state)
			s1: Output = 1'b1;
			s2: Output = 1'b1;
			s3: Output = 1'b0;
			s4: Output = 1'b0;
		endcase
	 end
endmodule
