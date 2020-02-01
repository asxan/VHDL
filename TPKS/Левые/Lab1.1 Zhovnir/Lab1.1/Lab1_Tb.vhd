library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------------
entity Lab1_Tb is

	

	

end entity;
----------------------------------------------------------------
architecture rtl of Lab1_Tb is

  component Lab1 is
   port 
		(
			x1,x2,x3,x4,x5	: in std_logic;
			y              : out std_logic 
		);
   end component;
	signal x1,x2,x3,x4,x5	:  std_logic:='0';
	signal		 y          :  std_logic:='0'; 
begin

	m1 : Lab1 port map 
	(x1=>x1,x2=>x2,x3=>x3,x4=>x4,x5=>x5, y=>y);
	
		process
	begin
	x1 <= '0';
	wait for 50 ps;
	x1 <= '1';
	wait for 50 ps;
	end process;
	
    process
	begin
	x2 <= '0';
	wait for 100 ps;
	x2 <= '1';
	wait for 100 ps;
	end process;
	
	process
	begin
	x3 <= '0';
	wait for 200 ps;
	x3 <= '1';
	wait for 200 ps;
	end process;

	process
	begin
	x4 <= '0';
	wait for 400 ps;
	x4 <= '1';
	wait for 400 ps;
	end process;	
	
	process
	begin
	x5 <= '0';
	wait for 800 ps;
	x5 <= '1';
	wait for 800 ps;
	end process;
end rtl;
