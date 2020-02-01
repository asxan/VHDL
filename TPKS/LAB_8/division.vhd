library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity division is
 
  port
     (
         a  : in std_logic_vector (0 to 3);
         b  : in std_logic_vector (0 to 3);
         c  : out std_logic_vector (0 to 4)
      );
end entity division;

architecture architec_division of division is
begin  
proc0: process(a,b)
begin
  if(unsigned(b)/= 0)then
  c <= "0" & std_logic_vector(unsigned(a)/ unsigned(b));
  else c <= "00000";
  end if;
  end process proc0;
end architecture architec_division;