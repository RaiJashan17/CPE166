library ieee;
use ieee.std_logic_1164.all;

entity testbench2 is
end testbench2;

architecture tb of testbench2 is
	component fsm
		port( start, stop, clk, reset: in std_logic;
		en: out std_logic);
	end component;
signal start,stop,clk,reset,en: std_logic;
begin 
	DUT: fsm port map(start, stop, clk, reset, en);
	process
		 begin
		 clk <= '0';
		 wait for 5 ns;
		 clk <= '1';
		 wait for 5 ns;
	 end process;
	 start<='0', '1' after 10ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 50 ns;
	 stop<='1', '0' after 10ns, '1' after 20 ns, '0' after 30 ns, '1' after 40 ns, '0' after 50 ns;
	Process
		 Begin
		 reset <= '1';
		 Wait for 2 ns;
		 reset <= '0';
		 Wait for 400 ns;
		 Wait;
	 End process;
 end tb;