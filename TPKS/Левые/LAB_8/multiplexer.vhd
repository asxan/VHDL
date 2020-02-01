library ieee;
use ieee.std_logic_1164.all; 
entity 
multiplexer is
 
  port (
			un 		: in  std_logic;
			bin		: in  std_logic_vector (0 to 1);
			res_inc 	: in  std_logic_vector (0 to 4);
			res_and	: in  std_logic_vector (0 to 4);
			res_xor	: in  std_logic_vector (0 to 4);
			res_add: in  std_logic_vector (0 to 4);
			res_pow	: in  std_logic_vector (0 to 4);
		   c			: out STD_LOGIC_VECTOR(4 downto 0)
			);
 
end entity;

architecture architec  of multiplexer is
begin 

   l: c <=  res_pow 		when  un = '1' and bin = "00" else 
				res_and     when  un = '1' and bin = "01" else
				res_xor  	when  un = '1' and bin = "10" else
				res_add  	when 	un = '1' and bin = "11" else
				res_inc ; 
				
end architecture;