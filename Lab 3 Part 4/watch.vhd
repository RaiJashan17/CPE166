library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
entity watch is 
	port( reset, en, clk: in std_logic;
	y2,y1,y0: out std_logic_vector(3 downto 0));
end watch;
architecture beh of watch is
	signal n2: std_logic_vector(3 downto 0):="0000";
	signal n1: std_logic_vector(3 downto 0):="0000";
	signal n0: std_logic_vector(3 downto 0):="0000";
	begin
	y2<=n2;
	y1<=n1;
	y0<=n0;
	process(reset, clk, en)
	begin
	if (reset='1') then
		n2<="0000";
		n1<="0000";
		n0<="0000";
	elsif (en='1' and rising_edge(clk)) then
		if(n2="1001" and n1="1001" and n0="1001") then
			n0<="0000";
			n1<="0000";
			n2<="0000";
		elsif(n1="1001" and n0="1001") then
			n1<="0000";
			n0<="0000";
			n2<=n2+1;
		elsif(n0="1001") then
			n0<="0000";
			n1<=n1+1;
		else
		n0<=n0+1;
	end if;
	end if;
	end process;
end beh;