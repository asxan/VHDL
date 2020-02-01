library ieee;
use ieee.std_logic_1164.all; 

entity programm is
 
  port (
			un : in  std_logic;
			bin: in  std_logic_vector (0 to 1);
			a 	: in  std_logic_vector (0 to 3);
			b	: in  std_logic_vector (0 to 3);
			c	: out std_logic_vector (0 to 4)
			);
 
end entity;

architecture ar_x of programm is

	component decriment is
	  port (
				a 	: in  std_logic_vector (0 to 3);
			   c	: out std_logic_vector (0 to 4)
				);
	end component;
	
	

	component add is
	  port (
				a 	: in  std_logic_vector (0 to 3);
			   b	: in  std_logic_vector (0 to 3);
			   c	: out std_logic_vector (0 to 4)
				);
	 
	end component;
	
	
	
	component andd is
	 port (
		   a 	: in  std_logic_vector (0 to 3);
			b 	: in  std_logic_vector (0 to 3);
			c	: out std_logic_vector (0 to 4)
	       );
	end component;
	
	component multiplexer is
	  port (
				un 		: in  std_logic;
				bin		: in  std_logic_vector (0 to 1);
				res_inc 	: in  std_logic_vector (0 to 4);
				res_and	: in  std_logic_vector (0 to 4);
				res_xor	: in  std_logic_vector (0 to 4);
				res_add  : in  std_logic_vector (0 to 4);
				res_pow	: in  std_logic_vector (0 to 4);
				c			: out STD_LOGIC_VECTOR(4 downto 0)
					);
	end component;
	

	--signal res_decriment: std_logic_vector (0 to 4);
	--signal res_and: std_logic_vector (0 to 4);
	--signal res_xor: std_logic_vector (0 to 4);
	--signal res_add: std_logic_vector (0 to 4);
	--signal res_pow: std_logic_vector (0 to 4);
	--signal res : std_logic_vector (0 to 4);
	
begin  

	m0: decriment port map(a=>a,c=>res_decriment);
	m1: andd port map(a=>a,b=>b,c=>res_and);
	--m2: xorr port map(a=>a,b=>b,c=>res_xor);
	m3: add port map(a=>a,b=>b,c=>res_add);
	--m4: pow port map(a=>a,b=>b,c=>res_pow);
	m5: multiplexer port map(un=>un,bin=>bin,res_decriment=>res_decriment,res_and=>res_and,res_xor=>res_xor,res_add=>res_add,res_pow=>res_pow,c=>res);
	
	c <= res;
	
	process (a,b,un,bin)
	begin
	
	
		
	end process;
end architecture;
