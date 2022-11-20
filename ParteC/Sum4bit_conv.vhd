-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sat Nov 12 17:38:26 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Sum4bit_conv IS 
	PORT
	(
		SUMAoRESTA :  IN  STD_LOGIC;
		Load :  IN  STD_LOGIC;
		Transfer :  IN  STD_LOGIC;
		Clear :  IN  STD_LOGIC;
		Bit_0 :  IN  STD_LOGIC;
		Bit_1 :  IN  STD_LOGIC;
		Bit_2 :  IN  STD_LOGIC;
		Bit_3 :  IN  STD_LOGIC;
		Carry :  OUT  STD_LOGIC;
		Overflow :  OUT  STD_LOGIC;
		Zero :  OUT  STD_LOGIC;
		Salida_0 :  OUT  STD_LOGIC;
		Salida_1 :  OUT  STD_LOGIC;
		Salida_2 :  OUT  STD_LOGIC;
		Salida_3 :  OUT  STD_LOGIC;
		Signo :  OUT  STD_LOGIC
	);
END Sum4bit_conv;

ARCHITECTURE bdf_type OF Sum4bit_conv IS 

COMPONENT sumador_completo
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 cin : IN STD_LOGIC;
		 f : OUT STD_LOGIC;
		 cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	DFF_inst6 :  STD_LOGIC;
SIGNAL	DFF_inst7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	DFF_inst9 :  STD_LOGIC;
SIGNAL	DFF_inst8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	DFF_inst5 :  STD_LOGIC;
SIGNAL	DFF_inst4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;


BEGIN 
Salida_0 <= SYNTHESIZED_WIRE_26;
Salida_1 <= SYNTHESIZED_WIRE_28;
Salida_2 <= SYNTHESIZED_WIRE_27;
Salida_3 <= SYNTHESIZED_WIRE_23;
Signo <= SYNTHESIZED_WIRE_25;



Carry <= SUMAoRESTA XOR SYNTHESIZED_WIRE_0;


PROCESS(Load)
BEGIN
IF (RISING_EDGE(Load)) THEN
	SYNTHESIZED_WIRE_24 <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


PROCESS(Transfer,Clear)
BEGIN
IF (Clear = '0') THEN
	SYNTHESIZED_WIRE_25 <= '0';
ELSIF (RISING_EDGE(Transfer)) THEN
	SYNTHESIZED_WIRE_25 <= SYNTHESIZED_WIRE_23;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_18 <= Bit_0 XOR SUMAoRESTA;


SYNTHESIZED_WIRE_19 <= Bit_1 XOR SUMAoRESTA;


SYNTHESIZED_WIRE_22 <= Bit_2 XOR SUMAoRESTA;


SYNTHESIZED_WIRE_1 <= Bit_3 XOR SUMAoRESTA;


b2v_inst16 : sumador_completo
PORT MAP(a => DFF_inst6,
		 b => DFF_inst7,
		 cin => SYNTHESIZED_WIRE_3,
		 f => SYNTHESIZED_WIRE_28,
		 cout => SYNTHESIZED_WIRE_4);


b2v_inst17 : sumador_completo
PORT MAP(a => DFF_inst9,
		 b => DFF_inst8,
		 cin => SYNTHESIZED_WIRE_4,
		 f => SYNTHESIZED_WIRE_27,
		 cout => SYNTHESIZED_WIRE_5);


b2v_inst18 : sumador_completo
PORT MAP(a => SYNTHESIZED_WIRE_24,
		 b => SYNTHESIZED_WIRE_25,
		 cin => SYNTHESIZED_WIRE_5,
		 f => SYNTHESIZED_WIRE_23,
		 cout => SYNTHESIZED_WIRE_0);


SYNTHESIZED_WIRE_10 <= NOT(SYNTHESIZED_WIRE_23);



SYNTHESIZED_WIRE_16 <= SYNTHESIZED_WIRE_7 AND SYNTHESIZED_WIRE_8 AND SYNTHESIZED_WIRE_23;


SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_10 AND SYNTHESIZED_WIRE_24 AND SYNTHESIZED_WIRE_25;


Zero <= NOT(SYNTHESIZED_WIRE_26 OR SYNTHESIZED_WIRE_27 OR SYNTHESIZED_WIRE_28 OR SYNTHESIZED_WIRE_23);


Overflow <= SYNTHESIZED_WIRE_15 OR SYNTHESIZED_WIRE_16;


b2v_inst3 : sumador_completo
PORT MAP(a => DFF_inst5,
		 b => DFF_inst4,
		 cin => SUMAoRESTA,
		 f => SYNTHESIZED_WIRE_26,
		 cout => SYNTHESIZED_WIRE_3);


PROCESS(Transfer,Clear)
BEGIN
IF (Clear = '0') THEN
	DFF_inst4 <= '0';
ELSIF (RISING_EDGE(Transfer)) THEN
	DFF_inst4 <= SYNTHESIZED_WIRE_26;
END IF;
END PROCESS;


PROCESS(Load)
BEGIN
IF (RISING_EDGE(Load)) THEN
	DFF_inst5 <= SYNTHESIZED_WIRE_18;
END IF;
END PROCESS;


PROCESS(Load)
BEGIN
IF (RISING_EDGE(Load)) THEN
	DFF_inst6 <= SYNTHESIZED_WIRE_19;
END IF;
END PROCESS;


PROCESS(Transfer,Clear)
BEGIN
IF (Clear = '0') THEN
	DFF_inst7 <= '0';
ELSIF (RISING_EDGE(Transfer)) THEN
	DFF_inst7 <= SYNTHESIZED_WIRE_28;
END IF;
END PROCESS;


PROCESS(Transfer,Clear)
BEGIN
IF (Clear = '0') THEN
	DFF_inst8 <= '0';
ELSIF (RISING_EDGE(Transfer)) THEN
	DFF_inst8 <= SYNTHESIZED_WIRE_27;
END IF;
END PROCESS;


PROCESS(Load)
BEGIN
IF (RISING_EDGE(Load)) THEN
	DFF_inst9 <= SYNTHESIZED_WIRE_22;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_7 <= NOT(SYNTHESIZED_WIRE_24);



SYNTHESIZED_WIRE_8 <= NOT(SYNTHESIZED_WIRE_25);



END bdf_type;