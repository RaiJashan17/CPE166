module DataPath2(
	input [3:0] M0,
	input [3:0] M1,
	input [3:0] M2,
	input Cin,
	input SW1,
	input CLK,
	output [3:0] R0,
	output [3:0] R1,
	output [3:0] R2
	);
	
wire [3:0] A;
wire [3:0] B;
wire [3:0] Y0;
wire [3:0] Y1;
wire [3:0] Y2;
wire [3:0] Y3;
wire CLR;
wire [2:0] W;
wire [3:0] CE;
wire [1:0] SEL;
wire [2:0] S;

fsm FSM1(SW1, CLK, CLR, W, CE, SEL, S);

multiplexer mu1(M0, A, W[0], Y0);
multiplexer mu2(M1, A, W[1], Y1);
multiplexer mu3(M2, A, W[2], Y2);

DFlipFlop df1(Y0, CLR, CE[0], CLK, R0);
DFlipFlop df2(Y1, CLR, CE[1], CLK, R1);
DFlipFlop df3(Y2, CLR, CE[2], CLK, R2);

multiplexer4bits mu4(R0, R1, R2, 4'b0000, SEL, B);

ALU ALU1(S, Cin, B, A, Y3);

DFlipFlop df4(Y3, CLR, CE[3], CLK, A);

endmodule