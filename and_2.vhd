library ieee;
use ieee.std_logic_1164.all;

entity and_2 is 
	port(
		a, b : in std_logic;
		x : out std_logic
	);
end and_2;

architecture and_2_arc of and_2 is 
begin 
	x <= a and b;

end and_2_arc;