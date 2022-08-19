library ieee;
use ieee.std_logic_1164.all;

entity sub is
port(
	sa : in std_logic_vector (15 downto 0);
	sb : in std_logic_vector (15 downto 0);
	so : out std_logic_vector (15 downto 0);
	sc : out std_logic
	);
end sub;

architecture sub_arc of sub is
component comp2s is
 port (
	c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15 : in std_logic;
	o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15 : out std_logic
		);
end component comp2s;

component KSA is
port (
	x : IN std_logic_vector (15 downto 0);
	y : IN std_logic_vector (15 downto 0);
	cin : IN std_logic;
	sum : OUT std_logic_vector (15 downto 0);
	cout : OUT std_logic 
);
end component KSA;

signal b2s : std_logic_vector (15 downto 0);
--signal carout : std_logic;

begin
d0 : comp2s port map (sb(0), sb(1), sb(2), sb(3), sb(4), sb(5), sb(6), sb(7), sb(8), sb(9), sb(10), sb(11), sb(12), sb(13), sb(14), sb(15), b2s(0), b2s(1), b2s(2), b2s(3), b2s(4), b2s(5), b2s(6), b2s(7), b2s(8), b2s(9), b2s(10), b2s(11), b2s(12), b2s(13), b2s(14), b2s(15));

d1 : KSA port map (sa, b2s, '0', so, sc);
end sub_arc;