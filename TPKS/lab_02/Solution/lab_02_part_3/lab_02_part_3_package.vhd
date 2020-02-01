library ieee;
use ieee.std_logic_1164.all;

package lab_02_part_3_package is
   subtype part_3_element is std_logic;
   type part_3_array is array(natural range<>) of part_3_element;
end package lab_02_part_3_package; 

