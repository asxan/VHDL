library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mas.all;

entity Change is
 generic
 (
 N : integer := 8
 );
 port(
  clk : in std_logic;
  qf : out m(N downto 0);
  d : in m(N - 1 downto 0);
  count : out integer
 );
end entity Change;

architecture beh of Change is
 function fChange (x : m) return m is
  variable r : m (N downto 0);
  variable count : integer := 0;
 begin
 
  for i in N - 1 downto 0 loop
   r(i) := x(i);
   if x(i) mod 2 = 1 then
    count := count + 1;
    r(i) := 0;
   end if;
  end loop;
  r(N) := count;
  return r;
  
 end function fChange;
 procedure pChange(variable x: in m; variable r : out m) is
  variable count : integer := 0;
 begin
 
  for i in N - 1 downto 0 loop
   r(i) := x(i);
   if x(i) mod 2 = 1 then
    count := count + 1;
    r(i) := 0;
   end if;
  end loop;
  r(N) := count;
 end procedure pChange;
begin
 p0: process (clk)
 variable data : m(N - 1 downto 0);
 variable res : m(N downto 0) := (others => 0);
 begin
  if rising_edge(clk) then
   data := d;
   res := fChange(data);
   qf <= res(N downto 0);
   data := d;
   pChange(data, res);
   qf <= res(N downto 0);
  end if;
 end process p0;
end architecture beh;