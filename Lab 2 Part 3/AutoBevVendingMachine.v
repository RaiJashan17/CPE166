module AutoBevVendingMachine(clk, reset, one, two, five, d, r, current_state, next_state);

input clk;
input reset;
input one;
input two;
input five;
output d;
output [2:0] r;
output [3:0] current_state, next_state;
	

parameter idle=4'b0000, s1=4'b0001, s2=4'b0010,s3=4'b0011,s4=4'b0100,s5=4'b0101,s6=4'b0110,s7=4'b0111,s8=4'b1000,s9=4'b1001;

reg[3:0] current_state, next_state;
reg d;
reg[2:0] r;

always@(posedge clk or posedge reset)
begin

       if(reset)

          current_state<=idle;
       else
          current_state<= next_state ;
end

always@(current_state or one or two or five)
	begin
	case(current_state)

		idle: if (one) next_state = s1 ;
		else if (two) next_state = s2 ;
		else if (five) next_state = s5 ;
		else next_state = idle;

		s1: if (one) next_state = s2 ;
		else if (two) next_state = s3 ;
		else if (five) next_state = s6 ;
		else next_state = s1;

		s2: if (one) next_state = s3 ;
		else if (two) next_state = s4 ;
		else if (five) next_state = s7 ;
		else next_state = s2;

		s3: if (one) next_state = s4 ;
		else if (two) next_state = s5 ;
		else if (five) next_state = s8 ;
		else next_state = s3;

		s4: if (one) next_state = s5 ;
		else if (two) next_state = s6 ;
		else if (five) next_state = s9 ;
		else next_state = s4;

		s5: if (one) next_state = idle ;
		else if (two) next_state = idle ;
		else if (five) next_state = idle ;
		else next_state = idle;

		s6: if (one) next_state = idle ;
		else if (two) next_state = idle ;
		else if (five) next_state = idle ;
		else next_state = idle;

		s7: if (one) next_state = idle ;
		else if (two) next_state = idle ;
		else if (five) next_state = idle ;
		else next_state = idle;

		s8: if (one) next_state = idle ;
		else if (two) next_state = idle ;
		else if (five) next_state = idle ;
		else next_state = idle;

		s9: if (one) next_state = idle ;
		else if (two) next_state = idle ;
		else if (five) next_state = idle ;
		else next_state = idle;

	endcase
end

always@(current_state or one or two or five)
	begin
	case(current_state)

		idle: if (one)
		begin
		d = 0;
		r = 0;
		end
		else if (two)
		begin
		d = 0;
		r = 0;
		end
		else if (five)
		begin
		d = 1;
		r = 0;
		end
		else
		begin
		d = 0;
		r = 0;
		end

		s1: if (one)
		begin
		d = 0;
		r = 0;
		end
		else if (two)
		begin
		d = 0;
		r = 0;
		end
		else if (five)
		begin
		d = 1;
		r = 1;
		end
		else
		begin
		d = 0;
		r = 0;
		end

		s2: if (one)
		begin
		d = 0;
		r = 0;
		end
		else if (two)
		begin
		d = 0;
		r = 0;
		end
		else if (five)
		begin
		d = 1;
		r = 2;
		end
		else
		begin
		d = 0;
		r = 0;
		end

		s3: if (one)
		begin
		d = 0;
		r = 0;
		end
		else if (two)
		begin
		d = 1;
		r = 0;
		end
		else if (five)
		begin
		d = 1;
		r = 3;
		end
		else
		begin
		d = 0;
		r = 0;
		end

		s4: if (one)
		begin
		d = 0;
		r = 0;
		end
		else if (two)
		begin
		d = 0;
		r = 0;
		end
		else if (five)
		begin
		d = 0;
		r = 0;
		end
		else
		begin
		d = 0;
		r = 0;
		end

		s5:
		begin
		d=1;
		r=0;
		end

		s6:
		begin
		d=1;
		r=1;
		end

		s7:
		begin
		d=1;
		r=2;
		end

		s8:
		begin
		d=1;
		r=3;
		end

		s9:
		begin
		d=1;
		r=4;
		end

	endcase
	end

endmodule