Library ieee;
USE ieee.std_logic_1164.all;

ENTITY Logic_Unit is
	port
	(
		A  :  in std_logic_vector (3 downto 0);
		B  :  in std_logic_vector (3 downto 0);
		opCode  :  in std_logic_vector (2 downto 0);
		F  :  out  std_logic_vector (3 downto 0)
	);
end Logic_Unit;

architecture logicFunction of Logic_Unit is



begin
	process (A, B, opCode) is 
	begin
		case opCode is
			when "000" => 
				F <= A AND b;

			when "001" =>
				F <= NOT (A AND B); 
	
			when "010" =>
				F <= A OR B ;
	
			when "011" =>
				F <= NOT (A OR B);

			when "100" =>
				F <= A XOR B ;

			when "101" =>
				F <= NOT (A XOR B);

			when "110" =>
				F <= NOT A;

			when "111" =>
				F <= NOT B;
		end case;
	end process;

end logicFunction;