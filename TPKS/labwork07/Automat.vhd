library ieee;
use ieee.std_logic_1164.all;

entity Automat is

   port
      (
          clk : in std_logic;
          a : in std_logic;
          reset : in std_logic;
          output : out std_logic_vector(5 downto 0)
      );

end entity Automat;

architecture rtl of Automat is
   type state_type is (s1, s2, s3, s4, s5);
       signal state : state_type;

begin
      proc0: process (clk, reset)
   begin
      if reset = '1' then
         state <= s1;
      elsif (rising_edge(clk)) then
         case state is
             when s1=>
               if a = '1' then
                  state <= s3;
               else
                   state <= s2;
               end if;
            when s2=>
               state <= s5;
            when s3=>
               state <= s4;
            when s4 =>
               state <= s5;
            when s5 =>
               state <= s1;
          end case;
      end if;
      end process proc0;
 
   proc1: process(state)
   begin
     case state is
         when s1 =>
            output <= "000000";
         when s2 =>
            output <= "000001";
         when s3 =>
            output <= "000011";
         when s4 =>
            output <= "000100";
         when s5 =>
            output <= "100001";
      end case;
   end process proc1;

end architecture rtl;