-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "09/13/2015 08:53:31"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux1to1 IS
    PORT (
	d0 : IN std_logic_vector(3 DOWNTO 0);
	d1 : IN std_logic_vector(3 DOWNTO 0);
	s : IN std_logic;
	y : OUT std_logic_vector(3 DOWNTO 0)
	);
END mux1to1;

-- Design Ports Information
-- y[0]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[0]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[1]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[2]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[3]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[3]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux1to1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic;
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \d0[0]~input_o\ : std_logic;
SIGNAL \d1[0]~input_o\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \d1[1]~input_o\ : std_logic;
SIGNAL \d0[1]~input_o\ : std_logic;
SIGNAL \y~1_combout\ : std_logic;
SIGNAL \d0[2]~input_o\ : std_logic;
SIGNAL \d1[2]~input_o\ : std_logic;
SIGNAL \y~2_combout\ : std_logic;
SIGNAL \d1[3]~input_o\ : std_logic;
SIGNAL \d0[3]~input_o\ : std_logic;
SIGNAL \y~3_combout\ : std_logic;
SIGNAL \ALT_INV_d0[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d0[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d0[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d0[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_s~input_o\ : std_logic;
SIGNAL \ALT_INV_d1[0]~input_o\ : std_logic;

BEGIN

ww_d0 <= d0;
ww_d1 <= d1;
ww_s <= s;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_d0[3]~input_o\ <= NOT \d0[3]~input_o\;
\ALT_INV_d1[3]~input_o\ <= NOT \d1[3]~input_o\;
\ALT_INV_d0[2]~input_o\ <= NOT \d0[2]~input_o\;
\ALT_INV_d1[2]~input_o\ <= NOT \d1[2]~input_o\;
\ALT_INV_d0[1]~input_o\ <= NOT \d0[1]~input_o\;
\ALT_INV_d1[1]~input_o\ <= NOT \d1[1]~input_o\;
\ALT_INV_d0[0]~input_o\ <= NOT \d0[0]~input_o\;
\ALT_INV_s~input_o\ <= NOT \s~input_o\;
\ALT_INV_d1[0]~input_o\ <= NOT \d1[0]~input_o\;

-- Location: IOOBUF_X89_Y20_N96
\y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~0_combout\,
	devoe => ww_devoe,
	o => ww_y(0));

-- Location: IOOBUF_X89_Y25_N56
\y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~1_combout\,
	devoe => ww_devoe,
	o => ww_y(1));

-- Location: IOOBUF_X89_Y25_N22
\y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~2_combout\,
	devoe => ww_devoe,
	o => ww_y(2));

-- Location: IOOBUF_X89_Y25_N39
\y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~3_combout\,
	devoe => ww_devoe,
	o => ww_y(3));

-- Location: IOIBUF_X89_Y25_N4
\s~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\d0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(0),
	o => \d0[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\d1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(0),
	o => \d1[0]~input_o\);

-- Location: LABCELL_X88_Y21_N30
\y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~0_combout\ = ( \d1[0]~input_o\ & ( (\d0[0]~input_o\) # (\s~input_o\) ) ) # ( !\d1[0]~input_o\ & ( (!\s~input_o\ & \d0[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s~input_o\,
	datac => \ALT_INV_d0[0]~input_o\,
	datae => \ALT_INV_d1[0]~input_o\,
	combout => \y~0_combout\);

-- Location: IOIBUF_X89_Y23_N4
\d1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(1),
	o => \d1[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\d0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(1),
	o => \d0[1]~input_o\);

-- Location: LABCELL_X88_Y23_N0
\y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~1_combout\ = ( \d0[1]~input_o\ & ( \s~input_o\ & ( \d1[1]~input_o\ ) ) ) # ( !\d0[1]~input_o\ & ( \s~input_o\ & ( \d1[1]~input_o\ ) ) ) # ( \d0[1]~input_o\ & ( !\s~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d1[1]~input_o\,
	datae => \ALT_INV_d0[1]~input_o\,
	dataf => \ALT_INV_s~input_o\,
	combout => \y~1_combout\);

-- Location: IOIBUF_X89_Y23_N21
\d0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(2),
	o => \d0[2]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\d1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(2),
	o => \d1[2]~input_o\);

-- Location: LABCELL_X88_Y23_N39
\y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~2_combout\ = ( \s~input_o\ & ( \d1[2]~input_o\ ) ) # ( !\s~input_o\ & ( \d0[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d0[2]~input_o\,
	datac => \ALT_INV_d1[2]~input_o\,
	dataf => \ALT_INV_s~input_o\,
	combout => \y~2_combout\);

-- Location: IOIBUF_X89_Y21_N38
\d1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(3),
	o => \d1[3]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\d0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(3),
	o => \d0[3]~input_o\);

-- Location: LABCELL_X88_Y21_N39
\y~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~3_combout\ = ( \d0[3]~input_o\ & ( (!\s~input_o\) # (\d1[3]~input_o\) ) ) # ( !\d0[3]~input_o\ & ( (\s~input_o\ & \d1[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s~input_o\,
	datac => \ALT_INV_d1[3]~input_o\,
	datae => \ALT_INV_d0[3]~input_o\,
	combout => \y~3_combout\);

-- Location: LABCELL_X42_Y14_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


