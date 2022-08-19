library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity Testbench is
end Testbench;

architecture tb of Testbench is

signal Ain, Bin: std_logic_vector(1 downto 0);
signal selin : std_logic_vector(1 downto 0);
signal Sout : std_logic_vector(1 downto 0);
signal Cout :  std_logic; 

signal Zout :  std_logic; 


component ALU is 
	port(
			a0, b0:  IN std_logic_vector (15 downto 0);
			sel0 : IN std_logic_vector(1 downto 0);
			cout0 : OUT std_logic;
			z : OUT std_logic;
			x0:  OUT std_logic_vector (15 downto 0)
);
end component ALU;


begin
-- Connecting test bench signals with ALU_16bit.vhd
dut_instance: ALU
port map (a0 => Ain,  b0=> Bin, sel0 => selin , x0=> Sout, cout0 => Cout, z => Zout);
process-- inputs
begin
Ain <= "0000000000000000";
Bin <= "0000000000000000";
selin <= "00";

wait for 5 ns;
Ain <= "0000000000000010";
Bin <= "0000000000000100";
selin <= "00";

wait for 5 ns;
Ain <= "1000000000000000";
Bin <= "1000000000000000";
selin <= "00";

wait for 5 ns;
Ain <= "1100000000000000";
Bin <= "0100000000000000";
selin <= "00";

wait for 5 ns;
Ain <= "1000000000000001";
Bin <= "1000000000000010";
selin <= "00";

wait for 5 ns;
Ain <= "1000000000000001";
Bin <= "0000000000000010";
selin <= "00";

wait for 5 ns;
Ain <= "0000000000000010";
Bin <= "1000000000000001";
selin <= "00";

wait for 5 ns;
Ain <= "0000000000000100";
Bin <= "0000000000000010";
selin <= "00";

wait for 5 ns;
Ain <= "0000011111010101";
Bin <= "0000011110101010";
selin <= "00";

wait for 5 ns;
Ain <= "0000000000111111";
Bin <= "0000000000111111";
selin <= "00";

wait for 5 ns;


Ain <= "0000000000000000";
Bin <= "0000000000000000";
selin <= "01";

wait for 5 ns;
Ain <= "0000000000000010";
Bin <= "0000000000000100";
selin <= "01";

wait for 5 ns;
Ain <= "1000000000000000";
Bin <= "1000000000000000";
selin <= "01";

wait for 5 ns;
Ain <= "1100000000000000";
Bin <= "0100000000000000";
selin <= "01";

wait for 5 ns;
Ain <= "1000000000000001";
Bin <= "1000000000000010";
selin <= "01";
wait for 5 ns;

Ain <= "1000000000000001";
Bin <= "0000000000000010";
selin <= "01";

wait for 5 ns;
Ain <= "0000000000000010";
Bin <= "1000000000000001";
selin <= "01";
wait for 5 ns;

Ain <= "0000000000000100";
Bin <= "0000000000000010";
selin <= "01";
wait for 5 ns;

Ain <= "0000011111010101";
Bin <= "0000011110101010";
selin <= "01";
wait for 5 ns;

Ain <= "0000000000111111";
Bin <= "0000000000111111";
selin <= "01";
wait for 5 ns;


Ain <= "0000000000000000";
Bin <= "0000000000000000";
selin <= "10";
wait for 5 ns;

Ain <= "0000000000000010";
Bin <= "0000000000000100";
selin <= "10";
wait for 5 ns;

Ain <= "1000000000000000";
Bin <= "1000000000000000";
selin <= "10";

wait for 5 ns;
Ain <= "1100000000000000";
Bin <= "0100000000000000";
selin <= "10";
wait for 5 ns;

Ain <= "1000000000000001";
Bin <= "1000000000000010";
selin <= "10";
wait for 5 ns;

Ain <= "1000000000000001";
Bin <= "0000000000000010";
selin <= "10";
wait for 5 ns;

Ain <= "0000000000000010";
Bin <= "1000000000000001";
selin <= "10";
wait for 5 ns;

Ain <= "0000000000000100";
Bin <= "0000000000000010";
selin <= "10";
wait for 5 ns;

Ain <= "0000011111010101";
Bin <= "0000011110101010";
selin <= "10";
wait for 5 ns;

Ain <= "0000000000111111";
Bin <= "0000000000111111";
selin <= "10";
wait for 5 ns;


Ain <= "0000000000000000";
Bin <= "0000000000000000";
selin <= "11";
wait for 5 ns;

Ain <= "0000000000000010";
Bin <= "0000000000000100";
selin <= "11";
wait for 5 ns;

Ain <= "1000000000000000";
Bin <= "1000000000000000";
selin <= "11";
wait for 5 ns;

Ain <= "1100000000000000";
Bin <= "0100000000000000";
selin <= "11";
wait for 5 ns;

Ain <= "1000000000000001";
Bin <= "1000000000000010";
selin <= "11";
wait for 5 ns;

Ain <= "1000000000000001";
Bin <= "0000000000000010";
selin <= "11";
wait for 5 ns;

Ain <= "0000000000000010";
Bin <= "1000000000000001";
selin <= "11";
wait for 5 ns;

Ain <= "0000000000000100";
Bin <= "0000000000000010";
selin <= "11";
wait for 5 ns;

Ain <= "0000011111010101";
Bin <= "0000011110101010";
selin <= "11";
wait for 5 ns;

Ain <= "0000000000111111";
Bin <= "0000000000111111";
selin <= "11";
wait for 5 ns;


end process;
end tb ;