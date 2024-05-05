library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity clkdiv is 
	port( clkin: in std_logic;
	clkout: out std_logic);
end clkdiv;
architecture beh of clkdiv is
	signal cnt: std_logic_vector(2 downto 0) := "000";
	begin
	process(clkin)
	begin
		if(rising_edge(clkin)) then
		if (cnt=3) then
			cnt <="000";
			clkout<='1';
		elsif(cnt<1) then
			cnt<=cnt+1;
			clkout<='1';
		else
		cnt <=cnt+1;
		clkout<='0';
		end if;
		end if;
	end process;
end beh;