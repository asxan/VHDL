library ieee;
use ieee.std_logic_1164.all;

entity ALU_N is 
	generic(constant N:positive := 4);
	port 
   (
		data_A_in : in std_logic_vector(N-1 downto 0);
		data_B_in : in std_logic_vector(N-1 downto 0);
		opCode : in std_logic_vector(2 downto 0);
		
		data_output : out std_logic_vector(N-1 downto 0)
	);
end ALU_N;

architecture ALU_N_architecture of ALU_N is
	component ArithmeticUnit is 
		generic( constant N:positive := 4 );
		port 
		(
			--carry_in : in std_logic;
			data_A_in : in std_logic_vector(N-1 downto 0);
			data_B_in : in std_logic_vector(N-1 downto 0);
			opCode : in std_logic_vector(2 downto 0);
			
			--carry_out : out std_logic;
			data_output : out std_logic_vector(N-1 downto 0)
		);
	end component;
begin
	inst_ALU : ArithmeticUnit  generic map (N => N)
										port map (data_A_in => data_A_in, data_B_in => data_B_in, opcode => opCode, data_output => data_output);
end ALU_N_architecture;
