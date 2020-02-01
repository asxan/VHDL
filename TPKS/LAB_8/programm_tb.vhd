library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity programm_tb is
end entity programm_tb;

architecture Behavior of programm_tb is
     component programm is
      port 
         (
             un : in std_logic;
             bin : in std_logic_vector (0 to 1);
             a : in  std_logic_vector (0 to 3);
             b : in  std_logic_vector (0 to 3);
             c : out std_logic_vector (0 to 4)
          );
   end component programm;

   signal   un : std_logic;
   signal   bin : std_logic_vector (0 to 1);
   signal   a : std_logic_vector(0 to 3);
   signal   b : std_logic_vector(0 to 3);
   signal   c : std_logic_vector(0 to 4);
   begin
   b1:  programm port map (un => un, a => a, b => b, c => c, bin => bin);
   a <= "0010";
   b <= "0011";

   proc0: process
   begin
   un <= '0';
   wait for 800 ps;
   un <= '1';
   wait for 800 ps;
   end process proc0;

   proc1: process
   begin
   bin <= "00";
   wait for 800 ps;
   bin <= "00";
   wait for 200 ps;
   bin <= "01";
   wait for 200 ps;
   bin <= "10";
   wait for 200 ps;
   bin <= "11";
   wait for 200 ps;
   end process proc1;

end architecture Behavior;