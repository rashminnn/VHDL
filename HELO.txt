library ieee;
use ieee.std_logic_1164.all;

entity Rashmin is 

port(


SW: IN std_logic_vector(17 downto 0);
HEX0 : OUT std_logic_vector (6 downto 0)

);

End Rashmin ;

Architecture Behaviour of Rashmin is 
signal wire: std_logic_vector(2 downto 0);


component bitmux is 
port(

Input: IN std_logic_vector(17 downto 0);
output : OUT std_logic_vector(2 downto 0)

);

End component ;

component decorder is 

port(

InputD: IN std_logic_vector(2 downto 0);
OutputD: OUT std_logic_vector(6 downto 0)

);

End component;

begin 

MUXm:bitmux
port map(

Output => wire,
Input => SW
);

dec:decorder
port map(

InputD => wire,
OutputD =>HEX0

);


end Behaviour;


library ieee;
use ieee.std_logic_1164.all;

entity bitmux is 

port(

input: IN std_logic_vector(17 downto 0);
output : OUT std_logic_vector(2 downto 0)

);

End bitmux ;

Architecture Behaviour of bitmux is 
signal sele: std_logic_vector(2 downto 0);
signal SWA: std_logic_vector(2 downto 0);
signal SWB: std_logic_vector(2 downto 0);
signal SWC: std_logic_vector(2 downto 0);
signal SWD: std_logic_vector(2 downto 0);
signal SWE: std_logic_vector(2 downto 0);
begin 
 sele<= Input(17 downto 15);
 SWA<= Input(2 downto 0);
 SWB<= Input(5 downto 3);
 SWC<= Input(8 downto 6);
 SWD<= Input(11 downto 9);
 SWE<= Input(14 downto 12);

process(sele)
begin
case (sele) is
when "000" => Output <= SWA;
when "001" => Output <= SWB;
when "010" => Output <= SWC;
when "011" => Output <= SWD;
when "100" => Output <= SWE;

when others => Output <= SWE;

end case;
end process;

end Behaviour;








library ieee;
use ieee.std_logic_1164.all;

entity decorder is 

port(

InputD: IN std_logic_vector(2 downto 0);
OutputD: OUT std_logic_vector(6 downto 0)

);

End decorder ;

Architecture Behaviour of decorder is 

	
begin 
process(InputD)
begin
case(InputD) is
when "000" => OutputD <= "0001001";
when "001" => OutputD <= "0000110";
when "010" => OutputD <= "1000111";
when "011" => OutputD <= "1000000";

when others => OutputD <= "1111111";
end case;
end process;


end Behaviour;




