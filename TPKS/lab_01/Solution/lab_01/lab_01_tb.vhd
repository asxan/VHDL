library ieee;
use ieee.std_logic_1164.all;

entity lab_01_tb is
end entity lab_01_tb;

architecture lab_01_tb_architecture of lab_01_tb is
   component lab_01 is
      port
      (
         x1 : in std_logic;
         x2 : in std_logic;
         x3 : in std_logic;
         x4 : in std_logic;
         x5 : in std_logic;
         y  : out std_logic
      );
   end component lab_01;

   signal x1 : std_logic := '1';
   signal x2 : std_logic := '1';
   signal x3 : std_logic := '1';
   signal x4 : std_logic := '1';
   signal x5 : std_logic := '1';
   signal y  : std_logic := '1';
begin
   inst1 : lab_01 port map (
      x1 => x1,
      x2 => x2,
      x3 => x3,
      x4 => x4,
      x5 => x5,
      y  => y
   );
   
   proc0: process
   begin
      x1 <= '0';
      wait for 50 ps;
      x1 <= '1';
      wait for 50 ps;
   end process proc0;
   
   proc1: process
   begin
      x2 <= '0';
      wait for 100 ps;
      x2 <= '1';
      wait for 100 ps;
   end process proc1;
   
   proc2: process
   begin
      x3 <= '0';
      wait for 200 ps;
      x3 <= '1';
      wait for 200 ps;
   end process proc2;
   
   proc3: process
   begin
      x4 <= '0';
      wait for 400 ps;
      x4 <= '1';
      wait for 400 ps;
   end process proc3;

   proc4: process
   begin
      x5 <= '0';
      wait for 800 ps;
      x5 <= '1';
      wait for 800 ps;
   end process proc4;
end architecture lab_01_tb_architecture;
