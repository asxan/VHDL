library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use work.mas.all;

entity testChange is 
end entity testChange;

architecture t of testChange is
 component Change is
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
 end component Change;
 constant N : integer := 8;
 signal clk : std_logic := '1';
 signal qf : m(N downto 0);
 signal d : m(N - 1 downto 0);
 signal count : integer;
 file in_file   : text open REAd_MOdE  is "in.txt";
 file out_filef : text open WRITE_MOdE is "outf.txt";
 file out_filep : text open WRITE_MOdE is "outp.txt";
 
begin
 ports :
 Change generic map(N => N) 
 port map(clk => clk, qf => qf, d => d, count => count);
 
 p1: process
 begin
  clk <= not clk;
  wait for 50 ps;
 end process p1;
  p2: process
  variable buf_in, buf_out : line;
  variable v : m (N - 1 downto 0) := (others => 0);
  variable r : m (N downto 0) := (others => 0);
  variable s : integer := 0;
 begin
  while not endfile(in_file) loop
   for i in N - 1 downto 0 loop
     readline(in_file, buf_in);
     read(buf_in, v(i));
    end loop;
        d <= v;
    r := qf(N downto 0);
    for i in N downto 0 loop
     write(buf_out, r(i));
     writeline(out_filep, buf_out);
     writeline(out_filef, buf_out);
    end loop;
        wait for 100 ps;
   end loop;
   wait;
 end process p2;
end architecture t;