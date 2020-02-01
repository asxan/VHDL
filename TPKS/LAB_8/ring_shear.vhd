LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ring_shear IS 
  port
       (
            a : in std_logic_vector (0 to 3);
            b : in std_logic_vector(0 to 3);
            c : out std_logic_vector(0 to 4)
       );
end entity ring_shear;
architecture architec_ring_shear of ring_shear is
begin
  proc0: process (a, b)
  begin
       c<= "0" & shr(a,b);
end process proc0;
end architecture architec_ring_shear;