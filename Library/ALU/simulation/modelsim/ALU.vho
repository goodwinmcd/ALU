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

-- DATE "09/15/2015 18:06:11"

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

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	opCode : IN std_logic_vector(3 DOWNTO 0);
	F : BUFFER std_logic_vector(3 DOWNTO 0);
	cout : BUFFER std_logic
	);
END ALU;

-- Design Ports Information
-- F[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[3]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[0]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[2]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
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
SIGNAL ww_opCode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \opCode[1]~input_o\ : std_logic;
SIGNAL \opCode[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \opCode[0]~input_o\ : std_logic;
SIGNAL \opCode[3]~input_o\ : std_logic;
SIGNAL \MUX_2|y[0]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Arithmetic_Unit_1|full_adder_1|cout~0_combout\ : std_logic;
SIGNAL \MUX_2|y[1]~6_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Logic_Unit_1|Mux1~0_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \mux_1|Mux2~0_combout\ : std_logic;
SIGNAL \MUX_2|y[2]~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \mux_1|Mux1~0_combout\ : std_logic;
SIGNAL \Arithmetic_Unit_1|full_adder_3|cout~0_combout\ : std_logic;
SIGNAL \MUX_2|y[3]~2_combout\ : std_logic;
SIGNAL \Arithmetic_Unit_1|full_adder_4|cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_opCode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_opCode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_opCode[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_opCode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \Arithmetic_Unit_1|full_adder_3|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \mux_1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~4_combout\ : std_logic;
SIGNAL \Logic_Unit_1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Arithmetic_Unit_1|full_adder_1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \mux_1|ALT_INV_Mux2~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_opCode <= opCode;
F <= ww_F;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_opCode[2]~input_o\ <= NOT \opCode[2]~input_o\;
\ALT_INV_opCode[0]~input_o\ <= NOT \opCode[0]~input_o\;
\ALT_INV_opCode[3]~input_o\ <= NOT \opCode[3]~input_o\;
\ALT_INV_opCode[1]~input_o\ <= NOT \opCode[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\Arithmetic_Unit_1|full_adder_3|ALT_INV_cout~0_combout\ <= NOT \Arithmetic_Unit_1|full_adder_3|cout~0_combout\;
\mux_1|ALT_INV_Mux1~0_combout\ <= NOT \mux_1|Mux1~0_combout\;
\ALT_INV_rtl~4_combout\ <= NOT \rtl~4_combout\;
\Logic_Unit_1|ALT_INV_Mux1~0_combout\ <= NOT \Logic_Unit_1|Mux1~0_combout\;
\Arithmetic_Unit_1|full_adder_1|ALT_INV_cout~0_combout\ <= NOT \Arithmetic_Unit_1|full_adder_1|cout~0_combout\;
\mux_1|ALT_INV_Mux2~0_combout\ <= NOT \mux_1|Mux2~0_combout\;

-- Location: IOOBUF_X89_Y20_N62
\F[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_2|y[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_F(0));

-- Location: IOOBUF_X89_Y25_N22
\F[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_2|y[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_F(1));

-- Location: IOOBUF_X89_Y23_N22
\F[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_2|y[2]~1_combout\,
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
	i => \MUX_2|y[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_F(3));

-- Location: IOOBUF_X89_Y25_N39
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arithmetic_Unit_1|full_adder_4|cout~0_combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOIBUF_X89_Y21_N38
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\opCode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(1),
	o => \opCode[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\opCode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(2),
	o => \opCode[2]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\opCode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(0),
	o => \opCode[0]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\opCode[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(3),
	o => \opCode[3]~input_o\);

-- Location: LABCELL_X88_Y21_N42
\MUX_2|y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_2|y[0]~0_combout\ = ( \opCode[0]~input_o\ & ( \opCode[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\A[0]~input_o\) # (!\opCode[1]~input_o\ $ (\opCode[2]~input_o\)))) # (\B[0]~input_o\ & (!\opCode[1]~input_o\ & (!\opCode[2]~input_o\ $ (\A[0]~input_o\)))) ) ) 
-- ) # ( !\opCode[0]~input_o\ & ( \opCode[3]~input_o\ & ( (!\opCode[2]~input_o\ & ((!\B[0]~input_o\ & (\opCode[1]~input_o\ & \A[0]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\) # (\opCode[1]~input_o\))))) # (\opCode[2]~input_o\ & (!\A[0]~input_o\ $ 
-- (((!\B[0]~input_o\ & !\opCode[1]~input_o\))))) ) ) ) # ( \opCode[0]~input_o\ & ( !\opCode[3]~input_o\ & ( !\A[0]~input_o\ $ (((!\B[0]~input_o\ & ((\opCode[2]~input_o\))) # (\B[0]~input_o\ & (\opCode[1]~input_o\)))) ) ) ) # ( !\opCode[0]~input_o\ & ( 
-- !\opCode[3]~input_o\ & ( !\A[0]~input_o\ $ (((!\B[0]~input_o\ & ((!\opCode[2]~input_o\))) # (\B[0]~input_o\ & (!\opCode[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101111100100111001000001101100010111011110001110101010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_opCode[1]~input_o\,
	datac => \ALT_INV_opCode[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_opCode[0]~input_o\,
	dataf => \ALT_INV_opCode[3]~input_o\,
	combout => \MUX_2|y[0]~0_combout\);

-- Location: IOIBUF_X89_Y16_N55
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X88_Y21_N57
\Arithmetic_Unit_1|full_adder_1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arithmetic_Unit_1|full_adder_1|cout~0_combout\ = ( \opCode[0]~input_o\ & ( ((!\B[0]~input_o\ & ((\opCode[2]~input_o\))) # (\B[0]~input_o\ & (\opCode[1]~input_o\))) # (\A[0]~input_o\) ) ) # ( !\opCode[0]~input_o\ & ( (\A[0]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\opCode[2]~input_o\))) # (\B[0]~input_o\ & (\opCode[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011001101111011111100000001001000110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_opCode[1]~input_o\,
	datad => \ALT_INV_opCode[2]~input_o\,
	datae => \ALT_INV_opCode[0]~input_o\,
	combout => \Arithmetic_Unit_1|full_adder_1|cout~0_combout\);

-- Location: LABCELL_X88_Y21_N6
\MUX_2|y[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_2|y[1]~6_combout\ = ( !\opCode[3]~input_o\ & ( !\Arithmetic_Unit_1|full_adder_1|cout~0_combout\ $ (!\A[1]~input_o\ $ (((!\B[1]~input_o\ & (\opCode[2]~input_o\)) # (\B[1]~input_o\ & ((\opCode[1]~input_o\)))))) ) ) # ( \opCode[3]~input_o\ & ( 
-- (!\opCode[2]~input_o\ & (!\opCode[0]~input_o\ $ (((!\opCode[1]~input_o\ & ((!\A[1]~input_o\) # (!\B[1]~input_o\))) # (\opCode[1]~input_o\ & (!\A[1]~input_o\ & !\B[1]~input_o\)))))) # (\opCode[2]~input_o\ & ((!\opCode[1]~input_o\ & (!\opCode[0]~input_o\ $ 
-- (!\A[1]~input_o\ $ (\B[1]~input_o\)))) # (\opCode[1]~input_o\ & ((!\opCode[0]~input_o\ & (!\A[1]~input_o\)) # (\opCode[0]~input_o\ & ((!\B[1]~input_o\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101101010100101000111110110100100111100110000110111100010100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opCode[2]~input_o\,
	datab => \ALT_INV_opCode[1]~input_o\,
	datac => \ALT_INV_opCode[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_opCode[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	datag => \Arithmetic_Unit_1|full_adder_1|ALT_INV_cout~0_combout\,
	combout => \MUX_2|y[1]~6_combout\);

-- Location: IOIBUF_X89_Y21_N55
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X88_Y21_N0
\Logic_Unit_1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Logic_Unit_1|Mux1~0_combout\ = ( \A[2]~input_o\ & ( (!\opCode[1]~input_o\ & (!\opCode[2]~input_o\ $ (!\B[2]~input_o\ $ (\opCode[0]~input_o\)))) # (\opCode[1]~input_o\ & ((!\opCode[2]~input_o\ & ((!\opCode[0]~input_o\))) # (\opCode[2]~input_o\ & 
-- (!\B[2]~input_o\ & \opCode[0]~input_o\)))) ) ) # ( !\A[2]~input_o\ & ( (!\B[2]~input_o\ & (((\opCode[2]~input_o\ & \opCode[1]~input_o\)) # (\opCode[0]~input_o\))) # (\B[2]~input_o\ & (!\opCode[0]~input_o\ $ (((!\opCode[2]~input_o\ & 
-- !\opCode[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111111000000101111111100001101010100101000110101010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opCode[2]~input_o\,
	datab => \ALT_INV_opCode[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_opCode[0]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Logic_Unit_1|Mux1~0_combout\);

-- Location: LABCELL_X88_Y21_N3
\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = ( \A[2]~input_o\ & ( (!\B[2]~input_o\ & (!\opCode[2]~input_o\)) # (\B[2]~input_o\ & ((!\opCode[1]~input_o\))) ) ) # ( !\A[2]~input_o\ & ( (!\B[2]~input_o\ & (\opCode[2]~input_o\)) # (\B[2]~input_o\ & ((\opCode[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001110101010110011001010101011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opCode[2]~input_o\,
	datab => \ALT_INV_opCode[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \rtl~4_combout\);

-- Location: LABCELL_X88_Y21_N51
\mux_1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux_1|Mux2~0_combout\ = ( \B[1]~input_o\ & ( \opCode[1]~input_o\ ) ) # ( !\B[1]~input_o\ & ( \opCode[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opCode[2]~input_o\,
	datab => \ALT_INV_opCode[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \mux_1|Mux2~0_combout\);

-- Location: LABCELL_X88_Y21_N36
\MUX_2|y[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_2|y[2]~1_combout\ = ( \A[1]~input_o\ & ( \opCode[3]~input_o\ & ( \Logic_Unit_1|Mux1~0_combout\ ) ) ) # ( !\A[1]~input_o\ & ( \opCode[3]~input_o\ & ( \Logic_Unit_1|Mux1~0_combout\ ) ) ) # ( \A[1]~input_o\ & ( !\opCode[3]~input_o\ & ( !\rtl~4_combout\ 
-- $ (((!\Arithmetic_Unit_1|full_adder_1|cout~0_combout\ & !\mux_1|Mux2~0_combout\))) ) ) ) # ( !\A[1]~input_o\ & ( !\opCode[3]~input_o\ & ( !\rtl~4_combout\ $ (((!\Arithmetic_Unit_1|full_adder_1|cout~0_combout\) # (!\mux_1|Mux2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100001111001111000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Logic_Unit_1|ALT_INV_Mux1~0_combout\,
	datab => \Arithmetic_Unit_1|full_adder_1|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_rtl~4_combout\,
	datad => \mux_1|ALT_INV_Mux2~0_combout\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_opCode[3]~input_o\,
	combout => \MUX_2|y[2]~1_combout\);

-- Location: IOIBUF_X89_Y20_N44
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X89_Y25_N4
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X88_Y21_N48
\mux_1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux_1|Mux1~0_combout\ = (!\B[2]~input_o\ & (\opCode[2]~input_o\)) # (\B[2]~input_o\ & ((\opCode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opCode[2]~input_o\,
	datab => \ALT_INV_opCode[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	combout => \mux_1|Mux1~0_combout\);

-- Location: LABCELL_X88_Y21_N12
\Arithmetic_Unit_1|full_adder_3|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arithmetic_Unit_1|full_adder_3|cout~0_combout\ = ( \A[1]~input_o\ & ( \A[2]~input_o\ & ( ((\mux_1|Mux1~0_combout\) # (\Arithmetic_Unit_1|full_adder_1|cout~0_combout\)) # (\mux_1|Mux2~0_combout\) ) ) ) # ( !\A[1]~input_o\ & ( \A[2]~input_o\ & ( 
-- ((\mux_1|Mux2~0_combout\ & \Arithmetic_Unit_1|full_adder_1|cout~0_combout\)) # (\mux_1|Mux1~0_combout\) ) ) ) # ( \A[1]~input_o\ & ( !\A[2]~input_o\ & ( (\mux_1|Mux1~0_combout\ & ((\Arithmetic_Unit_1|full_adder_1|cout~0_combout\) # 
-- (\mux_1|Mux2~0_combout\))) ) ) ) # ( !\A[1]~input_o\ & ( !\A[2]~input_o\ & ( (\mux_1|Mux2~0_combout\ & (\Arithmetic_Unit_1|full_adder_1|cout~0_combout\ & \mux_1|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000001110000011100011111000111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|ALT_INV_Mux2~0_combout\,
	datab => \Arithmetic_Unit_1|full_adder_1|ALT_INV_cout~0_combout\,
	datac => \mux_1|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Arithmetic_Unit_1|full_adder_3|cout~0_combout\);

-- Location: LABCELL_X88_Y21_N30
\MUX_2|y[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_2|y[3]~2_combout\ = ( !\opCode[3]~input_o\ & ( !\Arithmetic_Unit_1|full_adder_3|cout~0_combout\ $ (!\A[3]~input_o\ $ (((!\B[3]~input_o\ & (\opCode[2]~input_o\)) # (\B[3]~input_o\ & ((\opCode[1]~input_o\)))))) ) ) # ( \opCode[3]~input_o\ & ( 
-- (!\opCode[2]~input_o\ & (!\opCode[0]~input_o\ $ (((!\opCode[1]~input_o\ & ((!\B[3]~input_o\) # (!\A[3]~input_o\))) # (\opCode[1]~input_o\ & (!\B[3]~input_o\ & !\A[3]~input_o\)))))) # (\opCode[2]~input_o\ & ((!\opCode[1]~input_o\ & (!\opCode[0]~input_o\ $ 
-- (!\B[3]~input_o\ $ (\A[3]~input_o\)))) # (\opCode[1]~input_o\ & ((!\opCode[0]~input_o\ & ((!\A[3]~input_o\))) # (\opCode[0]~input_o\ & (!\B[3]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101101000111100000111110111100010100101110000110110100110100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opCode[2]~input_o\,
	datab => \ALT_INV_opCode[1]~input_o\,
	datac => \ALT_INV_opCode[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_opCode[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	datag => \Arithmetic_Unit_1|full_adder_3|ALT_INV_cout~0_combout\,
	combout => \MUX_2|y[3]~2_combout\);

-- Location: LABCELL_X88_Y21_N18
\Arithmetic_Unit_1|full_adder_4|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arithmetic_Unit_1|full_adder_4|cout~0_combout\ = ( \Arithmetic_Unit_1|full_adder_3|cout~0_combout\ & ( \A[3]~input_o\ ) ) # ( !\Arithmetic_Unit_1|full_adder_3|cout~0_combout\ & ( \A[3]~input_o\ & ( (!\B[3]~input_o\ & (\opCode[2]~input_o\)) # 
-- (\B[3]~input_o\ & ((\opCode[1]~input_o\))) ) ) ) # ( \Arithmetic_Unit_1|full_adder_3|cout~0_combout\ & ( !\A[3]~input_o\ & ( (!\B[3]~input_o\ & (\opCode[2]~input_o\)) # (\B[3]~input_o\ & ((\opCode[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100110101001101010011010100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opCode[2]~input_o\,
	datab => \ALT_INV_opCode[1]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datae => \Arithmetic_Unit_1|full_adder_3|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Arithmetic_Unit_1|full_adder_4|cout~0_combout\);

-- Location: MLABCELL_X47_Y43_N0
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


