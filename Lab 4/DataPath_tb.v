module DataPath_tb();
reg [3:0] M0;
reg [3:0] M1;
reg [3:0] M2;
reg Cin;
reg CLR;
reg [2:0] W;
reg [3:0] CE;
reg [1:0] SEL;
reg [2:0] S;
reg CLK;
wire [3:0] R0;
wire [3:0] R1;
wire [3:0] R2;


DataPath uut(.M0(M0), .M1(M1), .M2(M2), .Cin(Cin), .CLR(CLR), .W(W), .CE(CE), .SEL(SEL), .S(S), .CLK(CLK), .R0(R0), .R1(R1), .R2(R2));

initial CLK=0; 

always #2 CLK=~CLK;

initial begin
	CLR=1; M0=1; M1=7; M2=5; Cin=0; W=3'b000; CE=4'b0000; SEL=2'b00; S=3'b000; #20; //Sets M0 and M1 value
	CLR=0; W=3'b000; CE=4'b0011; SEL=2'b00; S=3'b000; #20; // R0= M0, R1= M1
	CLR=0; W=3'b000; CE=4'b1000; SEL=2'b00; S=3'b010; #20; //A=M0
	CLR=0; W=3'b000; CE=4'b1000; SEL=2'b01; S=3'b001; #20; //A=M0+~M1+Cin
	CLR=0; W=3'b100; CE=4'b0100; #20;
end

		
endmodule

/*module DataPath_tb();
reg [3:0] M0;
reg [3:0] M1;
reg [3:0] M2;
reg Cin;
reg SW1;
reg CLK;
wire [3:0] R0;
wire [3:0] R1;
wire [3:0] R2;


DataPath uut(.M0(M0), .M1(M1), .M2(M2), .Cin(Cin), .SW1(SW1), .CLK(CLK), .R0(R0), .R1(R1), .R2(R2));

initial CLK=0; 

always #20 CLK=~CLK;

initial begin
	SW1=1; M0=0; M1=0; Cin=0; M2=0; #10;
	SW1=0; M0=2; M1=9; Cin=1; M2=0; #500;
end

		
endmodule*/