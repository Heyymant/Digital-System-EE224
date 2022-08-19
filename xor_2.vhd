library ieee;
use ieee.std_logic_1164.all;

entity xor_2 is 
	port(
		a, b : in std_logic;
		x : out std_logic
	);
end xor_2;

architecture xor_2_arc of xor_2 is 
component or_2 is 
	port(
		a, b : in std_logic;
		x : out std_logic
	);
end component or_2;

component and_2 is 
	port(
		a, b : in std_logic;
		x : out std_logic
	);
end  component and_2;

component not_2 is 
	port(
		a : in std_logic;
		x : out std_logic
	);
end component not_2;
signal p,q,r,s : std_logic;

begin 
	d0: not_2 port map(a,p);
	d1 : not_2 port map (b,q);
	d2 : and_2 port map (a,q,r);
	d3 : and_2 port map (p,b,s);
	d4 : or_2 port map (r, s,x);
	

end xor_2_arc;