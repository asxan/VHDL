library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity decriment is
 
  port (
			a 	: in  std_logic_vector (0 to 3);
			c	: out std_logic_vector (0 to 4)
			);
 
end entity;

architecture ar_decriment of decriment is
begin  
process(a)
begin

	c <= "0"& std_logic_vector(unsigned(a)-1); 
	
	end process;
end ar_decriment;
