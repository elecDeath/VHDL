-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component FOUR_BIT_1  is 
   port(A: in std_logic_vector(3 downto 0);B: in std_logic_vector(3 downto 0);C0: in std_logic;Cout: out std_logic;
       	S: out std_logic_vector(3 downto 0));

end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   dut_instance: FOUR_BIT_1 port map (C0 => input_vector(0), B(0) => input_vector(1),B(1) => input_vector(2),B(2) => input_vector(3),B(3) => input_vector(4),A(0) => input_vector(5),A(1) => input_vector(6),A(2) => input_vector(7),A(3) => input_vector(8),
											S(0) => output_vector(0), S(1) => output_vector(1), S(2) => output_vector(2), S(3) => output_vector(3), Cout => output_vector(4));

end DutWrap;

