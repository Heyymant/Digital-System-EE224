library ieee;
use ieee.std_logic_1164.all;

entity nand_2 is 
	port(
		a, b : in std_logic;
		x : out std_logic
	);
end nand_2;

architecture nand_2_arc of nand_2 is 

component and_2 is 
	port(
		a, b : in std_logic;
		x : out std_logic
	);
end component and_2;

component not_2 is 
	port(
		a: in std_logic;
		x : out std_logic
	);
end component not_2;

signal p : std_logic;
begin 
	d0 : and_2 port map (a,b,p);
	d1 : not_2 port map (p,x);

end nand_2_arc;