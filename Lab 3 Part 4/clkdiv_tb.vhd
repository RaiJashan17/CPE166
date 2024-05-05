library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture tb of testbench is
	component clkdiv
		port( clkin: in std_logic;
	clkout: out std_logic);
	end component;
signal clkin, clkout: std_logic;
begin 
	DUT: clkdiv port map(clkin, clkout);
	 process
		 begin
		 clkin <= '0';
		 wait for 5 ns;
		 clkin <= '1';
		 wait for 5 ns;
	 end process;
	
 end tb;