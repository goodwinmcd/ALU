library ieee;
use ieee.std_logic_1164.all;

entity Arithmetic_Unit is 
	port
	(
		a			: 	in std_logic_vector(3 downto 0);
		b			:	in	std_logic_vector(3 downto 0);
		cin		: 	in std_logic;
		F			:	out std_logic_vector(3 downto 0);
		cout		:  out std_logic
	);
end Arithmetic_Unit;

architecture arithmetic of Arithmetic_Unit is
	signal carry:	std_logic_vector(3 downto 0);
	signal sum : 	std_logic_vector(3 downto 0);
	
	component FullAdder
		port
		(
			A	: in std_logic;
			B	: in std_logic;
			Cin: in std_logic;
			cout : out std_logic;
			S: out std_logic
		);
	end component;
	
	begin
	
	full_adder_1 : FullAdder	port map(a=>A(0), b=>B(0), Cin=>cin, cout =>carry(0), S=>sum(0));
	full_adder_2 :	FullAdder	port map(a=>A(1), b=>B(1), Cin=>carry(0), cout=>carry(1), S=>sum(1));
	full_adder_3 :	FullAdder 	port map(a=>A(2), b=>B(2), Cin=>carry(1), cout=>carry(2), S=>sum(2));
	full_adder_4 :	FullAdder 	port map(a=>A(3), b=>B(3), Cin=>carry(2), cout=>carry(3), S=>sum(3));
	
	cout <=carry(3);
	F <= sum;
end arithmetic;