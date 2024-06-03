
library ieee;
use ieee.std_logic_1164.all;


entity FOUR_BIT_1  is 
   port(A: in std_logic_vector(3 downto 0);B: in std_logic_vector(3 downto 0);C0: in std_logic;Cout: out std_logic;
       	S: out std_logic_vector(3 downto 0));

end entity;

architecture Struct of FOUR_BIT_1 is 

component XOR_1 is 
port (in1,in2:in std_logic;out1:out std_logic);
end component ;
component FullAdder is 
port (a,b,C_in:in std_logic;sum,C_out:out std_logic);
end component ;
signal T0,T1,T2,T3,G0,G1,G2:std_logic;
begin 
X0:XOR_1 port map (in1=>C0,in2=>B(0),out1=>T0);
F0:FullAdder port map(a=>T0,b=>A(0),C_in=>C0,sum=>S(0),C_out=>G0);

X1:XOR_1 port map (in1=>C0,in2=>B(1),out1=>T1);
F1:FullAdder port map(a=>T1,b=>A(1),C_in=>G0,sum=>S(1),C_out=>G1);

X2:XOR_1 port map (in1=>C0,in2=>B(2),out1=>T2);
F2:FullAdder port map(a=>T2,b=>A(2),C_in=>G1,sum=>S(2),C_out=>G2);

X3:XOR_1 port map (in1=>C0,in2=>B(3),out1=>T3);
F3:FullAdder port map(a=>T3,b=>A(3),C_in=>G2,sum=>S(3),C_out=>Cout);

end architecture ;