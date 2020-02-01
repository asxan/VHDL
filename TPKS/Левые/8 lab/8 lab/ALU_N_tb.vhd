library ieee;
use ieee.std_logic_1164.all;

entity ALU_N_tb is
end entity;

----------------------------------

architecture ALU_N_tb_arch of ALU_N_tb is

	component ALU_N is 
	generic(constant N:positive := 4);
	port 
   (
		data_A_in : in std_logic_vector(N-1 downto 0);
		data_B_in : in std_logic_vector(N-1 downto 0);
		opCode : in std_logic_vector(2 downto 0);
		
		data_output : out std_logic_vector(N-1 downto 0)
	);
	end component;
	
	 constant N         : positive:=4;
	 signal data_A_in   : std_logic_vector(N-1 downto 0) := (others => '0');
	 signal data_B_in   : std_logic_vector(N-1 downto 0) := (others => '0');
	 signal opCode      : std_logic_vector(2 downto 0) := (others => '0');
	 signal data_output : std_logic_vector(N-1 downto 0);
	
begin 
	inst: ALU_N GENERIC MAP (N => N)
					   PORT MAP (data_A_in => data_A_in, data_B_in => data_B_in, opcode => opCode, data_output => data_output);
	 
	 process
	 begin
		data_A_in <= "1010";
		wait for 50 ps;
		data_A_in <= "0110";
		wait for 50 ps;
		data_A_in <= "0010";
		wait for 50 ps;
		data_A_in <= "0101";
		wait for 50 ps;
		data_A_in <= "0011";
		wait for 50 ps;

	 end process;
	 
	 process
	 begin
		data_B_in <= "0010";
		wait for 45 ps;
		data_B_in <= "0010";
		wait for 50 ps;
		data_B_in <= "0101";
		wait for 50 ps;
		data_B_in <= "1001";
		wait for 50 ps;
		data_B_in <= "0010";
		wait for 50 ps;

	 end process;
	
	 process
	 begin
		opCode <= "000";
		wait for 40 ps;
		opCode <= "001";
		wait for 50 ps;
		opCode <= "010";
		wait for 50 ps;
		opCode <= "011";
		wait for 50 ps;
		opCode <= "100";
		wait for 50 ps;

	 end process;

END ALU_N_tb_arch;
	
	