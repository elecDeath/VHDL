-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
   component FullAdder is
     port(a,b,C_in: in std_logic;
         	sum,C_out: out std_logic);
   end component;
begin
   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   dut_instance: FullAdder 
			port map (
					-- order of inputs Cin B A
					C_in => input_vector(2),
					b   => input_vector(1),
					a   => input_vector(0),
                                        -- order of outputs S Cout
					sum => output_vector(1),
					C_out => output_vector(0));

end DutWrap;