library ieee;
use ieee.std_logic_1164.all;
use work.MY_PACK.all;
entity HammingCodeGenerator is
	port( D7: in std_logic;
			D6: in std_logic;
			D5: in std_logic;
			D3: in std_logic;
		DOUT: out std_logic_vector(7 downto 1));
	end HammingCodeGenerator;
architecture ARCH of HammingCodeGenerator is
	component EVENPAR3BIT is
		port(db: in std_logic_vector(2 downto 0);
		pb: out std_logic);
	end component;
	signal p1, p2, p4: std_logic;
	begin
		u1: EVENPAR3BIT port map(db(2) => D6, db(1) => D7, db(0) => D5, pb =>P4);
		u2: EVENPAR3BIT port map(db(2) => D5, db(1) => D7, db(0) => D3, pb =>P1);
		u3: EVENPAR3BIT port map(db(2) => D6, db(1) => D7, db(0) => D3, pb =>P2);
		DOUT <= D7 & D6 & D5 & P4 & D3 & P2 & P1;
	end ARCH;