library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity combinacional is
	Port (sw1 : in STD_LOGIC;
			sw2 : in STD_LOGIC;
			led : out STD_LOGIC);
	end combinacional;

	architecture behavioral of combinacional is
		begin
		led <= not(sw1 or sw2);
		end behavioral;
		