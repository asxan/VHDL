library ieee;
use ieee.std_logic_1164.all;

entity lab_02_part_1 is
   port
      (
           x : in std_logic_vector(5 downto 1);
           y1 : out std_logic
       );
end entity lab_02_part_1;

architecture lab_02_part_1_arch of lab_02_part_1 is
begin
   y1 <= ((x(1) xor x(2)) and x(3)) or ((not x(3)) or (x(4) and x(5)));
end architecture lab_02_part_1_arch;