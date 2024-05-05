library ieee;
use ieee.std_logic_1164.all;
use work.MY_PACK.all;
entity EVENPAR is
	port( db: in std_logic_vector;
		pb: out std_logic);
	end EVENPAR;
architecture ARCH of EVENPAR is
	begin
		pb <= PARITY(db);
	end ARCH;