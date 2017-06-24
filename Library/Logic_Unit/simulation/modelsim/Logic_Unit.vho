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

-- DATE "09/12/2015 22:37:34"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	Logic_Unit IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	opCode : IN std_logic_vector(2 DOWNTO 0);
	F : OUT std_logic_vector(3 DOWNTO 0)
	);
END Logic_Unit;

-- Design Ports Information
-- F[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Logic_Unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_opCode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \opCode[2]~input_o\ : std_logic;
SIGNAL \opCode[1]~input_o\ : std_logic;
SIGNAL \opCode[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_opCode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_opCode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_opCode[1]~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_opCode <= opCode;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_opCode[2]~input_o\ <= NOT \opCode[2]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_opCode[0]~input_o\ <= NOT \opCode[0]~input_o\;
\ALT_INV_opCode[1]~input_o\ <= NOT \opCode[1]~input_o\;

-- Location: IOOBUF_X89_Y35_N96
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

-- Location: IOOBUF_X89_Y35_N79
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

-- Location: IOOBUF_X89_Y37_N22
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

-- Location: IOOBUF_X89_Y38_N56
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

-- Location: IOIBUF_X89_Y37_N4
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\opCode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(2),
	o => \opCode[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\opCode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(1),
	o => \opCode[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\opCode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(0),
	o => \opCode[0]~input_o\);

-- Location: LABCELL_X88_Y37_N33
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \opCode[1]~input_o\ & ( \opCode[0]~input_o\ & ( (!\B[0]~input_o\ & ((!\A[0]~input_o\) # (\opCode[2]~input_o\))) ) ) ) # ( !\opCode[1]~input_o\ & ( \opCode[0]~input_o\ & ( (!\B[0]~input_o\ & ((!\A[0]~input_o\) # 
-- (!\opCode[2]~input_o\))) # (\B[0]~input_o\ & (!\A[0]~input_o\ $ (\opCode[2]~input_o\))) ) ) ) # ( \opCode[1]~input_o\ & ( !\opCode[0]~input_o\ & ( (!\A[0]~input_o\ & ((\opCode[2]~input_o\) # (\B[0]~input_o\))) # (\A[0]~input_o\ & ((!\opCode[2]~input_o\))) 
-- ) ) ) # ( !\opCode[1]~input_o\ & ( !\opCode[0]~input_o\ & ( (!\B[0]~input_o\ & (\A[0]~input_o\ & \opCode[2]~input_o\)) # (\B[0]~input_o\ & (!\A[0]~input_o\ $ (!\opCode[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000010110011111000111110011101001111010011000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_opCode[2]~input_o\,
	datae => \ALT_INV_opCode[1]~input_o\,
	dataf => \ALT_INV_opCode[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X89_Y36_N21
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X88_Y36_N3
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \B[1]~input_o\ & ( \opCode[0]~input_o\ & ( (!\opCode[1]~input_o\ & (!\A[1]~input_o\ $ (\opCode[2]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \opCode[0]~input_o\ & ( (!\A[1]~input_o\) # (!\opCode[1]~input_o\ $ (\opCode[2]~input_o\)) ) ) 
-- ) # ( \B[1]~input_o\ & ( !\opCode[0]~input_o\ & ( (!\A[1]~input_o\ & ((\opCode[2]~input_o\) # (\opCode[1]~input_o\))) # (\A[1]~input_o\ & ((!\opCode[2]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\opCode[0]~input_o\ & ( (!\A[1]~input_o\ & 
-- (\opCode[1]~input_o\ & \opCode[2]~input_o\)) # (\A[1]~input_o\ & (!\opCode[1]~input_o\ $ (!\opCode[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011010010111111010101011111010101011111010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_opCode[1]~input_o\,
	datad => \ALT_INV_opCode[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_opCode[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X89_Y35_N61
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X88_Y37_N9
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \opCode[1]~input_o\ & ( \opCode[0]~input_o\ & ( (!\B[2]~input_o\ & ((!\A[2]~input_o\) # (\opCode[2]~input_o\))) ) ) ) # ( !\opCode[1]~input_o\ & ( \opCode[0]~input_o\ & ( (!\A[2]~input_o\ & ((!\opCode[2]~input_o\) # 
-- (!\B[2]~input_o\))) # (\A[2]~input_o\ & (!\opCode[2]~input_o\ $ (\B[2]~input_o\))) ) ) ) # ( \opCode[1]~input_o\ & ( !\opCode[0]~input_o\ & ( (!\A[2]~input_o\ & ((\B[2]~input_o\) # (\opCode[2]~input_o\))) # (\A[2]~input_o\ & (!\opCode[2]~input_o\)) ) ) ) 
-- # ( !\opCode[1]~input_o\ & ( !\opCode[0]~input_o\ & ( (!\A[2]~input_o\ & (\opCode[2]~input_o\ & \B[2]~input_o\)) # (\A[2]~input_o\ & (!\opCode[2]~input_o\ $ (!\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011010010110101111101011111010101001011010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_opCode[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_opCode[1]~input_o\,
	dataf => \ALT_INV_opCode[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X89_Y36_N38
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X88_Y36_N9
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \opCode[2]~input_o\ & ( \A[3]~input_o\ & ( (!\opCode[0]~input_o\ & (!\B[3]~input_o\ & !\opCode[1]~input_o\)) # (\opCode[0]~input_o\ & (!\B[3]~input_o\ $ (!\opCode[1]~input_o\))) ) ) ) # ( !\opCode[2]~input_o\ & ( \A[3]~input_o\ & ( 
-- !\opCode[0]~input_o\ $ (((!\B[3]~input_o\ & !\opCode[1]~input_o\))) ) ) ) # ( \opCode[2]~input_o\ & ( !\A[3]~input_o\ & ( (!\opCode[0]~input_o\ & ((\opCode[1]~input_o\) # (\B[3]~input_o\))) # (\opCode[0]~input_o\ & (!\B[3]~input_o\)) ) ) ) # ( 
-- !\opCode[2]~input_o\ & ( !\A[3]~input_o\ & ( !\opCode[0]~input_o\ $ (((!\B[3]~input_o\) # (!\opCode[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110011011100110111001101010011010101001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opCode[0]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_opCode[1]~input_o\,
	datae => \ALT_INV_opCode[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X34_Y43_N0
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


