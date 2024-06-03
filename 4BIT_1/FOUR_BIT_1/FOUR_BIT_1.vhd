library ieee;
use ieee.std_logic_1164.all;


entity FOUR_BIT_1  is 
port (A0,A1,A2,A3,B0,B1,B2,B3,C0:in std_logic; Cout,S0,S1,S2,S3:out std_logic);
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
X0:XOR_1 port map (in1=>C0,in2=>B0,out1=>T0);
F0:FullAdder port map(a=>T0,b=>A0,C_in=>C0,sum=>S0,C_out=>G0);

X1:XOR_1 port map (in1=>C0,in2=>B1,out1=>T1);
F1:FullAdder port map(a=>T1,b=>A1,C_in=>G0,sum=>S1,C_out=>G1);

X2:XOR_1 port map (in1=>C0,in2=>B2,out1=>T2);
F2:FullAdder port map(a=>T2,b=>A2,C_in=>G1,sum=>S2,C_out=>G2);

X3:XOR_1 port map (in1=>C0,in2=>B3,out1=>T3);
F3:FullAdder port map(a=>T3,b=>A3,C_in=>G2,sum=>S3,C_out=>Cout);

end architecture ;