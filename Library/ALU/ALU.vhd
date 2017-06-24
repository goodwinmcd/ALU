library ieee;
use ieee.std_logic_1164.all;

entity ALU is
	port
	(
		A		:		in std_logic_vector (3 downto 0);
		B		:		in std_logic_vector (3 downto 0);
		opCode: 		in std_logic_vector (3 downto 0);
		F		:		out std_logic_vector (3 downto 0);
		cout	:		out std_logic
	);
end ALU;

architecture LogicFunction of ALU is
	signal Asig			:	std_logic_vector (3 downto 0)	:= A;
	signal Bsig 		:	std_logic_vector (3 downto 0)	:= B;
	signal NotB			:	std_logic_vector (3 downto 0)	:= NOT B;
	signal OPsig		:	std_logic_vector (3 downto 0)	:= opcode;
	signal coutSig		:	std_logic;
	signal MUX_1out	:	std_logic_vector (3 downto 0);
	signal MUX_2out	:	std_logic_vector (3 downto 0);
	signal AUout		:	std_logic_vector (3 downto 0);
	signal LUout		:	std_logic_vector (3 downto 0);
	
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
	
	component mux1to1
	port
		(
			d0		:	in 	std_logic_vector (3 downto 0);
			d1		:	in 	std_logic_vector (3 downto 0);
			s		:	in 	std_logic;
			y		:	out 	std_logic_vector (3 downto 0)
		);
	end component;
	
	component mux2to1
	port
	(
		d0		:	in 	std_logic_vector(3 downto 0);
		d1		:	in		std_logic_vector(3 downto 0);
		d2		:	in		std_logic_vector(3 downto 0);
		d3		:	in		std_logic_vector(3 downto 0);
		s		:	in		std_logic_vector(1 downto 0);
		F		:	out	std_logic_vector(3 downto 0)
	);
	end component;
	
	begin

	mux_1						:	mux2to1
	port map
	(
		d0=>"0000",
		d1=>Bsig,
		d2=>NotB,
		d3=>"1111",
		s(0)=>opSig(1),
		s(1)=>opSig(2),
		F => Mux_1out
	);
	
	Arithmetic_Unit_1		:	Arithmetic_Unit
	port map
	(
		a 		=> asig,
		b 		=> MUX_1out,
		cin 	=> opCode(0),
		cout	=> coutSig,
		F		=> AUout
	);
	
	Logic_Unit_1			:	Logic_Unit
	port map
	(
		a				=> asig,
		b				=> bsig,
		opCode(0)	=> opSig(0),
		opCode(1)	=> opSig(1),
		opCode(2)	=> opSig(2),
		F 				=> LUout
	);
	
	MUX_2						:	MUX1to1
	port map
	(
		d0 =>	AUout,
		d1 =>	LUout,
		s	=> opsig(3),
		y 	=> mux_2out
	);
	
	f 		<= mux_2out;
	cout 	<= coutsig;
	
end LogicFunction;