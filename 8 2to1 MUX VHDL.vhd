library ieee;
use ieee.std_logic_1164.all;

entity Rashmin is 

port(

SW: IN std_logic_vector(17 downto 0);
LEDG : OUT std_logic_vector(7 downto 0)

);

End Rashmin;

Architecture Behaviour of Rashmin is 
signal SWA: std_logic_vector(7 downto 0);
signal SWB: std_logic_vector(7 downto 0);
begin 
	SWA <= SW(7 downto 0);
	SWB <= SW(15 downto 8);
--wire(0) <= SW(0) AND (NOT(SW(2)));
--wire(1) <= SW(1) AND  SW(2);
--LEDG(0) <= WIRE(0) OR wire(1);

--LEDG(0) <= (NOT(SW(2)) AND SW(0)) OR (SW(2) AND SW(1));
process(SW(17))

begin


	if(SW(17) = '1') then
		LEDG <= SWA;
	else
		LEDG <= SWB;
	end if;
	end process;


end Behaviour;