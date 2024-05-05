module multiplexer4bits_tb();
reg [3:0] d0;
reg [3:0] d1;
reg s;
wire [3:0] y;
integer i;

multiplexer4bits uut(.d0(d0), .d1(d1), .s(s), .y(y));

initial begin

	for(i=0;i<512;i=i+1)
	begin
		{d1, d0, s} <= i;
		#5;
	end
	$finish;
end

endmodule