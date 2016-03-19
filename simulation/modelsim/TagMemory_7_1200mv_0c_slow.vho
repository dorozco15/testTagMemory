-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
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
-- VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Full Version"

-- DATE "03/19/2016 14:31:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TagMemory IS
    PORT (
	clock_en : IN std_logic;
	clock : IN std_logic;
	reset : IN std_logic;
	tag_in : IN std_logic_vector(6 DOWNTO 0);
	hit : OUT std_logic;
	line_in : IN std_logic_vector(2 DOWNTO 0);
	write_en : IN std_logic;
	read_en : IN std_logic
	);
END TagMemory;

-- Design Ports Information
-- hit	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- line_in[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- line_in[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- line_in[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_en	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_en	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_en	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TagMemory IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_en : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_tag_in : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hit : std_logic;
SIGNAL ww_line_in : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_write_en : std_logic;
SIGNAL ww_read_en : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hit~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \write_en~input_o\ : std_logic;
SIGNAL \read_en~input_o\ : std_logic;
SIGNAL \clock_en~input_o\ : std_logic;
SIGNAL \hit~1_combout\ : std_logic;
SIGNAL \line_in[2]~input_o\ : std_logic;
SIGNAL \tag_in[6]~input_o\ : std_logic;
SIGNAL \memory[5][6]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \line_in[1]~input_o\ : std_logic;
SIGNAL \line_in[0]~input_o\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \memory[5][6]~q\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \memory[7][6]~q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \memory[4][6]~q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \memory[6][6]~q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \memory[2][6]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \memory[2][6]~q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \memory[3][6]~q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \memory[0][6]~q\ : std_logic;
SIGNAL \memory[1][6]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \memory[1][6]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \tag_in[5]~input_o\ : std_logic;
SIGNAL \memory[5][5]~q\ : std_logic;
SIGNAL \memory[7][5]~q\ : std_logic;
SIGNAL \memory[4][5]~q\ : std_logic;
SIGNAL \memory[6][5]~q\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \memory[2][5]~feeder_combout\ : std_logic;
SIGNAL \memory[2][5]~q\ : std_logic;
SIGNAL \memory[3][5]~q\ : std_logic;
SIGNAL \memory[0][5]~q\ : std_logic;
SIGNAL \memory[1][5]~feeder_combout\ : std_logic;
SIGNAL \memory[1][5]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \tag_in[4]~input_o\ : std_logic;
SIGNAL \memory[2][4]~feeder_combout\ : std_logic;
SIGNAL \memory[2][4]~q\ : std_logic;
SIGNAL \memory[3][4]~q\ : std_logic;
SIGNAL \memory[0][4]~q\ : std_logic;
SIGNAL \memory[1][4]~feeder_combout\ : std_logic;
SIGNAL \memory[1][4]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \memory[5][4]~q\ : std_logic;
SIGNAL \memory[7][4]~q\ : std_logic;
SIGNAL \memory[4][4]~q\ : std_logic;
SIGNAL \memory[6][4]~q\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \hit~2_combout\ : std_logic;
SIGNAL \tag_in[3]~input_o\ : std_logic;
SIGNAL \memory[2][3]~feeder_combout\ : std_logic;
SIGNAL \memory[2][3]~q\ : std_logic;
SIGNAL \memory[3][3]~q\ : std_logic;
SIGNAL \memory[0][3]~q\ : std_logic;
SIGNAL \memory[1][3]~feeder_combout\ : std_logic;
SIGNAL \memory[1][3]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \memory[5][3]~feeder_combout\ : std_logic;
SIGNAL \memory[5][3]~q\ : std_logic;
SIGNAL \memory[7][3]~q\ : std_logic;
SIGNAL \memory[4][3]~q\ : std_logic;
SIGNAL \memory[6][3]~q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \tag_in[2]~input_o\ : std_logic;
SIGNAL \memory[2][2]~feeder_combout\ : std_logic;
SIGNAL \memory[2][2]~q\ : std_logic;
SIGNAL \memory[3][2]~q\ : std_logic;
SIGNAL \memory[0][2]~q\ : std_logic;
SIGNAL \memory[1][2]~feeder_combout\ : std_logic;
SIGNAL \memory[1][2]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \memory[5][2]~feeder_combout\ : std_logic;
SIGNAL \memory[5][2]~q\ : std_logic;
SIGNAL \memory[7][2]~q\ : std_logic;
SIGNAL \memory[4][2]~q\ : std_logic;
SIGNAL \memory[6][2]~q\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \tag_in[1]~input_o\ : std_logic;
SIGNAL \memory[2][1]~feeder_combout\ : std_logic;
SIGNAL \memory[2][1]~q\ : std_logic;
SIGNAL \memory[3][1]~q\ : std_logic;
SIGNAL \memory[0][1]~q\ : std_logic;
SIGNAL \memory[1][1]~feeder_combout\ : std_logic;
SIGNAL \memory[1][1]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \memory[5][1]~q\ : std_logic;
SIGNAL \memory[7][1]~q\ : std_logic;
SIGNAL \memory[4][1]~q\ : std_logic;
SIGNAL \memory[6][1]~q\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \tag_in[0]~input_o\ : std_logic;
SIGNAL \memory[2][0]~feeder_combout\ : std_logic;
SIGNAL \memory[2][0]~q\ : std_logic;
SIGNAL \memory[3][0]~q\ : std_logic;
SIGNAL \memory[0][0]~q\ : std_logic;
SIGNAL \memory[1][0]~feeder_combout\ : std_logic;
SIGNAL \memory[1][0]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \memory[5][0]~q\ : std_logic;
SIGNAL \memory[7][0]~q\ : std_logic;
SIGNAL \memory[4][0]~q\ : std_logic;
SIGNAL \memory[6][0]~q\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \hit~0_combout\ : std_logic;
SIGNAL \hit~3_combout\ : std_logic;
SIGNAL \hit~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock_en <= clock_en;
ww_clock <= clock;
ww_reset <= reset;
ww_tag_in <= tag_in;
hit <= ww_hit;
ww_line_in <= line_in;
ww_write_en <= write_en;
ww_read_en <= read_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X25_Y73_N23
\hit~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hit~reg0_q\,
	devoe => ww_devoe,
	o => \hit~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X20_Y73_N8
\write_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_en,
	o => \write_en~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\read_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_en,
	o => \read_en~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\clock_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_en,
	o => \clock_en~input_o\);

-- Location: LCCOMB_X21_Y72_N12
\hit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hit~1_combout\ = (!\write_en~input_o\ & (\read_en~input_o\ & \clock_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datac => \read_en~input_o\,
	datad => \clock_en~input_o\,
	combout => \hit~1_combout\);

-- Location: IOIBUF_X20_Y73_N15
\line_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_line_in(2),
	o => \line_in[2]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\tag_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in(6),
	o => \tag_in[6]~input_o\);

-- Location: LCCOMB_X26_Y72_N6
\memory[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[5][6]~feeder_combout\ = \tag_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[6]~input_o\,
	combout => \memory[5][6]~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y72_N10
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\write_en~input_o\ & (!\read_en~input_o\ & \clock_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datac => \read_en~input_o\,
	datad => \clock_en~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: IOIBUF_X20_Y73_N1
\line_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_line_in(1),
	o => \line_in[1]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\line_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_line_in(0),
	o => \line_in[0]~input_o\);

-- Location: LCCOMB_X21_Y72_N24
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\Decoder0~0_combout\ & (\line_in[2]~input_o\ & (!\line_in[1]~input_o\ & \line_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \line_in[2]~input_o\,
	datac => \line_in[1]~input_o\,
	datad => \line_in[0]~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: FF_X26_Y72_N7
\memory[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[5][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][6]~q\);

-- Location: LCCOMB_X21_Y72_N22
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (\Decoder0~0_combout\ & (\line_in[2]~input_o\ & (\line_in[1]~input_o\ & \line_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \line_in[2]~input_o\,
	datac => \line_in[1]~input_o\,
	datad => \line_in[0]~input_o\,
	combout => \Decoder0~8_combout\);

-- Location: FF_X25_Y72_N23
\memory[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][6]~q\);

-- Location: LCCOMB_X21_Y72_N20
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\Decoder0~0_combout\ & (\line_in[2]~input_o\ & (!\line_in[1]~input_o\ & !\line_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \line_in[2]~input_o\,
	datac => \line_in[1]~input_o\,
	datad => \line_in[0]~input_o\,
	combout => \Decoder0~7_combout\);

-- Location: FF_X27_Y72_N31
\memory[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][6]~q\);

-- Location: LCCOMB_X21_Y72_N6
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\Decoder0~0_combout\ & (\line_in[2]~input_o\ & (\line_in[1]~input_o\ & !\line_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \line_in[2]~input_o\,
	datac => \line_in[1]~input_o\,
	datad => \line_in[0]~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: FF_X27_Y72_N13
\memory[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][6]~q\);

-- Location: LCCOMB_X27_Y72_N30
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\line_in[0]~input_o\ & (\line_in[1]~input_o\)) # (!\line_in[0]~input_o\ & ((\line_in[1]~input_o\ & ((\memory[6][6]~q\))) # (!\line_in[1]~input_o\ & (\memory[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[4][6]~q\,
	datad => \memory[6][6]~q\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X25_Y72_N22
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\line_in[0]~input_o\ & ((\Mux0~2_combout\ & ((\memory[7][6]~q\))) # (!\Mux0~2_combout\ & (\memory[5][6]~q\)))) # (!\line_in[0]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][6]~q\,
	datab => \line_in[0]~input_o\,
	datac => \memory[7][6]~q\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X23_Y72_N12
\memory[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[2][6]~feeder_combout\ = \tag_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[6]~input_o\,
	combout => \memory[2][6]~feeder_combout\);

-- Location: LCCOMB_X23_Y72_N4
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\line_in[2]~input_o\ & (\line_in[1]~input_o\ & (!\line_in[0]~input_o\ & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[2]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \line_in[0]~input_o\,
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: FF_X23_Y72_N13
\memory[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[2][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][6]~q\);

-- Location: LCCOMB_X24_Y72_N10
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!\line_in[2]~input_o\ & (\line_in[1]~input_o\ & (\line_in[0]~input_o\ & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[2]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \line_in[0]~input_o\,
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~4_combout\);

-- Location: FF_X24_Y72_N3
\memory[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][6]~q\);

-- Location: LCCOMB_X24_Y72_N8
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\line_in[2]~input_o\ & (!\line_in[1]~input_o\ & (!\line_in[0]~input_o\ & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[2]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \line_in[0]~input_o\,
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~3_combout\);

-- Location: FF_X24_Y72_N5
\memory[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][6]~q\);

-- Location: LCCOMB_X23_Y72_N30
\memory[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[1][6]~feeder_combout\ = \tag_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[6]~input_o\,
	combout => \memory[1][6]~feeder_combout\);

-- Location: LCCOMB_X23_Y72_N26
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\line_in[2]~input_o\ & (!\line_in[1]~input_o\ & (\line_in[0]~input_o\ & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[2]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \line_in[0]~input_o\,
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~2_combout\);

-- Location: FF_X23_Y72_N31
\memory[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][6]~q\);

-- Location: LCCOMB_X24_Y72_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\line_in[0]~input_o\ & ((\line_in[1]~input_o\) # ((\memory[1][6]~q\)))) # (!\line_in[0]~input_o\ & (!\line_in[1]~input_o\ & (\memory[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[0][6]~q\,
	datad => \memory[1][6]~q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X24_Y72_N2
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\line_in[1]~input_o\ & ((\Mux0~0_combout\ & ((\memory[3][6]~q\))) # (!\Mux0~0_combout\ & (\memory[2][6]~q\)))) # (!\line_in[1]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][6]~q\,
	datab => \line_in[1]~input_o\,
	datac => \memory[3][6]~q\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X25_Y72_N8
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = \tag_in[6]~input_o\ $ (((\line_in[2]~input_o\ & (\Mux0~3_combout\)) # (!\line_in[2]~input_o\ & ((\Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[2]~input_o\,
	datab => \tag_in[6]~input_o\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \Equal0~6_combout\);

-- Location: IOIBUF_X27_Y73_N15
\tag_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in(5),
	o => \tag_in[5]~input_o\);

-- Location: FF_X26_Y72_N25
\memory[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][5]~q\);

-- Location: FF_X25_Y72_N31
\memory[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][5]~q\);

-- Location: FF_X27_Y72_N3
\memory[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][5]~q\);

-- Location: FF_X27_Y72_N9
\memory[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][5]~q\);

-- Location: LCCOMB_X27_Y72_N2
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\line_in[0]~input_o\ & (\line_in[1]~input_o\)) # (!\line_in[0]~input_o\ & ((\line_in[1]~input_o\ & ((\memory[6][5]~q\))) # (!\line_in[1]~input_o\ & (\memory[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[4][5]~q\,
	datad => \memory[6][5]~q\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X25_Y72_N30
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\line_in[0]~input_o\ & ((\Mux1~2_combout\ & ((\memory[7][5]~q\))) # (!\Mux1~2_combout\ & (\memory[5][5]~q\)))) # (!\line_in[0]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \memory[5][5]~q\,
	datac => \memory[7][5]~q\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X23_Y72_N28
\memory[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[2][5]~feeder_combout\ = \tag_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[5]~input_o\,
	combout => \memory[2][5]~feeder_combout\);

-- Location: FF_X23_Y72_N29
\memory[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[2][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][5]~q\);

-- Location: FF_X24_Y72_N15
\memory[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][5]~q\);

-- Location: FF_X24_Y72_N29
\memory[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][5]~q\);

-- Location: LCCOMB_X23_Y72_N14
\memory[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[1][5]~feeder_combout\ = \tag_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[5]~input_o\,
	combout => \memory[1][5]~feeder_combout\);

-- Location: FF_X23_Y72_N15
\memory[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][5]~q\);

-- Location: LCCOMB_X24_Y72_N28
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\line_in[0]~input_o\ & ((\line_in[1]~input_o\) # ((\memory[1][5]~q\)))) # (!\line_in[0]~input_o\ & (!\line_in[1]~input_o\ & (\memory[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[0][5]~q\,
	datad => \memory[1][5]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X24_Y72_N14
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\line_in[1]~input_o\ & ((\Mux1~0_combout\ & ((\memory[3][5]~q\))) # (!\Mux1~0_combout\ & (\memory[2][5]~q\)))) # (!\line_in[1]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[1]~input_o\,
	datab => \memory[2][5]~q\,
	datac => \memory[3][5]~q\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X25_Y72_N4
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = \tag_in[5]~input_o\ $ (((\line_in[2]~input_o\ & (\Mux1~3_combout\)) # (!\line_in[2]~input_o\ & ((\Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[2]~input_o\,
	datab => \tag_in[5]~input_o\,
	datac => \Mux1~3_combout\,
	datad => \Mux1~1_combout\,
	combout => \Equal0~5_combout\);

-- Location: IOIBUF_X23_Y73_N8
\tag_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in(4),
	o => \tag_in[4]~input_o\);

-- Location: LCCOMB_X23_Y72_N24
\memory[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[2][4]~feeder_combout\ = \tag_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[4]~input_o\,
	combout => \memory[2][4]~feeder_combout\);

-- Location: FF_X23_Y72_N25
\memory[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[2][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][4]~q\);

-- Location: FF_X24_Y72_N19
\memory[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][4]~q\);

-- Location: FF_X24_Y72_N13
\memory[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][4]~q\);

-- Location: LCCOMB_X23_Y72_N10
\memory[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[1][4]~feeder_combout\ = \tag_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[4]~input_o\,
	combout => \memory[1][4]~feeder_combout\);

-- Location: FF_X23_Y72_N11
\memory[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][4]~q\);

-- Location: LCCOMB_X24_Y72_N12
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\line_in[0]~input_o\ & ((\line_in[1]~input_o\) # ((\memory[1][4]~q\)))) # (!\line_in[0]~input_o\ & (!\line_in[1]~input_o\ & (\memory[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[0][4]~q\,
	datad => \memory[1][4]~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X24_Y72_N18
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\line_in[1]~input_o\ & ((\Mux2~0_combout\ & ((\memory[3][4]~q\))) # (!\Mux2~0_combout\ & (\memory[2][4]~q\)))) # (!\line_in[1]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[1]~input_o\,
	datab => \memory[2][4]~q\,
	datac => \memory[3][4]~q\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: FF_X26_Y72_N19
\memory[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][4]~q\);

-- Location: FF_X25_Y72_N11
\memory[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][4]~q\);

-- Location: FF_X27_Y72_N11
\memory[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][4]~q\);

-- Location: FF_X27_Y72_N25
\memory[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][4]~q\);

-- Location: LCCOMB_X27_Y72_N10
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\line_in[0]~input_o\ & (\line_in[1]~input_o\)) # (!\line_in[0]~input_o\ & ((\line_in[1]~input_o\ & ((\memory[6][4]~q\))) # (!\line_in[1]~input_o\ & (\memory[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[4][4]~q\,
	datad => \memory[6][4]~q\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X25_Y72_N10
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\line_in[0]~input_o\ & ((\Mux2~2_combout\ & ((\memory[7][4]~q\))) # (!\Mux2~2_combout\ & (\memory[5][4]~q\)))) # (!\line_in[0]~input_o\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \memory[5][4]~q\,
	datac => \memory[7][4]~q\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X25_Y72_N20
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = \tag_in[4]~input_o\ $ (((\line_in[2]~input_o\ & ((\Mux2~3_combout\))) # (!\line_in[2]~input_o\ & (\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in[4]~input_o\,
	datab => \Mux2~1_combout\,
	datac => \line_in[2]~input_o\,
	datad => \Mux2~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X25_Y72_N2
\hit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hit~2_combout\ = (\hit~1_combout\ & (!\Equal0~6_combout\ & (!\Equal0~5_combout\ & !\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hit~1_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \hit~2_combout\);

-- Location: IOIBUF_X27_Y73_N22
\tag_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in(3),
	o => \tag_in[3]~input_o\);

-- Location: LCCOMB_X23_Y72_N8
\memory[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[2][3]~feeder_combout\ = \tag_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[3]~input_o\,
	combout => \memory[2][3]~feeder_combout\);

-- Location: FF_X23_Y72_N9
\memory[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[2][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][3]~q\);

-- Location: FF_X24_Y72_N27
\memory[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][3]~q\);

-- Location: FF_X24_Y72_N1
\memory[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][3]~q\);

-- Location: LCCOMB_X23_Y72_N6
\memory[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[1][3]~feeder_combout\ = \tag_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[3]~input_o\,
	combout => \memory[1][3]~feeder_combout\);

-- Location: FF_X23_Y72_N7
\memory[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][3]~q\);

-- Location: LCCOMB_X24_Y72_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\line_in[0]~input_o\ & ((\line_in[1]~input_o\) # ((\memory[1][3]~q\)))) # (!\line_in[0]~input_o\ & (!\line_in[1]~input_o\ & (\memory[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[0][3]~q\,
	datad => \memory[1][3]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X24_Y72_N26
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\line_in[1]~input_o\ & ((\Mux3~0_combout\ & ((\memory[3][3]~q\))) # (!\Mux3~0_combout\ & (\memory[2][3]~q\)))) # (!\line_in[1]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][3]~q\,
	datab => \line_in[1]~input_o\,
	datac => \memory[3][3]~q\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X26_Y72_N0
\memory[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[5][3]~feeder_combout\ = \tag_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[3]~input_o\,
	combout => \memory[5][3]~feeder_combout\);

-- Location: FF_X26_Y72_N1
\memory[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[5][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][3]~q\);

-- Location: FF_X25_Y72_N25
\memory[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][3]~q\);

-- Location: FF_X27_Y72_N15
\memory[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][3]~q\);

-- Location: FF_X27_Y72_N21
\memory[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][3]~q\);

-- Location: LCCOMB_X27_Y72_N14
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\line_in[0]~input_o\ & (\line_in[1]~input_o\)) # (!\line_in[0]~input_o\ & ((\line_in[1]~input_o\ & ((\memory[6][3]~q\))) # (!\line_in[1]~input_o\ & (\memory[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[4][3]~q\,
	datad => \memory[6][3]~q\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X25_Y72_N24
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\line_in[0]~input_o\ & ((\Mux3~2_combout\ & ((\memory[7][3]~q\))) # (!\Mux3~2_combout\ & (\memory[5][3]~q\)))) # (!\line_in[0]~input_o\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \memory[5][3]~q\,
	datac => \memory[7][3]~q\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X25_Y72_N6
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = \tag_in[3]~input_o\ $ (((\line_in[2]~input_o\ & ((\Mux3~3_combout\))) # (!\line_in[2]~input_o\ & (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[2]~input_o\,
	datab => \tag_in[3]~input_o\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~3_combout\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X25_Y73_N15
\tag_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in(2),
	o => \tag_in[2]~input_o\);

-- Location: LCCOMB_X23_Y72_N16
\memory[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[2][2]~feeder_combout\ = \tag_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[2]~input_o\,
	combout => \memory[2][2]~feeder_combout\);

-- Location: FF_X23_Y72_N17
\memory[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][2]~q\);

-- Location: FF_X24_Y72_N31
\memory[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][2]~q\);

-- Location: FF_X24_Y72_N17
\memory[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][2]~q\);

-- Location: LCCOMB_X23_Y72_N22
\memory[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[1][2]~feeder_combout\ = \tag_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[2]~input_o\,
	combout => \memory[1][2]~feeder_combout\);

-- Location: FF_X23_Y72_N23
\memory[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][2]~q\);

-- Location: LCCOMB_X24_Y72_N16
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\line_in[0]~input_o\ & ((\line_in[1]~input_o\) # ((\memory[1][2]~q\)))) # (!\line_in[0]~input_o\ & (!\line_in[1]~input_o\ & (\memory[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[0][2]~q\,
	datad => \memory[1][2]~q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X24_Y72_N30
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\line_in[1]~input_o\ & ((\Mux4~0_combout\ & ((\memory[3][2]~q\))) # (!\Mux4~0_combout\ & (\memory[2][2]~q\)))) # (!\line_in[1]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][2]~q\,
	datab => \line_in[1]~input_o\,
	datac => \memory[3][2]~q\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X26_Y72_N10
\memory[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[5][2]~feeder_combout\ = \tag_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[2]~input_o\,
	combout => \memory[5][2]~feeder_combout\);

-- Location: FF_X26_Y72_N11
\memory[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[5][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][2]~q\);

-- Location: FF_X25_Y72_N1
\memory[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][2]~q\);

-- Location: FF_X27_Y72_N7
\memory[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][2]~q\);

-- Location: FF_X27_Y72_N17
\memory[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][2]~q\);

-- Location: LCCOMB_X27_Y72_N6
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\line_in[0]~input_o\ & (\line_in[1]~input_o\)) # (!\line_in[0]~input_o\ & ((\line_in[1]~input_o\ & ((\memory[6][2]~q\))) # (!\line_in[1]~input_o\ & (\memory[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[4][2]~q\,
	datad => \memory[6][2]~q\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X25_Y72_N0
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\line_in[0]~input_o\ & ((\Mux4~2_combout\ & ((\memory[7][2]~q\))) # (!\Mux4~2_combout\ & (\memory[5][2]~q\)))) # (!\line_in[0]~input_o\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \memory[5][2]~q\,
	datac => \memory[7][2]~q\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X25_Y72_N14
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = \tag_in[2]~input_o\ $ (((\line_in[2]~input_o\ & ((\Mux4~3_combout\))) # (!\line_in[2]~input_o\ & (\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[2]~input_o\,
	datab => \tag_in[2]~input_o\,
	datac => \Mux4~1_combout\,
	datad => \Mux4~3_combout\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X23_Y73_N1
\tag_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in(1),
	o => \tag_in[1]~input_o\);

-- Location: LCCOMB_X23_Y72_N20
\memory[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[2][1]~feeder_combout\ = \tag_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[1]~input_o\,
	combout => \memory[2][1]~feeder_combout\);

-- Location: FF_X23_Y72_N21
\memory[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][1]~q\);

-- Location: FF_X24_Y72_N7
\memory[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][1]~q\);

-- Location: FF_X24_Y72_N25
\memory[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][1]~q\);

-- Location: LCCOMB_X23_Y72_N18
\memory[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[1][1]~feeder_combout\ = \tag_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[1]~input_o\,
	combout => \memory[1][1]~feeder_combout\);

-- Location: FF_X23_Y72_N19
\memory[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][1]~q\);

-- Location: LCCOMB_X24_Y72_N24
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\line_in[0]~input_o\ & ((\line_in[1]~input_o\) # ((\memory[1][1]~q\)))) # (!\line_in[0]~input_o\ & (!\line_in[1]~input_o\ & (\memory[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[0][1]~q\,
	datad => \memory[1][1]~q\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X24_Y72_N6
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\line_in[1]~input_o\ & ((\Mux5~0_combout\ & ((\memory[3][1]~q\))) # (!\Mux5~0_combout\ & (\memory[2][1]~q\)))) # (!\line_in[1]~input_o\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[1]~input_o\,
	datab => \memory[2][1]~q\,
	datac => \memory[3][1]~q\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: FF_X26_Y72_N9
\memory[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][1]~q\);

-- Location: FF_X25_Y72_N13
\memory[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][1]~q\);

-- Location: FF_X27_Y72_N23
\memory[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][1]~q\);

-- Location: FF_X27_Y72_N29
\memory[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][1]~q\);

-- Location: LCCOMB_X27_Y72_N22
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\line_in[0]~input_o\ & (\line_in[1]~input_o\)) # (!\line_in[0]~input_o\ & ((\line_in[1]~input_o\ & ((\memory[6][1]~q\))) # (!\line_in[1]~input_o\ & (\memory[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[4][1]~q\,
	datad => \memory[6][1]~q\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X25_Y72_N12
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\line_in[0]~input_o\ & ((\Mux5~2_combout\ & ((\memory[7][1]~q\))) # (!\Mux5~2_combout\ & (\memory[5][1]~q\)))) # (!\line_in[0]~input_o\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \memory[5][1]~q\,
	datac => \memory[7][1]~q\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X25_Y72_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = \tag_in[1]~input_o\ $ (((\line_in[2]~input_o\ & ((\Mux5~3_combout\))) # (!\line_in[2]~input_o\ & (\Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in[1]~input_o\,
	datab => \line_in[2]~input_o\,
	datac => \Mux5~1_combout\,
	datad => \Mux5~3_combout\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X27_Y73_N8
\tag_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in(0),
	o => \tag_in[0]~input_o\);

-- Location: LCCOMB_X23_Y72_N0
\memory[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[2][0]~feeder_combout\ = \tag_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[0]~input_o\,
	combout => \memory[2][0]~feeder_combout\);

-- Location: FF_X23_Y72_N1
\memory[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][0]~q\);

-- Location: FF_X24_Y72_N23
\memory[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][0]~q\);

-- Location: FF_X24_Y72_N21
\memory[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][0]~q\);

-- Location: LCCOMB_X23_Y72_N2
\memory[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[1][0]~feeder_combout\ = \tag_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_in[0]~input_o\,
	combout => \memory[1][0]~feeder_combout\);

-- Location: FF_X23_Y72_N3
\memory[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory[1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][0]~q\);

-- Location: LCCOMB_X24_Y72_N20
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\line_in[0]~input_o\ & ((\line_in[1]~input_o\) # ((\memory[1][0]~q\)))) # (!\line_in[0]~input_o\ & (!\line_in[1]~input_o\ & (\memory[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[0][0]~q\,
	datad => \memory[1][0]~q\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X24_Y72_N22
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\line_in[1]~input_o\ & ((\Mux6~0_combout\ & ((\memory[3][0]~q\))) # (!\Mux6~0_combout\ & (\memory[2][0]~q\)))) # (!\line_in[1]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][0]~q\,
	datab => \line_in[1]~input_o\,
	datac => \memory[3][0]~q\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: FF_X26_Y72_N17
\memory[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][0]~q\);

-- Location: FF_X26_Y72_N23
\memory[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][0]~q\);

-- Location: FF_X27_Y72_N27
\memory[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][0]~q\);

-- Location: FF_X27_Y72_N1
\memory[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][0]~q\);

-- Location: LCCOMB_X27_Y72_N26
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\line_in[0]~input_o\ & (\line_in[1]~input_o\)) # (!\line_in[0]~input_o\ & ((\line_in[1]~input_o\ & ((\memory[6][0]~q\))) # (!\line_in[1]~input_o\ & (\memory[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \line_in[1]~input_o\,
	datac => \memory[4][0]~q\,
	datad => \memory[6][0]~q\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X26_Y72_N22
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\line_in[0]~input_o\ & ((\Mux6~2_combout\ & ((\memory[7][0]~q\))) # (!\Mux6~2_combout\ & (\memory[5][0]~q\)))) # (!\line_in[0]~input_o\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[0]~input_o\,
	datab => \memory[5][0]~q\,
	datac => \memory[7][0]~q\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X25_Y72_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = \tag_in[0]~input_o\ $ (((\line_in[2]~input_o\ & ((\Mux6~3_combout\))) # (!\line_in[2]~input_o\ & (\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_in[2]~input_o\,
	datab => \Mux6~1_combout\,
	datac => \tag_in[0]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X25_Y72_N16
\hit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hit~0_combout\ = (!\Equal0~3_combout\ & (!\Equal0~2_combout\ & (!\Equal0~1_combout\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \hit~0_combout\);

-- Location: LCCOMB_X25_Y72_N28
\hit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hit~3_combout\ = (\hit~1_combout\ & (\hit~2_combout\ & ((\hit~0_combout\)))) # (!\hit~1_combout\ & ((\hit~reg0_q\) # ((\hit~2_combout\ & \hit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hit~1_combout\,
	datab => \hit~2_combout\,
	datac => \hit~reg0_q\,
	datad => \hit~0_combout\,
	combout => \hit~3_combout\);

-- Location: FF_X25_Y72_N29
\hit~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \hit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hit~reg0_q\);

ww_hit <= \hit~output_o\;
END structure;


