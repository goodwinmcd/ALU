Library ieee;
USE ieee.std_logic_1164.all;
ENTITY FullAdder is
	port
	(
		A	: in std_logic;
		B	: in std_logic;
		Cin: in std_logic;
		cout, S: out std_logic
	);
end FullAdder;

architecture logicfunction of Fulladder is 
begin
	S<=(not B and ((not cin and A) or (cin and not A))) or (B and ((not cin and not A) or (cin and A)));
	cout<=(A and cin) or (B and ((not cin and A) or (cin and not A)));
end logicfunction;