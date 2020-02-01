library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity andd is
 
  port (
			a 	: in  std_logic_vector (0 to 3);
			b 	: in  std_logic_vector (0 to 3);
			c	: out std_logic_vector (0 to 4)
			);
 
end entity;

architecture ar_andd of andd is
begin  
process(a,b)
begin

	c <= "0" & (a and b);
	
	end process;
end ar_andd;
