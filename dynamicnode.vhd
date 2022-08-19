library ieee;
use ieee.std_logic_1164.all;

-- this dynamic node get the previous state 
-- its input is p , g of previous state 
-- it generates new state holding new p , g 
-- and supply them to next node 
entity dynamicnode is 
port (
-- node inputs terminals 
Pprevious : IN std_logic ;
Gprevious : IN std_logic ;
pcurrent  : IN std_logic ;
gcurrent  : IN std_logic ;
-- node outputs terminals 
pout : OUT std_logic ;
gout : OUT std_logic 
);
end dynamicnode;

architecture behaviour of dynamicnode is 
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
end component and_2;
signal p: std_logic;
begin 
--gout <= gcurrent or (gprevious and pcurrent);
 d0 : and_2 port map (gprevious , pcurrent ,p);
 d1 : or_2 port map (gcurrent ,p, gout);
 
--pout <= pcurrent and Pprevious;
	d2 : and_2 port map(pcurrent,Pprevious,pout);
end behaviour ;