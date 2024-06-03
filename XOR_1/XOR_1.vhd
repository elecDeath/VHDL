library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity XOR_1 is
	port(in1, in2 : in std_logic;
			out1 : out std_logic);
end entity;

architecture structure of XOR_1 is 
signal sig1,sig2,sig3,sig4 : std_logic;

begin
	inst1 : NAND_2 port map(A => in1, B => in1, Y => sig1);
	inst2 : NAND_2 port map(A => sig1, B => in2, Y => sig2);
	inst3 : NAND_2 port map(A => in2, B => in2, Y => sig3);
	inst4 : NAND_2 port map(A => in1, B => sig3, Y => sig4);
	inst5 : NAND_2 port map(A => sig2, B => sig4, Y => out1);
end structure;