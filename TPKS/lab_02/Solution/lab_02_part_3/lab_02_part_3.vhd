library ieee;
use ieee.std_logic_1164.all;
use work.lab_02_part_3_package.all;

entity lab_02_part_3 is
      port
      (
           x : in part_3_array(5 downto 1);
           y1 : out part_3_element
      );
end entity lab_02_part_3;

architecture lab_02_part_3_arch of lab_02_part_3 is
begin
   y1 <= ((x(1) xor x(2)) and x(3)) or ((not x(3)) or (x(4) and x(5)));
end architecture lab_02_part_3_arch;

