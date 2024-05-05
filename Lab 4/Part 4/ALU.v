module ALU(
	input [2:0] S,
	input Cin,
	input [3:0] B,
	input [3:0] A,
	output reg [3:0] Y
	);
	
always @ (S or Cin or B or A)
begin
	case (S)
		3'b000: Y<=A+B+Cin;
		3'b001: Y<=A+~B+Cin;
		3'b010: Y<=B;
		3'b011: Y<=A;
		3'b100: Y<=A&B;
		3'b101: Y<=A|B;
		3'b110: Y<=~A;
		3'b111: Y<=A^B;
	endcase
end
endmodule