library ieee;
use ieee.std_logic_1164.all; 

entity programm is

  port 
      (
             un : in std_logic;
             bin: in std_logic_vector(0 to 1);
             a : in std_logic_vector(0 to 3);
             b : in std_logic_vector(0 to 3);
             c : out std_logic_vector(0 to 4)
       );
end entity programm;

architecture ar_x of programm is

  component decriment is
       port
          (
               a  : in std_logic_vector(0 to 3);
               c  : out std_logic_vector(0 to 4)
           );
      end component decriment;
 
     component orr is
     port
       (
            a  : in  std_logic_vector(0 to 3);
            b  : in  std_logic_vector(0 to 3);
            c  : out std_logic_vector(0 to 4)
        );
     end component orr;
 
   component addition is
   port 
        (
            a : in  std_logic_vector(0 to 3);
            b : in  std_logic_vector(0 to 3);
            c : out std_logic_vector(0 to 4)
        );
     end component addition;
    
    component ring_shear is
    port
        (
            a : in std_logic_VECTOR (0 to 3);
            b : in std_logic_vector(0 to 3);
            c : out std_logic_vector(0 to 4)
        );
     end component ring_shear;

     component division is
     port ( 
            a  : in  std_logic_vector(0 to 3);
            b  : in  std_logic_vector(0 to 3);
            c  : out std_logic_vector(0 to 4)
           );
     end component division;  
 
     component multiplexer is
     port
       (
            un : in  std_logic;
            bin : in  std_logic_vector (0 to 1);
            res_decriment:in std_logic_vector (0 to 4);
            res_orr : in  std_logic_vector (0 to 4);
            res_addition : in std_logic_vector (0 to 4);
            res_ring_shear : in std_logic_vector (0 to 4);
            res_division : in std_logic_vector (0 to 4);
            c : out STD_LOGIC_VECTOR(4 downto 0)
        );
      end component multiplexer;

   signal res_decriment: std_logic_vector (0 to 4);
   signal res_orr: std_logic_vector (0 to 4);
   signal res_addition: std_logic_vector (0 to 4);
   signal res_ring_shear: std_logic_vector (0 to 4);
   signal res_division: std_logic_vector (0 to 4);
   signal res : std_logic_vector (0 to 4);

begin  

   m0: decriment port map(a=>a,c=>res_decriment);
   m1: orr port map(a=>a,b=>b,c=>res_orr);
   m2: addition port map(a=>a,b=>b,c=>res_addition); 
   m3: ring_shear port map(a=>a,b=>b,c=>res_ring_shear);
   m4: division port map(a=>a,b=>b,c=>res_division);
   m5: multiplexer port map(un=>un,bin=>bin,res_decriment=>res_decriment,res_orr=>res_orr,res_addition=>res_addition,res_ring_shear=>res_ring_shear,res_division=>res_division,c=>res);

   c <= res;

   proc: process(a,b,un,bin)
   begin
   end process proc;
end architecture ar_x;