library ieee;
use ieee.std_logic_1164.all; 
entity multiplexer is
   port 
      (
         un : in std_logic;
         bin : in std_logic_vector (0 to 1);
         res_decriment : in std_logic_vector (0 to 4);
         res_orr : in std_logic_vector (0 to 4);
         res_addition: in std_logic_vector (0 to 4);
         res_ring_shear: in std_logic_vector (0 to 4);
         res_division: in std_logic_vector (0 to 4);
         c: out std_logic_vector(4 downto 0)
       );
end entity multiplexer;
architecture architec  of  multiplexer is
begin 
   l: c <= res_decriment when un = '1' and bin = "00" else 
           res_orr  when  un = '1' and bin = "01" else
           res_addition when  un = '1' and bin = "10" else
           res_ring_shear  when  un = '1' and bin = "11" else 
           res_division; 
end architecture architec;