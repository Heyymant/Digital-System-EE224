library ieee;
use ieee.std_logic_1164.all;
-- this the essentialnode is carring the initial state of the adder 
-- its input is the first input carry 
 
entity essentialnode is 
port (
-- node input terminal 
x : IN std_logic ;
-- node input terminal 
y : IN std_logic ;
-- g output terminlal of node 
g : OUT std_logic ;
-- P output terminal  of node 
p : OUT std_logic 
);
end essentialnode;

architecture behaviour of essentialnode is 
component  xor_2 is 
	port(
		a, b : in std_logic;
		x : out std_logic
	);
end  component xor_2;

component  and_2 is 
	port(
		a, b : in std_logic;
		x : out std_logic
	);
end component and_2;

begin 
--g <= x and y;
	d0 : and_2 port map (x,y,g);
	
--p <= x xor y;
	d1 : xor_2 port map (x,y,p);
end behaviour;