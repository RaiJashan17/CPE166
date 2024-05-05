module DataPath2_tb();
reg [3:0] M0;
reg [3:0] M1;
reg [3:0] M2;
reg Cin;
reg SW1;
reg CLK;
wire [3:0] R0;
wire [3:0] R1;
wire [3:0] R2;


DataPath2 uut(.M0(M0), .M1(M1), .M2(M2), .Cin(Cin), .SW1(SW1), .CLK(CLK), .R0(R0), .R1(R1), .R2(R2));

initial CLK=0; 

always #2 CLK=~CLK;

initial begin
	SW1=1; M0=0; M1=0; M2=0; Cin=0; #10;
	SW1=0; M0=1; M1=7; Cin=0; #500;
end

		
endmodule