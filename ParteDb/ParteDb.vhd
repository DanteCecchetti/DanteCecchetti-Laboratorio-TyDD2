library ieee;
use ieee.std_logic_1164.all;

entity ParteDb is

	port(
		clk		 : in	std_logic;
		entrada	 : in	std_logic;
		reset	 : in	std_logic;
		salida	 : out	std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of ParteDb is
	type state_type is (s0, s1, s2, s3, s4, s5, s6);

	signal state   : state_type;

begin
	process (clk, reset)
	begin
		if reset = '1' then
			state <= s0;
		elsif (rising_edge(clk)) then
			case state is
				when s0=>
					if entrada = '1' then
						state <= s4;
					else
						state <= s1;
					end if;
				when s1=>
					if entrada = '1' then
						state <= s2;
					else
						state <= s2;
					end if;
				when s2=>
					if entrada = '1' then
						state <= s6;
					else
						state <= s3;
					end if;
				when s3 =>
					if entrada = '1' then
						state <= s0;
					else
						state <= s0;
					end if;
				when s4 =>
					if entrada = '1' then
						state <= s5;
					else
						state <= s5;
					end if;
				when s5 =>
					if entrada = '1' then
						state <= s2;
					else
						state <= s2;
					end if;
				when s6 =>
					if entrada = '1' then
						state <= s0;
					else
						state <= s0;
					end if;
			end case;
		end if;
	end process;


	process (state)
	begin
		case state is
			when s0 =>
				salida <= "0000";
			when s1 =>
				salida <= "0110";
			when s2 =>
				salida <= "1111";
			when s3 =>
				salida <= "1001";
			when s4 =>
				salida <= "1000";
			when s5 =>
				salida <= "1100";
			when s6 =>
				salida <= "1110";
				
		end case;
	end process;

end rtl;
