-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/03/2024 23:26:11"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(8 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(4 DOWNTO 0);
SIGNAL \dut_instance|F0|HA2|s~0_combout\ : std_logic;
SIGNAL \dut_instance|F0|HA2|cy~combout\ : std_logic;
SIGNAL \dut_instance|X1|inst5|Y~0_combout\ : std_logic;
SIGNAL \dut_instance|F0|HA1|cy~combout\ : std_logic;
SIGNAL \dut_instance|F1|HA2|s~combout\ : std_logic;
SIGNAL \dut_instance|F1|cmbn|aorb~0_combout\ : std_logic;
SIGNAL \dut_instance|F2|HA2|s~0_combout\ : std_logic;
SIGNAL \dut_instance|F2|cmbn|aorb~0_combout\ : std_logic;
SIGNAL \dut_instance|F3|HA2|s~0_combout\ : std_logic;
SIGNAL \dut_instance|F3|cmbn|aorb~0_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X12_Y1_N5
\dut_instance|F0|HA2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|F0|HA2|s~0_combout\ = ((\input_vector~combout\(5) $ (\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|F0|HA2|s~0_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X12_Y1_N2
\dut_instance|F0|HA2|cy\ : maxv_lcell
-- Equation(s):
-- \dut_instance|F0|HA2|cy~combout\ = ((\input_vector~combout\(0) & (\input_vector~combout\(5) $ (!\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|F0|HA2|cy~combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X12_Y1_N7
\dut_instance|X1|inst5|Y~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|X1|inst5|Y~0_combout\ = (\input_vector~combout\(0) $ (((\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(0),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|X1|inst5|Y~0_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X12_Y1_N1
\dut_instance|F0|HA1|cy\ : maxv_lcell
-- Equation(s):
-- \dut_instance|F0|HA1|cy~combout\ = ((\input_vector~combout\(5) & (\input_vector~combout\(0) $ (\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|F0|HA1|cy~combout\);

-- Location: LC_X12_Y1_N6
\dut_instance|F1|HA2|s\ : maxv_lcell
-- Equation(s):
-- \dut_instance|F1|HA2|s~combout\ = \dut_instance|X1|inst5|Y~0_combout\ $ (\input_vector~combout\(6) $ (((\dut_instance|F0|HA2|cy~combout\) # (\dut_instance|F0|HA1|cy~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c396",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|F0|HA2|cy~combout\,
	datab => \dut_instance|X1|inst5|Y~0_combout\,
	datac => \input_vector~combout\(6),
	datad => \dut_instance|F0|HA1|cy~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|F1|HA2|s~combout\);

-- Location: LC_X12_Y1_N8
\dut_instance|F1|cmbn|aorb~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|F1|cmbn|aorb~0_combout\ = (\dut_instance|X1|inst5|Y~0_combout\ & ((\dut_instance|F0|HA2|cy~combout\) # ((\input_vector~combout\(6)) # (\dut_instance|F0|HA1|cy~combout\)))) # (!\dut_instance|X1|inst5|Y~0_combout\ & (\input_vector~combout\(6) 
-- & ((\dut_instance|F0|HA2|cy~combout\) # (\dut_instance|F0|HA1|cy~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|F0|HA2|cy~combout\,
	datab => \dut_instance|X1|inst5|Y~0_combout\,
	datac => \input_vector~combout\(6),
	datad => \dut_instance|F0|HA1|cy~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|F1|cmbn|aorb~0_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X12_Y1_N3
\dut_instance|F2|HA2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|F2|HA2|s~0_combout\ = \dut_instance|F1|cmbn|aorb~0_combout\ $ (\input_vector~combout\(0) $ (\input_vector~combout\(7) $ (\input_vector~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|F1|cmbn|aorb~0_combout\,
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|F2|HA2|s~0_combout\);

-- Location: LC_X12_Y1_N4
\dut_instance|F2|cmbn|aorb~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|F2|cmbn|aorb~0_combout\ = (\dut_instance|F1|cmbn|aorb~0_combout\ & ((\input_vector~combout\(7)) # (\input_vector~combout\(0) $ (\input_vector~combout\(3))))) # (!\dut_instance|F1|cmbn|aorb~0_combout\ & (\input_vector~combout\(7) & 
-- (\input_vector~combout\(0) $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|F1|cmbn|aorb~0_combout\,
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|F2|cmbn|aorb~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X12_Y1_N9
\dut_instance|F3|HA2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|F3|HA2|s~0_combout\ = \dut_instance|F2|cmbn|aorb~0_combout\ $ (\input_vector~combout\(0) $ (\input_vector~combout\(8) $ (\input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|F2|cmbn|aorb~0_combout\,
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|F3|HA2|s~0_combout\);

-- Location: LC_X12_Y1_N0
\dut_instance|F3|cmbn|aorb~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|F3|cmbn|aorb~0_combout\ = (\dut_instance|F2|cmbn|aorb~0_combout\ & ((\input_vector~combout\(8)) # (\input_vector~combout\(0) $ (\input_vector~combout\(4))))) # (!\dut_instance|F2|cmbn|aorb~0_combout\ & (\input_vector~combout\(8) & 
-- (\input_vector~combout\(0) $ (\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|F2|cmbn|aorb~0_combout\,
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|F3|cmbn|aorb~0_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut_instance|F0|HA2|s~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut_instance|F1|HA2|s~combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut_instance|F2|HA2|s~0_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut_instance|F3|HA2|s~0_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut_instance|F3|cmbn|aorb~0_combout\,
	oe => VCC,
	padio => ww_output_vector(4));
END structure;


