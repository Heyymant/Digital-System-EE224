library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ALU is 
	port(
			a0, b0:  IN std_logic_vector (15 downto 0);
			sel0 : IN std_logic_vector(1 downto 0);
			cout0 : OUT std_logic;
			z : OUT std_logic;
			x0:  OUT std_logic_vector (15 downto 0)
);
end entity ALU;


architecture aul_16_arc of ALU is 
 
component KSA is 
port (
-- first number we want to add
x : IN std_logic_vector (15 downto 0);
-- second number we want to add 
y : IN std_logic_vector (15 downto 0);
-- essential input carry 
cin     : IN std_logic;
-- the summation 
sum    : OUT std_logic_vector (15 downto 0);
-- the output carry 
cout   : OUT std_logic 
);
end component KSA;

component xor_16 is 

	port (
			a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15 : in std_logic;
		   b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15 : in std_logic;
		   x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15 : out std_logic
		);
end component xor_16;

component  sub is
port(
	sa : in std_logic_vector (15 downto 0);
	sb : in std_logic_vector (15 downto 0);
	so : out std_logic_vector (15 downto 0);
	sc : out std_logic
	);
end  component sub;

component nand_16 is 
	port(
			a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15 : in std_logic;
		   b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15 : in std_logic;
		   x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15 : out std_logic
);
end component nand_16;
	signal temp_add : std_logic_vector(15 downto 0);
	signal temp_sub : std_logic_vector(15 downto 0);
	signal temp_xor : std_logic_vector(15 downto 0);
	signal temp_nand : std_logic_vector(15 downto 0);
	signal temp_cout0 : std_logic;
	signal temp_cout01 : std_logic;
begin

 d0_Add : KSA port map( a0,b0,'0',temp_add,temp_cout0);
 d0_sub : sub port map( a0, b0, temp_sub,temp_cout01);
 d0_xor : xor_16 port map( a0(0), a0(1), a0(2), a0(3), a0(4), a0(5), a0(6), a0(7), a0(8), a0(9), a0(10), a0(11), a0(12), a0(13), a0(14), a0(15), b0(0), b0(1), b0(2), b0(3), b0(4), b0(5), b0(6), b0(7), b0(8), b0(9), b0(10), b0(11), b0(12), b0(13), b0(14), b0(15), temp_xor(0), temp_xor(1), temp_xor(2), temp_xor(3), temp_xor(4), temp_xor(5), temp_xor(6), temp_xor(7), temp_xor(8), temp_xor(9), temp_xor(10), temp_xor(11), temp_xor(12), temp_xor(13), temp_xor(14), temp_xor(15));
 d0_nand : nand_16 port map( a0(0), a0(1), a0(2), a0(3), a0(4), a0(5), a0(6), a0(7), a0(8), a0(9), a0(10), a0(11), a0(12), a0(13), a0(14), a0(15), b0(0), b0(1), b0(2), b0(3), b0(4), b0(5), b0(6), b0(7), b0(8), b0(9), b0(10), b0(11), b0(12), b0(13), b0(14), b0(15), temp_nand(0), temp_nand(1), temp_nand(2), temp_nand(3), temp_nand(4), temp_nand(5), temp_nand(6), temp_nand(7), temp_nand(8), temp_nand(9), temp_nand(10), temp_nand(11), temp_nand(12), temp_nand(13), temp_nand(14), temp_nand(15));


process (sel0, temp_Add,temp_sub, temp_xor, temp_nand,temp_cout0,temp_cout01)
begin
case (sel0) is
	when "00" => x0 <=temp_add; cout0 <=temp_cout0;
		if temp_add ="0000000000000000" then
			z <= '1';
		else 
			z <='0';
		end if ;
	when "01" => x0 <=temp_sub; cout0 <=temp_cout01;
		if temp_sub ="0000000000000000" then
			z <= '1';
		else
			z <='0';
		end if ;
	when "10" => x0 <=temp_nand; cout0 <='0';
	if temp_nand ="0000000000000000" then
			z <= '1';
		else 
			z <='0';
		end if ;
	when "11" => x0 <=temp_xor; cout0 <='0';
		if temp_xor ="0000000000000000" then
			z <= '1';
		else 
			z <='0';
		end if ;
	end case;
end process;


end aul_16_arc;