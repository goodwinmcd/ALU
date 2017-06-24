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

-- DATE "09/13/2015 09:22:34"

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

ENTITY 	mux2to1 IS
    PORT (
	d0 : IN std_logic_vector(3 DOWNTO 0);
	d1 : IN std_logic_vector(3 DOWNTO 0);
	d2 : IN std_logic_vector(3 DOWNTO 0);
	d3 : IN std_logic_vector(3 DOWNTO 0);
	s : IN std_logic_vector(1 DOWNTO 0);
	F : OUT std_logic_vector(3 DOWNTO 0)
	);
END mux2to1;

-- Design Ports Information
-- F[0]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[0]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[1]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[1]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[1]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[2]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[2]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[3]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[3]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[3]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux2to1 IS
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
SIGNAL ww_d2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \d0[0]~input_o\ : std_logic;
SIGNAL \d3[0]~input_o\ : std_logic;
SIGNAL \d2[0]~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \d1[0]~input_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \d0[1]~input_o\ : std_logic;
SIGNAL \d2[1]~input_o\ : std_logic;
SIGNAL \d1[1]~input_o\ : std_logic;
SIGNAL \d3[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \d3[2]~input_o\ : std_logic;
SIGNAL \d1[2]~input_o\ : std_logic;
SIGNAL \d2[2]~input_o\ : std_logic;
SIGNAL \d0[2]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \d0[3]~input_o\ : std_logic;
SIGNAL \d2[3]~input_o\ : std_logic;
SIGNAL \d3[3]~input_o\ : std_logic;
SIGNAL \d1[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_d3[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d0[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d3[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d0[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d0[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_d3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_d2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_d1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_d0[0]~input_o\ : std_logic;

BEGIN

ww_d0 <= d0;
ww_d1 <= d1;
ww_d2 <= d2;
ww_d3 <= d3;
ww_s <= s;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_d3[3]~input_o\ <= NOT \d3[3]~input_o\;
\ALT_INV_d2[3]~input_o\ <= NOT \d2[3]~input_o\;
\ALT_INV_d1[3]~input_o\ <= NOT \d1[3]~input_o\;
\ALT_INV_d0[3]~input_o\ <= NOT \d0[3]~input_o\;
\ALT_INV_d3[2]~input_o\ <= NOT \d3[2]~input_o\;
\ALT_INV_d2[2]~input_o\ <= NOT \d2[2]~input_o\;
\ALT_INV_d1[2]~input_o\ <= NOT \d1[2]~input_o\;
\ALT_INV_d0[2]~input_o\ <= NOT \d0[2]~input_o\;
\ALT_INV_d3[1]~input_o\ <= NOT \d3[1]~input_o\;
\ALT_INV_d2[1]~input_o\ <= NOT \d2[1]~input_o\;
\ALT_INV_d1[1]~input_o\ <= NOT \d1[1]~input_o\;
\ALT_INV_d0[1]~input_o\ <= NOT \d0[1]~input_o\;
\ALT_INV_s[1]~input_o\ <= NOT \s[1]~input_o\;
\ALT_INV_s[0]~input_o\ <= NOT \s[0]~input_o\;
\ALT_INV_d3[0]~input_o\ <= NOT \d3[0]~input_o\;
\ALT_INV_d2[0]~input_o\ <= NOT \d2[0]~input_o\;
\ALT_INV_d1[0]~input_o\ <= NOT \d1[0]~input_o\;
\ALT_INV_d0[0]~input_o\ <= NOT \d0[0]~input_o\;

-- Location: IOOBUF_X89_Y15_N22
\F[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_F(0));

-- Location: IOOBUF_X89_Y25_N5
\F[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_F(1));

-- Location: IOOBUF_X89_Y15_N56
\F[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_F(2));

-- Location: IOOBUF_X89_Y15_N39
\F[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_F(3));

-- Location: IOIBUF_X89_Y20_N95
\d0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(0),
	o => \d0[0]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\d3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3(0),
	o => \d3[0]~input_o\);

-- Location: IOIBUF_X89_Y16_N21
\d2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2(0),
	o => \d2[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\s[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\d1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(0),
	o => \d1[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\s[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

-- Location: LABCELL_X88_Y20_N0
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \d1[0]~input_o\ & ( \s[0]~input_o\ & ( (!\s[1]~input_o\) # (\d3[0]~input_o\) ) ) ) # ( !\d1[0]~input_o\ & ( \s[0]~input_o\ & ( (\d3[0]~input_o\ & \s[1]~input_o\) ) ) ) # ( \d1[0]~input_o\ & ( !\s[0]~input_o\ & ( (!\s[1]~input_o\ & 
-- (\d0[0]~input_o\)) # (\s[1]~input_o\ & ((\d2[0]~input_o\))) ) ) ) # ( !\d1[0]~input_o\ & ( !\s[0]~input_o\ & ( (!\s[1]~input_o\ & (\d0[0]~input_o\)) # (\s[1]~input_o\ & ((\d2[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d0[0]~input_o\,
	datab => \ALT_INV_d3[0]~input_o\,
	datac => \ALT_INV_d2[0]~input_o\,
	datad => \ALT_INV_s[1]~input_o\,
	datae => \ALT_INV_d1[0]~input_o\,
	dataf => \ALT_INV_s[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X89_Y20_N44
\d0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(1),
	o => \d0[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\d2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2(1),
	o => \d2[1]~input_o\);

-- Location: IOIBUF_X89_Y15_N4
\d1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(1),
	o => \d1[1]~input_o\);

-- Location: IOIBUF_X89_Y16_N55
\d3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3(1),
	o => \d3[1]~input_o\);

-- Location: LABCELL_X88_Y20_N6
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \d1[1]~input_o\ & ( \d3[1]~input_o\ & ( ((!\s[1]~input_o\ & (\d0[1]~input_o\)) # (\s[1]~input_o\ & ((\d2[1]~input_o\)))) # (\s[0]~input_o\) ) ) ) # ( !\d1[1]~input_o\ & ( \d3[1]~input_o\ & ( (!\s[0]~input_o\ & ((!\s[1]~input_o\ & 
-- (\d0[1]~input_o\)) # (\s[1]~input_o\ & ((\d2[1]~input_o\))))) # (\s[0]~input_o\ & (((\s[1]~input_o\)))) ) ) ) # ( \d1[1]~input_o\ & ( !\d3[1]~input_o\ & ( (!\s[0]~input_o\ & ((!\s[1]~input_o\ & (\d0[1]~input_o\)) # (\s[1]~input_o\ & ((\d2[1]~input_o\))))) 
-- # (\s[0]~input_o\ & (((!\s[1]~input_o\)))) ) ) ) # ( !\d1[1]~input_o\ & ( !\d3[1]~input_o\ & ( (!\s[0]~input_o\ & ((!\s[1]~input_o\ & (\d0[1]~input_o\)) # (\s[1]~input_o\ & ((\d2[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d0[1]~input_o\,
	datab => \ALT_INV_d2[1]~input_o\,
	datac => \ALT_INV_s[0]~input_o\,
	datad => \ALT_INV_s[1]~input_o\,
	datae => \ALT_INV_d1[1]~input_o\,
	dataf => \ALT_INV_d3[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X89_Y20_N61
\d3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3(2),
	o => \d3[2]~input_o\);

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

-- Location: IOIBUF_X89_Y21_N55
\d2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2(2),
	o => \d2[2]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\d0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(2),
	o => \d0[2]~input_o\);

-- Location: LABCELL_X88_Y20_N42
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \d2[2]~input_o\ & ( \d0[2]~input_o\ & ( (!\s[0]~input_o\) # ((!\s[1]~input_o\ & ((\d1[2]~input_o\))) # (\s[1]~input_o\ & (\d3[2]~input_o\))) ) ) ) # ( !\d2[2]~input_o\ & ( \d0[2]~input_o\ & ( (!\s[0]~input_o\ & (!\s[1]~input_o\)) # 
-- (\s[0]~input_o\ & ((!\s[1]~input_o\ & ((\d1[2]~input_o\))) # (\s[1]~input_o\ & (\d3[2]~input_o\)))) ) ) ) # ( \d2[2]~input_o\ & ( !\d0[2]~input_o\ & ( (!\s[0]~input_o\ & (\s[1]~input_o\)) # (\s[0]~input_o\ & ((!\s[1]~input_o\ & ((\d1[2]~input_o\))) # 
-- (\s[1]~input_o\ & (\d3[2]~input_o\)))) ) ) ) # ( !\d2[2]~input_o\ & ( !\d0[2]~input_o\ & ( (\s[0]~input_o\ & ((!\s[1]~input_o\ & ((\d1[2]~input_o\))) # (\s[1]~input_o\ & (\d3[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[0]~input_o\,
	datab => \ALT_INV_s[1]~input_o\,
	datac => \ALT_INV_d3[2]~input_o\,
	datad => \ALT_INV_d1[2]~input_o\,
	datae => \ALT_INV_d2[2]~input_o\,
	dataf => \ALT_INV_d0[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X89_Y21_N21
\d0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(3),
	o => \d0[3]~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\d2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2(3),
	o => \d2[3]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\d3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3(3),
	o => \d3[3]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\d1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(3),
	o => \d1[3]~input_o\);

-- Location: LABCELL_X88_Y20_N48
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \d3[3]~input_o\ & ( \d1[3]~input_o\ & ( ((!\s[1]~input_o\ & (\d0[3]~input_o\)) # (\s[1]~input_o\ & ((\d2[3]~input_o\)))) # (\s[0]~input_o\) ) ) ) # ( !\d3[3]~input_o\ & ( \d1[3]~input_o\ & ( (!\s[1]~input_o\ & (((\s[0]~input_o\)) # 
-- (\d0[3]~input_o\))) # (\s[1]~input_o\ & (((!\s[0]~input_o\ & \d2[3]~input_o\)))) ) ) ) # ( \d3[3]~input_o\ & ( !\d1[3]~input_o\ & ( (!\s[1]~input_o\ & (\d0[3]~input_o\ & (!\s[0]~input_o\))) # (\s[1]~input_o\ & (((\d2[3]~input_o\) # (\s[0]~input_o\)))) ) ) 
-- ) # ( !\d3[3]~input_o\ & ( !\d1[3]~input_o\ & ( (!\s[0]~input_o\ & ((!\s[1]~input_o\ & (\d0[3]~input_o\)) # (\s[1]~input_o\ & ((\d2[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d0[3]~input_o\,
	datab => \ALT_INV_s[1]~input_o\,
	datac => \ALT_INV_s[0]~input_o\,
	datad => \ALT_INV_d2[3]~input_o\,
	datae => \ALT_INV_d3[3]~input_o\,
	dataf => \ALT_INV_d1[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X35_Y62_N3
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


