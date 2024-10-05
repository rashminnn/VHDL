library ieee;
use ieee.std_logic_1164.all;

entity Rashmin is 

port(

SW: IN std_logic_vector(16 downto 0);
LEDG : OUT std_logic_vector(0 downto 0)

);

End Rashmin;

Architecture Behaviour of Rashmin is 
--signal wire: std_logic_vector(1 downto 0);
begin 

--wire(0) <= SW(0) AND (NOT(SW(2)));
--wire(1) <= SW(1) AND  SW(2);
--LEDG(0) <= WIRE(0) OR wire(1);

--LEDG(0) <= (NOT(SW(2)) AND SW(0)) OR (SW(2) AND SW(1));
process(SW(2))
begin


	if(SW(2) = '1') then
		LEDG(0) <= SW(1);
	else
		LEDG(0) <= SW(0);
	end if;
	end process;


end Behaviour;