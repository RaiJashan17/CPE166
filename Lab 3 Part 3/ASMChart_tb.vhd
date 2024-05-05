library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture tb of testbench is
	component ASMChart
		port(reset,clk,x: in std_logic;
			z, Y0, Y1: out std_logic;
			ckcs, ckns: out std_logic_vector(1 downto 0));
	end component;
signal reset, clk, x, z, Y0, Y1: std_logic;
signal cs, next_state: std_logic_vector (1 downto 0);
begin 
	DUT: ASMChart port map(reset, clk, x, z, Y0, Y1, cs, next_state);
	process
		 begin
		 clk <= '0';
		 wait for 5 ns;
		 clk <= '1';
		 wait for 5 ns;
	 end process;
	 x <= '1', '0' after 10 ns, '1' after 40 ns, '0' after 60 ns, '1' after 80 ns, '0' after 120 ns, '1' after
160 ns, '0' after 200 ns, '1' after 300 ns, '0' after 350 ns;
	Process
		 Begin
		 Reset <= '1';
		 Wait for 2 ns;
		 Reset <= '0';
		 Wait for 400 ns;
		 Wait;
	 End process;
 end tb;