library ieee;
use ieee.std_logic_1164.all;

entity tb_automat is
end entity tb_automat;

architecture behavior of tb_automat is
   component Automat is
      port
          (
              clk    : in  std_logic;
              a  : in  std_logic;
              reset  : in  std_logic;
              output : out std_logic_vector(5 downto 0)
           );
   end component Automat;
   signal clk : std_logic;
   signal a : std_logic;
   signal reset : std_logic :='0';
   signal output : std_logic_vector(5 downto 0);
begin

   p1 : Automat port map(clk => clk, a => a, output => output, reset => reset);

   proc0: process
   begin
      clk <= '0';
      wait for 25 ps;
      clk <= '1';
      wait for 25 ps;
   end process proc0;

   proc1: process
   begin
      a <= '0';
      wait for 100 ps;
      a <= '1';
      wait for 100 ps;

      reset <= '1';
      wait for 10 ps;
      reset <= '0';
      wait for 10 ps;

      a <= '1';
      wait for 100 ps;
      a <= '0';
      wait for 100 ps;

      reset <= '1';
      wait for 10 ps;
      reset <= '0';
      wait for 10 ps;
   end process proc1;
end architecture behavior;