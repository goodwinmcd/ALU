library IEEE;
use IEEE.std_logic_1164.all;

entity mux1to1 is

port
	(
		d0		:	in 	std_logic_vector (3 downto 0);
		d1		:	in 	std_logic_vector (3 downto 0);
		s		:	in 	std_logic;
		y		:	out 	std_logic_vector (3 downto 0)
	);
end entity;

architecture logicFunction of mux1to1 is

begin
		with s select
			y <= 	d0 when '0',
					d1 when '1';
					
end logicFunction;
