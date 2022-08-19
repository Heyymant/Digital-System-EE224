library ieee;
use ieee.std_logic_1164.all;

entity or_2 is 
	port(
		a, b : in std_logic;
		x : out std_logic
	);
end or_2;

architecture or_2_arc of or_2 is 
begin 
	x <= a or b;

end or_2_arc;