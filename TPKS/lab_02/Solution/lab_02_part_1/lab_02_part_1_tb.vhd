library ieee;
use ieee.std_logic_1164.all;

entity lab_02_part_1_tb is
end entity lab_02_part_1_tb;

architecture lab_02_part_1_tb_arch of lab_02_part_1_tb is
   component lab_02_part_1 is
      port
         (
            x : in std_logic_vector(5 downto 1);
            y1 : out std_logic
         );
   end component lab_02_part_1;

   signal x : std_logic_vector(5 downto 1) := "11111";
   signal y1 : std_logic;
begin
      p1 : lab_02_part_1 port map
      (
           x => x,
           y1 => y1
      );

   proc0: process
   begin
      x(1) <= not x(1);
      wait for 50 ps;
      end process proc0;

   proc1: process
   begin
      x(2) <= not x(2);
      wait for 100 ps;
   end process proc1;

   proc2: process
   begin
      x(3) <= not x(3);
      wait for 200 ps;
   end process proc2;

   proc3: process
   begin
      x(4) <= not x(4);
      wait for 400 ps;
   end process proc3;

   proc4: process
   begin
      x(5) <= not x(5);
      wait for 800 ps;
   end process proc4;

end architecture lab_02_part_1_tb_arch;
