module ALU_tb();
reg [2:0] S;
reg Cin;
reg [3:0] B;
reg [3:0] A;
wire [3:0] Y;
integer i;

ALU uut(.S(S), .Cin(Cin), .B(B), .A(A), .Y(Y));

initial begin

	for(i=0;i<4096;i=i+1)
	begin
		{B, A, S, Cin} <= i;
		#5;
	end
	$finish;
end

endmodule