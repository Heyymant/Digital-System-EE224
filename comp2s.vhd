library ieee;
use ieee.std_logic_1164.all;

entity comp2s is 
	port (
		c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15 : in std_logic;
		o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15 : out std_logic
		);
end entity comp2s;

architecture comp2s_arc of comp2s is 

signal oo0, oo1, oo2, oo3, oo4, oo5, oo6, oo7, oo8, oo9, oo10, oo11, oo12, oo13, oo14, oo15, carry: std_logic;
signal add, final, one : STD_LOGIC_VECTOR (15 downto 0);

component nand_16 is 
	port (
		a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15 : in std_logic;
		b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15 : in std_logic;
		x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15 : out std_logic
		);
end component nand_16;

component KSA is
port (
x : IN std_logic_vector (15 downto 0);
y : IN std_logic_vector (15 downto 0);
cin : IN std_logic;
sum : OUT std_logic_vector (15 downto 0); 
cout : OUT std_logic 
);
end component KSA;

begin 
	d0 : nand_16 port map (c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',oo0,oo1,oo2,oo3,oo4,oo5,oo6,oo7,oo8,oo9,oo10,oo11,oo12,oo13,oo14,oo15);
   
	add(0) <= oo0;
	add(1) <= oo1;
	add(2) <= oo2;
	add(3) <= oo3;
	add(4) <= oo4;
	add(5) <= oo5;
	add(6) <= oo6;
	add(7) <= oo7;
	add(8) <= oo8;
	add(9) <= oo9;
	add(10) <= oo10;
	add(11) <= oo11;
	add(12) <= oo12;
	add(13) <= oo13;
	add(14) <= oo14;
	add(15) <= oo15;
	
	one <= "0000000000000001";
	
	d1 : KSA port map (add, one, '0', final, carry );
	
end comp2s_arc;