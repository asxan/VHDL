library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addition is
 
  port 
     (
         a : in  std_logic_vector (0 to 3);
         b : in  std_logic_vector (0 to 3);
         c : out std_logic_vector (0 to 4)
      );

end entity addition; 

architecture architec_addition of addition is
begin  
proc0: process(a,b)
begin
  if unsigned(a) > (unsigned(a)+unsigned(b)) then
  c <= "1"&std_logic_vector(unsigned(a)+unsigned(b));
  else
  c <= "0"&std_logic_vector(unsigned(a)+unsigned(b));
  end if;
  end process proc0;
end architecture architec_addition;