library ieee;
use ieee.std_logic_1164.all;

entity ALU is 
	port
	(
		a			: in std_logic_vector (3 downto 0);
		b			: in std_logic_vector (3 downto 0);
		opcode	: in std_logic_vector (3 downto 0);
		F			: out std_logic_vector (3 downto 0);
		cout		: out std_logic
	);
end ALU

architecture function of ALU is
		
		
	component Arithmetic_Unit
		port
		(
			a			: 	in std_logic_vector(3 downto 0);
			b			:	in	std_logic_vector(3 downto 0);
			cin		: 	in std_logic;
			F			:	out std_logic_vector(3 downto 0);
			cout		:  out std_logic
		);
	end component;
	
	component Logic_Unit
		port
		(
			A  :  in std_logic_vector (3 downto 0);
			B  :  in std_logic_vector (3 downto 0);
			opCode  :  in std_logic_vector (2 downto 0);
			F  :  out  std_logic_vector (3 downto 0)
		);
	end component;
	
	begin
	
		Arithmetic_Unit1 : Arithmetic_Unit
			port map
				(
					A => A,
					B => B,
					cin => opCode(0),
					cout <= cout
				);