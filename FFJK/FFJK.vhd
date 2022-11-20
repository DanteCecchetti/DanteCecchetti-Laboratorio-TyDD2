library ieee; 
use ieee.std_logic_1164.all; 

entity FFJK is 
port ( J,K,CLOCK : in std_logic ; 
		 Q_O       : out std_logic); 
end FFJK; 
 
architecture behavioral of FFJK is 
signal Q :std_logic ;
begin 
FFJK:
process(CLOCK)
begin
if rising_edge (CLOCK) then 
Q <= (j and not Q)or(not K and Q) ; 
end if; 

end process FFJK ; 

Q_O <= Q;

end behavioral; 