library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mas.all;

entity testChange is
end entity testChange;

architecture t of testChange is
 component Change is
 generic 
 (N : integer := 8);
  port
      (
        clk : in std_logic;
        qf : out m(N - 1 downto 0);
        d : in m(N - 1 downto 0);
        cout : out integer
      );
 end component Change;
 
 constant N : integer := 8;
 
 signal clk : std_logic := '1';
 signal qf : m(N - 1 downto 0);
 signal d : m(N - 1 downto 0) := (10, 11, 12, 13, 1, 2, 3, 4);
 signal cout : integer;
begin
 ports : Change 
 generic map
 (
 N => N
 ) 
 port map
 (
 clk => clk,
 qf => qf,
 d => d,
 cout => cout
 );
 p1: process
 begin
  clk <= not clk;
  wait for 50 ps;
 end process p1;
 p2: process
 begin
  for i in N - 1 downto 0 loop
   d(i) <= d(i) + 1;
   wait;
  end loop;
  wait for 100 ps;
 end process p2;
end architecture t;