module AutoBevVendingMachine_tb;
reg clk, reset, one, two, five;
wire d;
wire [2:0] r;
wire[3:0] current_state, next_state;


AutoBevVendingMachine uut(clk, reset, one, two, five, d, r, current_state, next_state);

initial clk=0;
always #5 clk=~clk;

initial begin

	reset = 1; #10
	reset = 0; one=0; two=0; five=0; #10
	
	//S1-S5
	#10 one=1; two=0; five=0;
	#10 one=1; two=0; five=0;
	#10 one=1; two=0; five=0;
	#10 one=1; two=0; five=0;
	#10 one=1; two=0; five=0;
	#10 one=0; two=0; five=0;
	
	//S6
	#10 one=1; two=0; five=0;
	#10 one=1; two=0; five=0;
	#10 one=1; two=0; five=0;
	#10 one=1; two=0; five=0;
	#10 one=0; two=1; five=0;
	#10 one=0; two=0; five=0;
	
	//S7
	#10 one=0; two=1; five=0;
	#10 one=0; two=0; five=1;
	#10 one=0; two=0; five=0;
	
	//S8
	#10 one=1; two=0; five=0;
	#10 one=0; two=1; five=0;
	#10 one=0; two=0; five=1;
	#10 one=0; two=0; five=0;
	
	//S9
	#10 one=0; two=1; five=0;
	#10 one=0; two=1; five=0;
	#10 one=0; two=0; five=1;
	#10 one=0; two=0; five=0;
	
	
	#10 $stop;
	end
endmodule