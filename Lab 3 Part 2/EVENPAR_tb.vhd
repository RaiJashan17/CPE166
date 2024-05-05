library ieee;

use  ieee.std_logic_1164.all;

entity  EVENPAR_tb is

end  EVENPAR_tb;

architecture  tb_arch of EVENPAR_tb is

signal   db:   std_logic_vector;

signal   pb:    std_logic;

component EVENPAR

 port (   db:   in  std_logic_vector;
                  pb:   out std_logic );

end  component;

begin

     uut: EVENPAR port map ( db, pb );

     process

      begin

              db <=  "00";

              wait for 10 ns;

              db <=  "01";

              wait for 10 ns;

            

              db <=  "10";

              wait for 10 ns;

              db <=  "11";

              wait for 10 ns;

              wait;              -- wait is required in this testbench      

      end process;

 

end tb_arch;