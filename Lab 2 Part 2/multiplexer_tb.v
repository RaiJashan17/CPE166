module multiplexer_tb();
reg d1;
reg d0;
reg s;
wire y;
integer i;

multiplexer uut(.d0(d0), .d1(d1), .s(s), .y(y));

initial begin

	for(i=0;i<8;i=i+1)
	begin
		{d1, d0, s} <= i;
		#5;
	end
	$finish;
end

endmodule