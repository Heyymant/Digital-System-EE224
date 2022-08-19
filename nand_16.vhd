library ieee;
use ieee.std_logic_1164.all;

entity nand_16 is 

	port (
		a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15 : in std_logic;
		b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15 : in std_logic;
		x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15 : out std_logic
		);
end entity nand_16;

architecture nand_16_arc of nand_16 is 
component nand_2 is 
	port ( a, b : in std_logic;
			x : out std_logic
			);
end component nand_2;

begin 
	d0: nand_2 port map (a0, b0, x0);
	d1: nand_2 port map (a1, b1, x1);
	d2: nand_2 port map (a2, b2, x2);
	d3: nand_2 port map (a3, b3, x3);
	d4: nand_2 port map (a4, b4, x4);
	d5: nand_2 port map (a5, b5, x5);
	d6: nand_2 port map (a6, b6, x6);
	d7: nand_2 port map (a7, b7, x7);
	d8: nand_2 port map (a8, b8, x8);
	d9: nand_2 port map (a9, b9, x9);
	d10: nand_2 port map (a10, b10, x10);
	d11: nand_2 port map (a11, b11, x11);
	d12: nand_2 port map (a12, b12, x12);
	d13: nand_2 port map (a13, b13, x13);
	d14: nand_2 port map (a14, b14, x14);
	d15: nand_2 port map (a15, b15, x15);

end nand_16_arc;