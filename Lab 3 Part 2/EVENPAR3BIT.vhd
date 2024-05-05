library ieee;
use ieee.std_logic_1164.all;
use work.MY_PACK.all;
entity EVENPAR3BIT is
	port( db: in std_logic_vector(2 downto 0);
		pb: out std_logic);
	end EVENPAR3BIT;
architecture ARCH of EVENPAR3BIT is
	begin
		pb <= PARITY(db);
	end ARCH;