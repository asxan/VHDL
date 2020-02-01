library ieee;
use ieee.std_logic_1164.all;
use work.lab_02_part_2_package.all;

entity lab_02_part_2 is
    port
       (
            x : in part_2_vector(5 downto 1);
            y1 : out std_logic
       );
end entity lab_02_part_2;

architecture lab_02_part_2_arch of lab_02_part_2 is
begin 
    y1 <= ((x(1) xor x(2)) and x(3)) or ((not x(3)) or (x(4) and x(5)));
end architecture lab_02_part_2_arch;