library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity stopwatch is 
	port( start, stop, clk, reset: in std_logic;
	y0,y1,y2: out std_logic_vector(3 downto 0));
end stopwatch;
architecture beh of stopwatch is
	signal clk2, en: std_logic;
	component clkdiv
		port( clkin: in std_logic;
		clkout: out std_logic);
	end component;
	component fsm
		port( start, stop, clk, reset: in std_logic;
		en: out std_logic);
	end component;
	component watch
		port( reset, en, clk: in std_logic;
		y2,y1,y0: out std_logic_vector(3 downto 0));
	end component;
	begin
	g1: clkdiv port map(clk,clk2);
	g2: fsm port map(start, stop, clk2, reset, en);
	g3: watch port map(reset, en, clk2, y2, y1, y0);
end beh;