library ieee;
use ieee.std_logic_1164.all;

entity Rashmin is 

port(

SW: IN std_logic_vector(17 downto 0);
LEDG : OUT std_logic_vector(0 downto 0)

);

End Rashmin;

Architecture Behaviour of Rashmin is 
signal m0,m1,m2 : std_logic;

component two_to_one_mux is 
port(
in1: IN std_logic;
in2: IN std_logic;
sel: IN std_logic;
outp: OUT std_logic
);
end component;

begin 


MUXm0:two_to_one_mux 
port map(
in1=>SW(0), 
in2=>SW(1),
sel=>SW(15) ,
outp=>m0
);

MUXm2 :two_to_one_mux 
port map(
in1=>SW(2), 
in2=>SW(3),
sel=>SW(15),
outp=>m1
);

MUXm1 :two_to_one_mux 
port map(
in1=>m0, 
in2=>m1,
sel=>SW(16),
outp=>m2
);

MUXm :two_to_one_mux 
port map(
in1=>m2, 
in2=>Sw(4),
sel=>SW(17),
outp=>LEDG(0)
);

end Behaviour;




library ieee;
use ieee.std_logic_1164.all;

entity two_to_one_mux is 

port(

in1: IN std_logic;
in2: IN std_logic;
sel: IN std_logic;
outp: OUT std_logic

);

End two_to_one_mux ;

Architecture Behaviour of two_to_one_mux is 

begin 

process(sel)
begin


	if(sel = '1') then
		outp <= in2;
	else
		outp <= in1;
	end if;
	end process;

end Behaviour;