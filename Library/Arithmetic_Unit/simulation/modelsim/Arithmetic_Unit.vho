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

-- DATE "09/12/2015 12:16:44"

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

ENTITY 	Arithmetic_Unit IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	cin : IN std_logic;
	F : OUT std_logic_vector(3 DOWNTO 0);
	cout : OUT std_logic
	);
END Arithmetic_Unit;

-- Design Ports Information
-- F[0]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Arithmetic_Unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \full_adder_1|S~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \full_adder_2|S~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \full_adder_2|cout~combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \full_adder_3|S~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \full_adder_4|S~0_combout\ : std_logic;
SIGNAL \full_adder_4|cout~combout\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \full_adder_2|ALT_INV_cout~combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_cin <= cin;
F <= ww_F;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\full_adder_2|ALT_INV_cout~combout\ <= NOT \full_adder_2|cout~combout\;

-- Location: IOOBUF_X89_Y25_N22
\F[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \full_adder_1|S~0_combout\,
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
	i => \full_adder_2|S~0_combout\,
	devoe => ww_devoe,
	o => ww_F(1));

-- Location: IOOBUF_X89_Y21_N22
\F[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \full_adder_3|S~0_combout\,
	devoe => ww_devoe,
	o => ww_F(2));

-- Location: IOOBUF_X89_Y25_N56
\F[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \full_adder_4|S~0_combout\,
	devoe => ww_devoe,
	o => ww_F(3));

-- Location: IOOBUF_X89_Y21_N5
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \full_adder_4|cout~combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOIBUF_X89_Y21_N55
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LABCELL_X88_Y23_N0
\full_adder_1|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder_1|S~0_combout\ = ( \b[0]~input_o\ & ( \cin~input_o\ & ( \a[0]~input_o\ ) ) ) # ( !\b[0]~input_o\ & ( \cin~input_o\ & ( !\a[0]~input_o\ ) ) ) # ( \b[0]~input_o\ & ( !\cin~input_o\ & ( !\a[0]~input_o\ ) ) ) # ( !\b[0]~input_o\ & ( !\cin~input_o\ 
-- & ( \a[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \full_adder_1|S~0_combout\);

-- Location: IOIBUF_X89_Y23_N38
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X88_Y23_N39
\full_adder_2|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder_2|S~0_combout\ = ( \b[0]~input_o\ & ( \cin~input_o\ & ( !\a[1]~input_o\ $ (\b[1]~input_o\) ) ) ) # ( !\b[0]~input_o\ & ( \cin~input_o\ & ( !\a[0]~input_o\ $ (!\a[1]~input_o\ $ (\b[1]~input_o\)) ) ) ) # ( \b[0]~input_o\ & ( !\cin~input_o\ & ( 
-- !\a[0]~input_o\ $ (!\a[1]~input_o\ $ (\b[1]~input_o\)) ) ) ) # ( !\b[0]~input_o\ & ( !\cin~input_o\ & ( !\a[1]~input_o\ $ (!\b[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000010110101010010101011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \full_adder_2|S~0_combout\);

-- Location: IOIBUF_X89_Y20_N95
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LABCELL_X88_Y23_N42
\full_adder_2|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder_2|cout~combout\ = ( \b[0]~input_o\ & ( \cin~input_o\ & ( (\a[1]~input_o\) # (\b[1]~input_o\) ) ) ) # ( !\b[0]~input_o\ & ( \cin~input_o\ & ( (!\b[1]~input_o\ & (\a[1]~input_o\ & \a[0]~input_o\)) # (\b[1]~input_o\ & ((\a[0]~input_o\) # 
-- (\a[1]~input_o\))) ) ) ) # ( \b[0]~input_o\ & ( !\cin~input_o\ & ( (!\b[1]~input_o\ & (\a[1]~input_o\ & \a[0]~input_o\)) # (\b[1]~input_o\ & ((\a[0]~input_o\) # (\a[1]~input_o\))) ) ) ) # ( !\b[0]~input_o\ & ( !\cin~input_o\ & ( (\b[1]~input_o\ & 
-- \a[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101110001011100010111000101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \full_adder_2|cout~combout\);

-- Location: IOIBUF_X89_Y23_N21
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LABCELL_X88_Y23_N51
\full_adder_3|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder_3|S~0_combout\ = ( \b[2]~input_o\ & ( !\a[2]~input_o\ $ (\full_adder_2|cout~combout\) ) ) # ( !\b[2]~input_o\ & ( !\a[2]~input_o\ $ (!\full_adder_2|cout~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datac => \full_adder_2|ALT_INV_cout~combout\,
	datae => \ALT_INV_b[2]~input_o\,
	combout => \full_adder_3|S~0_combout\);

-- Location: IOIBUF_X89_Y23_N55
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X88_Y23_N54
\full_adder_4|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder_4|S~0_combout\ = ( \b[3]~input_o\ & ( !\a[3]~input_o\ $ (((!\full_adder_2|cout~combout\ & (\a[2]~input_o\ & \b[2]~input_o\)) # (\full_adder_2|cout~combout\ & ((\b[2]~input_o\) # (\a[2]~input_o\))))) ) ) # ( !\b[3]~input_o\ & ( !\a[3]~input_o\ 
-- $ (((!\full_adder_2|cout~combout\ & ((!\a[2]~input_o\) # (!\b[2]~input_o\))) # (\full_adder_2|cout~combout\ & (!\a[2]~input_o\ & !\b[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010101010011001010101010110011010101010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \full_adder_2|ALT_INV_cout~combout\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	combout => \full_adder_4|S~0_combout\);

-- Location: LABCELL_X88_Y23_N33
\full_adder_4|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder_4|cout~combout\ = ( \b[3]~input_o\ & ( ((!\a[2]~input_o\ & (\b[2]~input_o\ & \full_adder_2|cout~combout\)) # (\a[2]~input_o\ & ((\full_adder_2|cout~combout\) # (\b[2]~input_o\)))) # (\a[3]~input_o\) ) ) # ( !\b[3]~input_o\ & ( (\a[3]~input_o\ 
-- & ((!\a[2]~input_o\ & (\b[2]~input_o\ & \full_adder_2|cout~combout\)) # (\a[2]~input_o\ & ((\full_adder_2|cout~combout\) # (\b[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_b[2]~input_o\,
	datac => \full_adder_2|ALT_INV_cout~combout\,
	datad => \ALT_INV_a[3]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	combout => \full_adder_4|cout~combout\);

-- Location: LABCELL_X13_Y72_N3
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


