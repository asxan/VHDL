library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------------
entity Lab1 is

	

	port 
	(
		x1,x2,x3,x4,x5	: in std_logic;
		y : out std_logic 
	);

end entity;
----------------------------------------------------------------
architecture rtl of Lab1 is

	
begin

	

	y <= (not X2) xor (((X1 and X2) xor X3) or X4 or X5);

end rtl;
