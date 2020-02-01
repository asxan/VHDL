
library ieee;
use ieee.std_logic_1164.all;

entity rsl_trigger is

	port(
		clk		 : in	std_logic;
		r, s, l	 : in	std_logic;
		reset	 : in	std_logic;
		q	 : out	std_logic;
	);

end entity;

architecture rtl of rsl_trigger is


begin

	process (clk, reset)
	begin
		if reset = '1' then
			q <= '0';
		elsif (rising_edge(clk)) then
		if l='1' then
			q<=r;
		end if;
		if l='0';
			q<=s;
		end if;
	end process;

end rtl;
