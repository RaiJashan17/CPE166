library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity fsm is 
	port( start, stop, clk, reset: in std_logic;
	en: out std_logic);
end fsm;
architecture beh of fsm is
	constant idle: std_logic_vector(1 downto 0):="00";
	constant running: std_logic_vector(1 downto 0):="01";
	signal cs, ns: std_logic_vector (1 downto 0):="00";
	begin
	process(reset, clk)
		begin
			if(reset='1') then
				cs<=idle;
			else
				cs<=ns;
			end if;
		end process;
	process(start, stop)
		begin
			if(start='1') then
				ns<=running;
			elsif(stop='1') then
				ns<=idle;
			else
				ns<=idle;
			end if;
		end process;
	en<='1' when (cs=running) else '0';
end beh;