library ieee;
use ieee.std_logic_1164.all;

entity not_2 is 
	port(
		a : in std_logic;
		x : out std_logic
	);
end not_2;

architecture not_2_arc of not_2 is 
begin 
	x <= not(a);

end not_2_arc;