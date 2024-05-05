library ieee;

use  ieee.std_logic_1164.all;

entity  HammingCodeGenerator_tb is

end  HammingCodeGenerator_tb;

architecture  tb_arch of HammingCodeGenerator_tb is

signal D7: std_logic;
signal D6: std_logic;
signal D5: std_logic;
signal D3: std_logic;
signal DOUT: std_logic_vector(7 downto 1);

component HammingCodeGenerator

 port (  D7: in std_logic;
			D6: in std_logic;
			D5: in std_logic;
			D3: in std_logic;
		DOUT: out std_logic_vector(7 downto 1) );

end  component;

begin

     uut:   HammingCodeGenerator port map ( D7,D6,D5,D3,DOUT  );

     process

      begin

              D7 <= '0' ;
				  D6 <= '0' ;
				  D5 <= '0' ;
				  D3 <= '0' ;

              wait for 10 ns;

              D7 <= '0' ;
				  D6 <= '0' ;
				  D5 <= '0' ;
				  D3 <= '1' ;

              wait for 10 ns;

            

              D7 <= '0' ;
				  D6 <= '0' ;
				  D5 <= '1' ;
				  D3 <= '0' ;

              wait for 10 ns;

              D7 <= '0' ;
				  D6 <= '0' ;
				  D5 <= '1' ;
				  D3 <= '1' ;

              wait for 10 ns;

              D7 <= '0' ;
				  D6 <= '1' ;
				  D5 <= '0' ;
				  D3 <= '0' ;

              wait for 10 ns;

              D7 <= '0' ;
				  D6 <= '1' ;
				  D5 <= '0' ;
				  D3 <= '1' ;

              wait for 10 ns;

            

              D7 <= '0' ;
				  D6 <= '1' ;
				  D5 <= '1' ;
				  D3 <= '0' ;

              wait for 10 ns;

              D7 <= '0' ;
				  D6 <= '1' ;
				  D5 <= '1' ;
				  D3 <= '1' ;

              wait for 10 ns;
				  
				  D7 <= '1' ;
				  D6 <= '0' ;
				  D5 <= '0' ;
				  D3 <= '0' ;

              wait for 10 ns;
				  	  
				  D7 <= '1' ;
				  D6 <= '0' ;
				  D5 <= '0' ;
				  D3 <= '1' ;

              wait for 10 ns;
				  	  
				  D7 <= '1' ;
				  D6 <= '0' ;
				  D5 <= '1' ;
				  D3 <= '0' ;

              wait for 10 ns;
				  
				  	  
				  D7 <= '1' ;
				  D6 <= '0' ;
				  D5 <= '1' ;
				  D3 <= '1' ;

              wait for 10 ns;
				  
				  	  
				  D7 <= '1' ;
				  D6 <= '1' ;
				  D5 <= '0' ;
				  D3 <= '0' ;

              wait for 10 ns;
				  	  
				  D7 <= '1' ;
				  D6 <= '1' ;
				  D5 <= '0' ;
				  D3 <= '1' ;

              wait for 10 ns;
				  	  
				  D7 <= '1' ;
				  D6 <= '1' ;
				  D5 <= '1' ;
				  D3 <= '0' ;

              wait for 10 ns;
				  
				  	  
				  D7 <= '1' ;
				  D6 <= '1' ;
				  D5 <= '1' ;
				  D3 <= '1' ;

              wait for 10 ns;

              wait;              -- wait is required in this testbench      

      end process;

 

end tb_arch;