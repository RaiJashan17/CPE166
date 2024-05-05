module SevenSegDisplay(
	input [4:0] fourBitInput,
	output reg [6:0] sevenBitOutput
	);
	
always@(fourBitInput) begin
	case (fourBitInput)
		4'h0: sevenBitOutput = ~7'b011_1111;
		4'h1: sevenBitOutput = ~7'b000_0110;
		4'h2: sevenBitOutput = ~7'b101_1011;
		4'h3: sevenBitOutput = ~7'b100_1111;
		4'h4: sevenBitOutput = ~7'b110_0110;
		4'h5: sevenBitOutput = ~7'b110_1101;
		4'h6: sevenBitOutput = ~7'b111_1101;
		4'h7: sevenBitOutput = ~7'b000_0111;
		4'h8: sevenBitOutput = ~7'b111_1111;
		4'h9: sevenBitOutput = ~7'b110_1111;
		4'hA: sevenBitOutput = ~7'b111_0111;
		4'hB: sevenBitOutput = ~7'b111_1100;
		4'hC: sevenBitOutput = ~7'b011_1001;
		4'hD: sevenBitOutput = ~7'b101_1110;
		4'hE: sevenBitOutput = ~7'b111_1001;
		4'hF: sevenBitOutput = ~7'b111_0001;
		5'b10000: sevenBitOutput = ~7'b000_1000;
		5'b10001: sevenBitOutput = ~7'b100_1000;
		default: sevenBitOutput = ~7'b000_0000;
	endcase
end
endmodule