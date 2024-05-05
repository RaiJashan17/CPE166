module microprocessor(
	/*input [3:0] M0,
	input [3:0] M1,
	input [3:0] M2,*/
	input temp,
	input cin,
	input SW1,
	input CLK,
	output [6:0] R0dis,
	output [6:0] R1dis,
	output [6:0] R2dis,
	output [6:0] M0dis,
	output [6:0] M1dis,
	output [6:0] M2dis,
	output ocin,
	output oSW1,
	output otemp
	);
	

wire [3:0] M0;
wire [3:0] M1;
wire [3:0] M2;
wire [3:0] R0;
wire [3:0] R1;
wire [3:0] R2;

assign M0 = temp ? 1 : 2; //0001 + 1000 = 9
assign M1 = temp ? 7 : 9; //0010 + 0110 = 8
assign M2 = temp ? 5 : 6;

assign ocin = cin;
assign oRST = SW1;
assign otemp = temp;

DataPath2 dp1(M0, M1, M2, cin, SW1, CLK, R0, R1, R2);

SevenSegDisplay ssd1(R0, R0dis);
SevenSegDisplay ssd2(R1, R1dis);
SevenSegDisplay ssd3(R2, R2dis);
SevenSegDisplay ssd4(M0, M0dis);
SevenSegDisplay ssd5(M1, M1dis);
SevenSegDisplay ssd6(M2, M2dis);

endmodule
