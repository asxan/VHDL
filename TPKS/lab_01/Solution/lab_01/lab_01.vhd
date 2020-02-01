library ieee;
use ieee.std_logic_1164.all;

entity lab_01 is
   port
   (
      x1 : in std_logic;
      x2 : in std_logic;
      x3 : in std_logic;
      x4 : in std_logic;
      x5 : in std_logic;
      y  : out std_logic
   );
end entity lab_01;

architecture lab_01_architecture of lab_01 is
begin 
   y <= ((X1 xor X2) and X3) or ((not X3) or (X4 and X5));
end architecture lab_01_architecture;
