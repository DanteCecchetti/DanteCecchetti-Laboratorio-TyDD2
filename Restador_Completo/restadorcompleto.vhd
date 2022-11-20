library ieee; 
use ieee.std_logic_1164.all; 

entity restadorcompleto is 
port ( A,B,Cin : in std_logic ; 
	Cout,Y: out std_logic); 
end restadorcompleto; 
 
architecture behavioral of restadorcompleto is 
begin 

Y <= ((A xor B) xor Cin);
Cout <= (not A and Cin) or (B and Cin) or (not A and B);

end behavioral; 