library ieee; 
use ieee.std_logic_1164.all; 

entity test_rest is
end test_rest;

architecture behavioral of test_rest is 

component restadorcompleto
port ( A,B,Cin : in std_logic ; 
	Cout,Y: out std_logic);
end component;

signal A :  std_logic:='0';
signal Cout:  std_logic:='0';
signal B :  std_logic:='0';
signal Cin :  std_logic:='0';
signal Y:  std_logic:='0';

begin 

uut:restadorcompleto port map(

A=>A,
B=>B,
Cin=>Cin,
Cout=>Cout,
Y=>Y);

process
begin
	A <= '0' ; B <= '0' ; Cin <= '0' ; wait for 30ns;
	A <= '0' ; B <= '0' ; Cin <= '1' ; wait for 30ns;
	A <= '0' ; B <= '1' ; Cin <= '0' ; wait for 30ns;
	A <= '0' ; B <= '1' ; Cin <= '1' ; wait for 30ns;
	A <= '1' ; B <= '0' ; Cin <= '0' ; wait for 30ns;
	A <= '1' ; B <= '0' ; Cin <= '1' ; wait for 30ns;
	A <= '1' ; B <= '1' ; Cin <= '0' ; wait for 30ns;
	A <= '1' ; B <= '1' ; Cin <= '1' ; wait for 30ns;
end process;

end behavioral; 