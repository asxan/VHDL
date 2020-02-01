library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity orr is
 
   port
       (
            a : in  std_logic_vector (0 to 3);
            b : in  std_logic_vector (0 to 3);
            c : out std_logic_vector (0 to 4)
        );
 
end entity orr;

architecture architec_orr of orr is
begin
proc0: process(a,b)
begin
   c <= "0" & (a or b);
   end process proc0;
end architecture architec_orr;