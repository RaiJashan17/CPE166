-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "04/11/2024 20:11:02"

-- 
-- Device: Altera 10M02DCU324A6G Package UFBGA324
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_J7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_J8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_H3,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_H8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	stopwatch IS
    PORT (
	start : IN std_logic;
	stop : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	y0 : BUFFER std_logic_vector(3 DOWNTO 0);
	y1 : BUFFER std_logic_vector(3 DOWNTO 0);
	y2 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END stopwatch;

-- Design Ports Information
-- stop	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[3]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[1]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[3]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF stopwatch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_y0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \g1|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \y0[0]~output_o\ : std_logic;
SIGNAL \y0[1]~output_o\ : std_logic;
SIGNAL \y0[2]~output_o\ : std_logic;
SIGNAL \y0[3]~output_o\ : std_logic;
SIGNAL \y1[0]~output_o\ : std_logic;
SIGNAL \y1[1]~output_o\ : std_logic;
SIGNAL \y1[2]~output_o\ : std_logic;
SIGNAL \y1[3]~output_o\ : std_logic;
SIGNAL \y2[0]~output_o\ : std_logic;
SIGNAL \y2[1]~output_o\ : std_logic;
SIGNAL \y2[2]~output_o\ : std_logic;
SIGNAL \y2[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \g1|cnt[0]~0_combout\ : std_logic;
SIGNAL \g1|clkout~0_combout\ : std_logic;
SIGNAL \g1|clkout~1_combout\ : std_logic;
SIGNAL \g1|clkout~q\ : std_logic;
SIGNAL \g1|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \g3|n0[0]~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \g2|cs[0]~0_combout\ : std_logic;
SIGNAL \g3|n0~1_combout\ : std_logic;
SIGNAL \g3|n0~2_combout\ : std_logic;
SIGNAL \g3|n0~0_combout\ : std_logic;
SIGNAL \g3|Equal2~0_combout\ : std_logic;
SIGNAL \g3|n1[1]~8_combout\ : std_logic;
SIGNAL \g3|n1[2]~5_combout\ : std_logic;
SIGNAL \g3|n2[0]~6_combout\ : std_logic;
SIGNAL \g3|n2[0]~2_combout\ : std_logic;
SIGNAL \g3|n2~3_combout\ : std_logic;
SIGNAL \g3|n2[2]~5_combout\ : std_logic;
SIGNAL \g3|Add0~0_combout\ : std_logic;
SIGNAL \g3|n2~4_combout\ : std_logic;
SIGNAL \g3|process_0~0_combout\ : std_logic;
SIGNAL \g3|process_0~1_combout\ : std_logic;
SIGNAL \g3|n1[2]~6_combout\ : std_logic;
SIGNAL \g3|Add1~0_combout\ : std_logic;
SIGNAL \g3|n1[3]~7_combout\ : std_logic;
SIGNAL \g3|Equal1~0_combout\ : std_logic;
SIGNAL \g3|n1[0]~4_combout\ : std_logic;
SIGNAL \g3|n0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g3|n1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g3|n2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g1|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_start <= start;
ww_stop <= stop;
ww_clk <= clk;
ww_reset <= reset;
y0 <= ww_y0;
y1 <= ww_y1;
y2 <= ww_y2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\g1|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \g1|clkout~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y9_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X14_Y0_N16
\y0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g3|n0\(0),
	devoe => ww_devoe,
	o => \y0[0]~output_o\);

-- Location: IOOBUF_X18_Y2_N16
\y0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g3|n0\(1),
	devoe => ww_devoe,
	o => \y0[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\y0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g3|n0\(2),
	devoe => ww_devoe,
	o => \y0[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\y0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g3|n0\(3),
	devoe => ww_devoe,
	o => \y0[3]~output_o\);

-- Location: IOOBUF_X18_Y4_N9
\y1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g3|n1\(0),
	devoe => ww_devoe,
	o => \y1[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\y1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g3|n1\(1),
	devoe => ww_devoe,
	o => \y1[1]~output_o\);

-- Location: IOOBUF_X18_Y3_N23
\y1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g3|n1\(2),
	devoe => ww_devoe,
	o => \y1[2]~output_o\);

-- Location: IOOBUF_X18_Y3_N16
\y1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g3|n1\(3),
	devoe => ww_devoe,
	o => \y1[3]~output_o\);

-- Location: IOOBUF_X18_Y3_N9
\y2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g3|n2\(0),
	devoe => ww_devoe,
	o => \y2[0]~output_o\);

-- Location: IOOBUF_X18_Y3_N2
\y2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g3|n2\(1),
	devoe => ww_devoe,
	o => \y2[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N30
\y2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g3|n2\(2),
	devoe => ww_devoe,
	o => \y2[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\y2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g3|n2\(3),
	devoe => ww_devoe,
	o => \y2[3]~output_o\);

-- Location: IOIBUF_X0_Y4_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X17_Y7_N21
\g1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \g1|clkout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|cnt\(1));

-- Location: LCCOMB_X17_Y7_N18
\g1|cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g1|cnt[0]~0_combout\ = !\g1|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g1|cnt\(0),
	combout => \g1|cnt[0]~0_combout\);

-- Location: FF_X17_Y7_N19
\g1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \g1|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|cnt\(0));

-- Location: LCCOMB_X17_Y7_N20
\g1|clkout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g1|clkout~0_combout\ = \g1|cnt\(1) $ (\g1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g1|cnt\(1),
	datad => \g1|cnt\(0),
	combout => \g1|clkout~0_combout\);

-- Location: LCCOMB_X17_Y7_N14
\g1|clkout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g1|clkout~1_combout\ = !\g1|clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \g1|clkout~0_combout\,
	combout => \g1|clkout~1_combout\);

-- Location: FF_X17_Y7_N15
\g1|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \g1|clkout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|clkout~q\);

-- Location: CLKCTRL_G5
\g1|clkout~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \g1|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \g1|clkout~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y3_N6
\g3|n0[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n0[0]~3_combout\ = !\g3|n0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g3|n0\(0),
	combout => \g3|n0[0]~3_combout\);

-- Location: IOIBUF_X0_Y4_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G1
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: IOIBUF_X18_Y4_N15
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X15_Y3_N20
\g2|cs[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g2|cs[0]~0_combout\ = (!\reset~input_o\ & \start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \start~input_o\,
	combout => \g2|cs[0]~0_combout\);

-- Location: FF_X15_Y3_N29
\g3|n0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clkout~clkctrl_outclk\,
	asdata => \g3|n0[0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \g2|cs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g3|n0\(0));

-- Location: LCCOMB_X15_Y3_N4
\g3|n0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n0~1_combout\ = \g3|n0\(2) $ (((\g3|n0\(0) & \g3|n0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g3|n0\(0),
	datac => \g3|n0\(2),
	datad => \g3|n0\(1),
	combout => \g3|n0~1_combout\);

-- Location: FF_X15_Y3_N5
\g3|n0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clkout~clkctrl_outclk\,
	d => \g3|n0~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \g2|cs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g3|n0\(2));

-- Location: LCCOMB_X15_Y3_N2
\g3|n0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n0~2_combout\ = (\g3|n0\(2) & (\g3|n0\(3) $ (((\g3|n0\(0) & \g3|n0\(1)))))) # (!\g3|n0\(2) & (\g3|n0\(3) & ((\g3|n0\(1)) # (!\g3|n0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|n0\(2),
	datab => \g3|n0\(0),
	datac => \g3|n0\(3),
	datad => \g3|n0\(1),
	combout => \g3|n0~2_combout\);

-- Location: FF_X15_Y3_N3
\g3|n0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clkout~clkctrl_outclk\,
	d => \g3|n0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \g2|cs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g3|n0\(3));

-- Location: LCCOMB_X15_Y3_N10
\g3|n0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n0~0_combout\ = (\g3|n0\(0) & (!\g3|n0\(1) & ((\g3|n0\(2)) # (!\g3|n0\(3))))) # (!\g3|n0\(0) & (((\g3|n0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|n0\(2),
	datab => \g3|n0\(0),
	datac => \g3|n0\(1),
	datad => \g3|n0\(3),
	combout => \g3|n0~0_combout\);

-- Location: FF_X15_Y3_N11
\g3|n0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clkout~clkctrl_outclk\,
	d => \g3|n0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \g2|cs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g3|n0\(1));

-- Location: LCCOMB_X15_Y3_N22
\g3|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|Equal2~0_combout\ = (!\g3|n0\(1) & (\g3|n0\(3) & (!\g3|n0\(2) & \g3|n0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|n0\(1),
	datab => \g3|n0\(3),
	datac => \g3|n0\(2),
	datad => \g3|n0\(0),
	combout => \g3|Equal2~0_combout\);

-- Location: LCCOMB_X15_Y3_N14
\g3|n1[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n1[1]~8_combout\ = (\g3|Equal2~0_combout\ & (!\g3|Equal1~0_combout\ & (\g3|n1\(0) $ (\g3|n1\(1))))) # (!\g3|Equal2~0_combout\ & (((\g3|n1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|n1\(0),
	datab => \g3|Equal2~0_combout\,
	datac => \g3|n1\(1),
	datad => \g3|Equal1~0_combout\,
	combout => \g3|n1[1]~8_combout\);

-- Location: FF_X15_Y3_N15
\g3|n1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clkout~clkctrl_outclk\,
	d => \g3|n1[1]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \g2|cs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g3|n1\(1));

-- Location: LCCOMB_X15_Y3_N24
\g3|n1[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n1[2]~5_combout\ = (\g3|Equal2~0_combout\ & ((\g3|Equal1~0_combout\) # ((\g3|n1\(0) & \g3|n1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|Equal1~0_combout\,
	datab => \g3|n1\(0),
	datac => \g3|Equal2~0_combout\,
	datad => \g3|n1\(1),
	combout => \g3|n1[2]~5_combout\);

-- Location: LCCOMB_X14_Y3_N16
\g3|n2[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n2[0]~6_combout\ = !\g3|n2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g3|n2\(0),
	combout => \g3|n2[0]~6_combout\);

-- Location: LCCOMB_X15_Y3_N18
\g3|n2[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n2[0]~2_combout\ = (!\reset~input_o\ & (\start~input_o\ & (\g3|Equal2~0_combout\ & \g3|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \start~input_o\,
	datac => \g3|Equal2~0_combout\,
	datad => \g3|Equal1~0_combout\,
	combout => \g3|n2[0]~2_combout\);

-- Location: FF_X15_Y3_N21
\g3|n2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clkout~clkctrl_outclk\,
	asdata => \g3|n2[0]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \g3|n2[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g3|n2\(0));

-- Location: LCCOMB_X15_Y3_N30
\g3|n2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n2~3_combout\ = (!\g3|process_0~1_combout\ & (\g3|n2\(0) $ (\g3|n2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|n2\(0),
	datac => \g3|n2\(1),
	datad => \g3|process_0~1_combout\,
	combout => \g3|n2~3_combout\);

-- Location: FF_X15_Y3_N31
\g3|n2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clkout~clkctrl_outclk\,
	d => \g3|n2~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \g3|n2[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g3|n2\(1));

-- Location: LCCOMB_X14_Y3_N8
\g3|n2[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n2[2]~5_combout\ = \g3|n2\(2) $ (((\g3|n2\(0) & (\g3|n2\(1) & \g3|n2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|n2\(0),
	datab => \g3|n2\(1),
	datac => \g3|n2\(2),
	datad => \g3|n2[0]~2_combout\,
	combout => \g3|n2[2]~5_combout\);

-- Location: FF_X14_Y3_N9
\g3|n2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clkout~clkctrl_outclk\,
	d => \g3|n2[2]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g3|n2\(2));

-- Location: LCCOMB_X16_Y3_N26
\g3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|Add0~0_combout\ = (\g3|n2\(0) & \g3|n2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g3|n2\(0),
	datad => \g3|n2\(1),
	combout => \g3|Add0~0_combout\);

-- Location: LCCOMB_X15_Y3_N12
\g3|n2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n2~4_combout\ = (!\g3|process_0~1_combout\ & (\g3|n2\(3) $ (((\g3|n2\(2) & \g3|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|n2\(2),
	datab => \g3|Add0~0_combout\,
	datac => \g3|n2\(3),
	datad => \g3|process_0~1_combout\,
	combout => \g3|n2~4_combout\);

-- Location: FF_X15_Y3_N13
\g3|n2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clkout~clkctrl_outclk\,
	d => \g3|n2~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \g3|n2[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g3|n2\(3));

-- Location: LCCOMB_X15_Y3_N16
\g3|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|process_0~0_combout\ = (!\g3|n2\(1) & (\g3|n2\(3) & (\g3|n2\(0) & !\g3|n2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|n2\(1),
	datab => \g3|n2\(3),
	datac => \g3|n2\(0),
	datad => \g3|n2\(2),
	combout => \g3|process_0~0_combout\);

-- Location: LCCOMB_X15_Y3_N28
\g3|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|process_0~1_combout\ = (\g3|Equal2~0_combout\ & (\g3|Equal1~0_combout\ & \g3|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|Equal2~0_combout\,
	datab => \g3|Equal1~0_combout\,
	datad => \g3|process_0~0_combout\,
	combout => \g3|process_0~1_combout\);

-- Location: LCCOMB_X15_Y3_N8
\g3|n1[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n1[2]~6_combout\ = (!\g3|process_0~1_combout\ & ((\g3|n1[2]~5_combout\ & (!\g3|Equal1~0_combout\ & !\g3|n1\(2))) # (!\g3|n1[2]~5_combout\ & ((\g3|n1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|Equal1~0_combout\,
	datab => \g3|n1[2]~5_combout\,
	datac => \g3|n1\(2),
	datad => \g3|process_0~1_combout\,
	combout => \g3|n1[2]~6_combout\);

-- Location: FF_X15_Y3_N9
\g3|n1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clkout~clkctrl_outclk\,
	d => \g3|n1[2]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \g2|cs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g3|n1\(2));

-- Location: LCCOMB_X16_Y3_N28
\g3|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|Add1~0_combout\ = \g3|n1\(3) $ (((\g3|n1\(0) & (\g3|n1\(2) & \g3|n1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|n1\(0),
	datab => \g3|n1\(2),
	datac => \g3|n1\(3),
	datad => \g3|n1\(1),
	combout => \g3|Add1~0_combout\);

-- Location: LCCOMB_X15_Y3_N26
\g3|n1[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n1[3]~7_combout\ = (\g3|Equal2~0_combout\ & (!\g3|Equal1~0_combout\ & ((\g3|Add1~0_combout\)))) # (!\g3|Equal2~0_combout\ & (((\g3|n1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|Equal1~0_combout\,
	datab => \g3|Equal2~0_combout\,
	datac => \g3|n1\(3),
	datad => \g3|Add1~0_combout\,
	combout => \g3|n1[3]~7_combout\);

-- Location: FF_X15_Y3_N27
\g3|n1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clkout~clkctrl_outclk\,
	d => \g3|n1[3]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \g2|cs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g3|n1\(3));

-- Location: LCCOMB_X15_Y3_N6
\g3|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|Equal1~0_combout\ = (\g3|n1\(3) & (!\g3|n1\(1) & (!\g3|n1\(2) & \g3|n1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|n1\(3),
	datab => \g3|n1\(1),
	datac => \g3|n1\(2),
	datad => \g3|n1\(0),
	combout => \g3|Equal1~0_combout\);

-- Location: LCCOMB_X15_Y3_N0
\g3|n1[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g3|n1[0]~4_combout\ = (\g3|Equal2~0_combout\ & (!\g3|n1\(0) & ((!\g3|process_0~0_combout\) # (!\g3|Equal1~0_combout\)))) # (!\g3|Equal2~0_combout\ & (((\g3|n1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g3|Equal1~0_combout\,
	datab => \g3|Equal2~0_combout\,
	datac => \g3|n1\(0),
	datad => \g3|process_0~0_combout\,
	combout => \g3|n1[0]~4_combout\);

-- Location: FF_X15_Y3_N1
\g3|n1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clkout~clkctrl_outclk\,
	d => \g3|n1[0]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \g2|cs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g3|n1\(0));

-- Location: IOIBUF_X16_Y17_N8
\stop~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: UNVM_X0_Y8_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

ww_y0(0) <= \y0[0]~output_o\;

ww_y0(1) <= \y0[1]~output_o\;

ww_y0(2) <= \y0[2]~output_o\;

ww_y0(3) <= \y0[3]~output_o\;

ww_y1(0) <= \y1[0]~output_o\;

ww_y1(1) <= \y1[1]~output_o\;

ww_y1(2) <= \y1[2]~output_o\;

ww_y1(3) <= \y1[3]~output_o\;

ww_y2(0) <= \y2[0]~output_o\;

ww_y2(1) <= \y2[1]~output_o\;

ww_y2(2) <= \y2[2]~output_o\;

ww_y2(3) <= \y2[3]~output_o\;
END structure;


