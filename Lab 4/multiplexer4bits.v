module multiplexer4bits(
	input [3:0] D0,
	input [3:0] D1,
	input [3:0] D2,
	input [3:0] D3,
	input [1:0] S,
	output [3:0] Y
	);
	
	
assign Y = S[1] ? (S[0] ? D3: D2) : (S[0] ? D1 : D0);
	
endmodule