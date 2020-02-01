library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ArithmeticUnit is 
	generic( constant N:positive := 4 );
	port 
   (
		data_A_in : in std_logic_vector(N-1 downto 0);
		data_B_in : in std_logic_vector(N-1 downto 0);
		opCode : in std_logic_vector(2 downto 0);
		
		data_output : out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture ArithmeticUnit_architecture of ArithmeticUnit is
begin
	process(opCode, data_A_in, data_B_in)
		variable tmp_bit_vector : bit_vector(N-1 downto 0); 
	begin
		case (opCode) is 
			when "000" =>
				data_output <= not(data_A_in);
			when "001" =>
				data_output <= data_A_in xor data_B_in;
			when "010" =>
				if( data_A_in > data_B_in) then
					data_output <= "0100";
				elsif (data_A_in = data_B_in) then
					data_output <= "0010";
				else
						data_output <= "0001"; 
				end if;
			when "011" =>
				data_output <= data_A_in and data_B_in;
			when "100" =>
				tmp_bit_vector := to_bitvector( data_A_in );
		    	tmp_bit_vector:= tmp_bit_vector rol to_integer(unsigned (data_B_in));
				data_output <= to_stdlogicvector (tmp_bit_vector);
			when others => null;
		end case;
	end process;
end ArithmeticUnit_architecture;
