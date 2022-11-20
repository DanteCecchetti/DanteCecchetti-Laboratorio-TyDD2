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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/14/2022 14:58:31"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Sum4bit_conv IS
    PORT (
	SUMAoRESTA : IN std_logic;
	Load : IN std_logic;
	Transfer : IN std_logic;
	Clear : IN std_logic;
	Bit_0 : IN std_logic;
	Bit_1 : IN std_logic;
	Bit_2 : IN std_logic;
	Bit_3 : IN std_logic;
	Carry : OUT std_logic;
	Overflow : OUT std_logic;
	Zero : OUT std_logic;
	Salida_0 : OUT std_logic;
	Salida_1 : OUT std_logic;
	Salida_2 : OUT std_logic;
	Salida_3 : OUT std_logic;
	Signo : OUT std_logic
	);
END Sum4bit_conv;

-- Design Ports Information
-- Carry	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida_0	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida_1	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida_2	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida_3	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Signo	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMAoRESTA	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Transfer	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bit_2	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bit_0	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bit_1	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bit_3	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sum4bit_conv IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SUMAoRESTA : std_logic;
SIGNAL ww_Load : std_logic;
SIGNAL ww_Transfer : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL ww_Bit_0 : std_logic;
SIGNAL ww_Bit_1 : std_logic;
SIGNAL ww_Bit_2 : std_logic;
SIGNAL ww_Bit_3 : std_logic;
SIGNAL ww_Carry : std_logic;
SIGNAL ww_Overflow : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_Salida_0 : std_logic;
SIGNAL ww_Salida_1 : std_logic;
SIGNAL ww_Salida_2 : std_logic;
SIGNAL ww_Salida_3 : std_logic;
SIGNAL ww_Signo : std_logic;
SIGNAL \DFF_inst7~q\ : std_logic;
SIGNAL \Transfer~input_o\ : std_logic;
SIGNAL \Load~input_o\ : std_logic;
SIGNAL \Carry~output_o\ : std_logic;
SIGNAL \Overflow~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \Salida_0~output_o\ : std_logic;
SIGNAL \Salida_1~output_o\ : std_logic;
SIGNAL \Salida_2~output_o\ : std_logic;
SIGNAL \Salida_3~output_o\ : std_logic;
SIGNAL \Signo~output_o\ : std_logic;
SIGNAL \SUMAoRESTA~input_o\ : std_logic;
SIGNAL \Bit_2~input_o\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_22~combout\ : std_logic;
SIGNAL \DFF_inst9~q\ : std_logic;
SIGNAL \Bit_1~input_o\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_19~combout\ : std_logic;
SIGNAL \DFF_inst6~q\ : std_logic;
SIGNAL \Bit_0~input_o\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_18~combout\ : std_logic;
SIGNAL \DFF_inst5~q\ : std_logic;
SIGNAL \b2v_inst3|f~0_combout\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \DFF_inst4~q\ : std_logic;
SIGNAL \b2v_inst3|cout~0_combout\ : std_logic;
SIGNAL \b2v_inst3|cout~1_combout\ : std_logic;
SIGNAL \b2v_inst16|cout~0_combout\ : std_logic;
SIGNAL \b2v_inst17|cout~0_combout\ : std_logic;
SIGNAL \b2v_inst18|f~combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_25~q\ : std_logic;
SIGNAL \Bit_3~input_o\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_1~combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_24~q\ : std_logic;
SIGNAL \Carry~0_combout\ : std_logic;
SIGNAL \Overflow~0_combout\ : std_logic;
SIGNAL \b2v_inst16|f~combout\ : std_logic;
SIGNAL \DFF_inst8~q\ : std_logic;
SIGNAL \b2v_inst17|f~0_combout\ : std_logic;
SIGNAL \Zero~0_combout\ : std_logic;
SIGNAL \ALT_INV_Zero~0_combout\ : std_logic;

BEGIN

ww_SUMAoRESTA <= SUMAoRESTA;
ww_Load <= Load;
ww_Transfer <= Transfer;
ww_Clear <= Clear;
ww_Bit_0 <= Bit_0;
ww_Bit_1 <= Bit_1;
ww_Bit_2 <= Bit_2;
ww_Bit_3 <= Bit_3;
Carry <= ww_Carry;
Overflow <= ww_Overflow;
Zero <= ww_Zero;
Salida_0 <= ww_Salida_0;
Salida_1 <= ww_Salida_1;
Salida_2 <= ww_Salida_2;
Salida_3 <= ww_Salida_3;
Signo <= ww_Signo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Zero~0_combout\ <= NOT \Zero~0_combout\;

-- Location: FF_X82_Y1_N31
DFF_inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Transfer~input_o\,
	asdata => \b2v_inst16|f~combout\,
	clrn => \Clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst7~q\);

-- Location: IOIBUF_X83_Y0_N1
\Transfer~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Transfer,
	o => \Transfer~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load,
	o => \Load~input_o\);

-- Location: IOOBUF_X83_Y0_N16
\Carry~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Carry~0_combout\,
	devoe => ww_devoe,
	o => \Carry~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Overflow~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Overflow~0_combout\,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\Zero~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Zero~0_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Salida_0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|f~0_combout\,
	devoe => ww_devoe,
	o => \Salida_0~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Salida_1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst16|f~combout\,
	devoe => ww_devoe,
	o => \Salida_1~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\Salida_2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst17|f~0_combout\,
	devoe => ww_devoe,
	o => \Salida_2~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\Salida_3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst18|f~combout\,
	devoe => ww_devoe,
	o => \Salida_3~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\Signo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SYNTHESIZED_WIRE_25~q\,
	devoe => ww_devoe,
	o => \Signo~output_o\);

-- Location: IOIBUF_X67_Y0_N15
\SUMAoRESTA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMAoRESTA,
	o => \SUMAoRESTA~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\Bit_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bit_2,
	o => \Bit_2~input_o\);

-- Location: LCCOMB_X82_Y1_N26
SYNTHESIZED_WIRE_22 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_22~combout\ = \SUMAoRESTA~input_o\ $ (\Bit_2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SUMAoRESTA~input_o\,
	datad => \Bit_2~input_o\,
	combout => \SYNTHESIZED_WIRE_22~combout\);

-- Location: FF_X82_Y1_N27
DFF_inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Load~input_o\,
	d => \SYNTHESIZED_WIRE_22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst9~q\);

-- Location: IOIBUF_X85_Y0_N8
\Bit_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bit_1,
	o => \Bit_1~input_o\);

-- Location: LCCOMB_X82_Y1_N28
SYNTHESIZED_WIRE_19 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_19~combout\ = \SUMAoRESTA~input_o\ $ (\Bit_1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SUMAoRESTA~input_o\,
	datad => \Bit_1~input_o\,
	combout => \SYNTHESIZED_WIRE_19~combout\);

-- Location: FF_X82_Y1_N29
DFF_inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Load~input_o\,
	d => \SYNTHESIZED_WIRE_19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst6~q\);

-- Location: IOIBUF_X56_Y0_N22
\Bit_0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bit_0,
	o => \Bit_0~input_o\);

-- Location: LCCOMB_X82_Y1_N22
SYNTHESIZED_WIRE_18 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_18~combout\ = \SUMAoRESTA~input_o\ $ (\Bit_0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SUMAoRESTA~input_o\,
	datac => \Bit_0~input_o\,
	combout => \SYNTHESIZED_WIRE_18~combout\);

-- Location: FF_X82_Y1_N23
DFF_inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Load~input_o\,
	d => \SYNTHESIZED_WIRE_18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst5~q\);

-- Location: LCCOMB_X82_Y1_N24
\b2v_inst3|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|f~0_combout\ = \SUMAoRESTA~input_o\ $ (\DFF_inst4~q\ $ (\DFF_inst5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SUMAoRESTA~input_o\,
	datac => \DFF_inst4~q\,
	datad => \DFF_inst5~q\,
	combout => \b2v_inst3|f~0_combout\);

-- Location: IOIBUF_X56_Y0_N15
\Clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: FF_X82_Y1_N17
DFF_inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Transfer~input_o\,
	asdata => \b2v_inst3|f~0_combout\,
	clrn => \Clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst4~q\);

-- Location: LCCOMB_X82_Y1_N4
\b2v_inst3|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|cout~0_combout\ = (\DFF_inst5~q\ & \DFF_inst4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst5~q\,
	datad => \DFF_inst4~q\,
	combout => \b2v_inst3|cout~0_combout\);

-- Location: LCCOMB_X82_Y1_N6
\b2v_inst3|cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|cout~1_combout\ = (\SUMAoRESTA~input_o\ & ((\DFF_inst5~q\) # (\DFF_inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SUMAoRESTA~input_o\,
	datac => \DFF_inst5~q\,
	datad => \DFF_inst4~q\,
	combout => \b2v_inst3|cout~1_combout\);

-- Location: LCCOMB_X82_Y1_N0
\b2v_inst16|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst16|cout~0_combout\ = (\DFF_inst7~q\ & ((\DFF_inst6~q\) # ((\b2v_inst3|cout~0_combout\) # (\b2v_inst3|cout~1_combout\)))) # (!\DFF_inst7~q\ & (\DFF_inst6~q\ & ((\b2v_inst3|cout~0_combout\) # (\b2v_inst3|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst7~q\,
	datab => \DFF_inst6~q\,
	datac => \b2v_inst3|cout~0_combout\,
	datad => \b2v_inst3|cout~1_combout\,
	combout => \b2v_inst16|cout~0_combout\);

-- Location: LCCOMB_X82_Y1_N10
\b2v_inst17|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst17|cout~0_combout\ = (\DFF_inst8~q\ & ((\DFF_inst9~q\) # (\b2v_inst16|cout~0_combout\))) # (!\DFF_inst8~q\ & (\DFF_inst9~q\ & \b2v_inst16|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst8~q\,
	datac => \DFF_inst9~q\,
	datad => \b2v_inst16|cout~0_combout\,
	combout => \b2v_inst17|cout~0_combout\);

-- Location: LCCOMB_X82_Y1_N12
\b2v_inst18|f\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst18|f~combout\ = \SYNTHESIZED_WIRE_24~q\ $ (\SYNTHESIZED_WIRE_25~q\ $ (\b2v_inst17|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_24~q\,
	datac => \SYNTHESIZED_WIRE_25~q\,
	datad => \b2v_inst17|cout~0_combout\,
	combout => \b2v_inst18|f~combout\);

-- Location: FF_X82_Y1_N13
SYNTHESIZED_WIRE_25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Transfer~input_o\,
	d => \b2v_inst18|f~combout\,
	clrn => \Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNTHESIZED_WIRE_25~q\);

-- Location: IOIBUF_X94_Y0_N8
\Bit_3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bit_3,
	o => \Bit_3~input_o\);

-- Location: LCCOMB_X82_Y1_N16
SYNTHESIZED_WIRE_1 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_1~combout\ = \SUMAoRESTA~input_o\ $ (\Bit_3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SUMAoRESTA~input_o\,
	datad => \Bit_3~input_o\,
	combout => \SYNTHESIZED_WIRE_1~combout\);

-- Location: FF_X82_Y1_N5
SYNTHESIZED_WIRE_24 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Load~input_o\,
	asdata => \SYNTHESIZED_WIRE_1~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNTHESIZED_WIRE_24~q\);

-- Location: LCCOMB_X82_Y1_N18
\Carry~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Carry~0_combout\ = \SUMAoRESTA~input_o\ $ (((\b2v_inst17|cout~0_combout\ & ((\SYNTHESIZED_WIRE_25~q\) # (\SYNTHESIZED_WIRE_24~q\))) # (!\b2v_inst17|cout~0_combout\ & (\SYNTHESIZED_WIRE_25~q\ & \SYNTHESIZED_WIRE_24~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|cout~0_combout\,
	datab => \SYNTHESIZED_WIRE_25~q\,
	datac => \SYNTHESIZED_WIRE_24~q\,
	datad => \SUMAoRESTA~input_o\,
	combout => \Carry~0_combout\);

-- Location: LCCOMB_X82_Y1_N30
\Overflow~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Overflow~0_combout\ = (\b2v_inst17|cout~0_combout\ & (!\SYNTHESIZED_WIRE_24~q\ & !\SYNTHESIZED_WIRE_25~q\)) # (!\b2v_inst17|cout~0_combout\ & (\SYNTHESIZED_WIRE_24~q\ & \SYNTHESIZED_WIRE_25~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|cout~0_combout\,
	datab => \SYNTHESIZED_WIRE_24~q\,
	datad => \SYNTHESIZED_WIRE_25~q\,
	combout => \Overflow~0_combout\);

-- Location: LCCOMB_X82_Y1_N8
\b2v_inst16|f\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst16|f~combout\ = \DFF_inst7~q\ $ (\DFF_inst6~q\ $ (((\b2v_inst3|cout~0_combout\) # (\b2v_inst3|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst7~q\,
	datab => \b2v_inst3|cout~0_combout\,
	datac => \b2v_inst3|cout~1_combout\,
	datad => \DFF_inst6~q\,
	combout => \b2v_inst16|f~combout\);

-- Location: FF_X82_Y1_N21
DFF_inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Transfer~input_o\,
	asdata => \b2v_inst17|f~0_combout\,
	clrn => \Clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst8~q\);

-- Location: LCCOMB_X82_Y1_N14
\b2v_inst17|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst17|f~0_combout\ = \DFF_inst9~q\ $ (\DFF_inst8~q\ $ (\b2v_inst16|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst9~q\,
	datac => \DFF_inst8~q\,
	datad => \b2v_inst16|cout~0_combout\,
	combout => \b2v_inst17|f~0_combout\);

-- Location: LCCOMB_X82_Y1_N20
\Zero~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Zero~0_combout\ = (\b2v_inst16|f~combout\) # ((\b2v_inst3|f~0_combout\) # ((\b2v_inst17|f~0_combout\) # (\b2v_inst18|f~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst16|f~combout\,
	datab => \b2v_inst3|f~0_combout\,
	datac => \b2v_inst17|f~0_combout\,
	datad => \b2v_inst18|f~combout\,
	combout => \Zero~0_combout\);

ww_Carry <= \Carry~output_o\;

ww_Overflow <= \Overflow~output_o\;

ww_Zero <= \Zero~output_o\;

ww_Salida_0 <= \Salida_0~output_o\;

ww_Salida_1 <= \Salida_1~output_o\;

ww_Salida_2 <= \Salida_2~output_o\;

ww_Salida_3 <= \Salida_3~output_o\;

ww_Signo <= \Signo~output_o\;
END structure;


