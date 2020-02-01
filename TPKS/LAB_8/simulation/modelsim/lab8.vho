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

-- DATE "06/04/2019 15:56:49"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	programm IS
    PORT (
	un : IN std_logic;
	bin : IN std_logic_vector(0 TO 1);
	a : IN std_logic_vector(0 TO 3);
	b : IN std_logic_vector(0 TO 3);
	c : OUT std_logic_vector(0 TO 4)
	);
END programm;

-- Design Ports Information
-- c[4]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c[3]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c[2]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c[1]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c[0]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bin[0]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- un	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bin[1]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF programm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_un : std_logic;
SIGNAL ww_bin : std_logic_vector(0 TO 1);
SIGNAL ww_a : std_logic_vector(0 TO 3);
SIGNAL ww_b : std_logic_vector(0 TO 3);
SIGNAL ww_c : std_logic_vector(0 TO 4);
SIGNAL \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \m2|c[4]~0_combout\ : std_logic;
SIGNAL \m5|c[0]~2_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \m3|ShiftRight0~1_combout\ : std_logic;
SIGNAL \un~combout\ : std_logic;
SIGNAL \m4|Equal0~0_combout\ : std_logic;
SIGNAL \m5|c[0]~1_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \m5|c[0]~3_combout\ : std_logic;
SIGNAL \m5|c[0]~5_combout\ : std_logic;
SIGNAL \m3|ShiftRight0~0_combout\ : std_logic;
SIGNAL \m5|c[0]~4_combout\ : std_logic;
SIGNAL \m5|c[0]~6_combout\ : std_logic;
SIGNAL \m5|c[0]~7_combout\ : std_logic;
SIGNAL \m5|c[0]~8_combout\ : std_logic;
SIGNAL \m5|c[0]~0_combout\ : std_logic;
SIGNAL \m5|c[0]~9_combout\ : std_logic;
SIGNAL \m2|c[4]~1\ : std_logic;
SIGNAL \m2|c[3]~2_combout\ : std_logic;
SIGNAL \m5|c[1]~10_combout\ : std_logic;
SIGNAL \m5|c[1]~11_combout\ : std_logic;
SIGNAL \m5|c[1]~12_combout\ : std_logic;
SIGNAL \m5|c[1]~13_combout\ : std_logic;
SIGNAL \m5|c[1]~14_combout\ : std_logic;
SIGNAL \m5|c[2]~16_combout\ : std_logic;
SIGNAL \m5|c[2]~17_combout\ : std_logic;
SIGNAL \m4|Equal0~1_combout\ : std_logic;
SIGNAL \m5|c[2]~15_combout\ : std_logic;
SIGNAL \m2|c[3]~3\ : std_logic;
SIGNAL \m2|c[2]~4_combout\ : std_logic;
SIGNAL \m5|c[2]~18_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \m5|c[2]~19_combout\ : std_logic;
SIGNAL \m3|ShiftRight0~2_combout\ : std_logic;
SIGNAL \m0|Add0~0_combout\ : std_logic;
SIGNAL \m5|c[3]~20_combout\ : std_logic;
SIGNAL \m2|c[2]~5\ : std_logic;
SIGNAL \m2|c[1]~6_combout\ : std_logic;
SIGNAL \m5|c[3]~21_combout\ : std_logic;
SIGNAL \m5|c[3]~22_combout\ : std_logic;
SIGNAL \m2|LessThan0~0_combout\ : std_logic;
SIGNAL \m2|LessThan0~1_combout\ : std_logic;
SIGNAL \m5|Equal1~0_combout\ : std_logic;
SIGNAL \m5|Equal1~1_combout\ : std_logic;
SIGNAL \m4|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \m1|c\ : std_logic_vector(0 TO 4);
SIGNAL \bin~combout\ : std_logic_vector(0 TO 1);
SIGNAL \b~combout\ : std_logic_vector(0 TO 3);
SIGNAL \a~combout\ : std_logic_vector(0 TO 3);

BEGIN

ww_un <= un;
ww_bin <= bin;
ww_a <= a;
ww_b <= b;
c <= ww_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X8_Y8_N6
\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\b~combout\(3) & (\a~combout\(2) $ (VCC))) # (!\b~combout\(3) & ((\a~combout\(2)) # (GND)))
-- \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\a~combout\(2)) # (!\b~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(2),
	datad => VCC,
	combout => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X8_Y8_N10
\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\b~combout\(1) $ (\m4|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\b~combout\(1) & (\m4|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\b~combout\(1) & 
-- ((\m4|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \m4|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X10_Y9_N6
\m2|c[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m2|c[4]~0_combout\ = (\a~combout\(3) & (\b~combout\(3) $ (VCC))) # (!\a~combout\(3) & (\b~combout\(3) & VCC))
-- \m2|c[4]~1\ = CARRY((\a~combout\(3) & \b~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(3),
	datad => VCC,
	combout => \m2|c[4]~0_combout\,
	cout => \m2|c[4]~1\);

-- Location: LCCOMB_X10_Y8_N12
\m5|c[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[0]~2_combout\ = (\un~combout\ & ((\bin~combout\(0)) # (\bin~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(0),
	datac => \un~combout\,
	datad => \bin~combout\(1),
	combout => \m5|c[0]~2_combout\);

-- Location: LCCOMB_X10_Y9_N26
\m4|Div0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ = (\a~combout\(1) & ((\m4|Div0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(3),
	datad => \m4|Div0|auto_generated|divider|divider|selnose[5]~0_combout\,
	combout => \m4|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: LCCOMB_X10_Y7_N10
\m3|ShiftRight0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m3|ShiftRight0~1_combout\ = (!\b~combout\(3) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datad => \a~combout\(0),
	combout => \m3|ShiftRight0~1_combout\);

-- Location: LCCOMB_X10_Y7_N12
\m1|c[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m1|c\(1) = (\b~combout\(0)) # (\a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \m1|c\(1));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\un~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_un,
	combout => \un~combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCCOMB_X10_Y9_N16
\m4|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Equal0~0_combout\ = (!\b~combout\(2) & (!\b~combout\(3) & (!\b~combout\(1) & !\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \b~combout\(3),
	datac => \b~combout\(1),
	datad => \b~combout\(0),
	combout => \m4|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y8_N18
\m5|c[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[0]~1_combout\ = (\un~combout\ & (\bin~combout\(0))) # (!\un~combout\ & ((!\m4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(0),
	datab => \un~combout\,
	datad => \m4|Equal0~0_combout\,
	combout => \m5|c[0]~1_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X8_Y8_N0
\m4|Div0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (\b~combout\(2) & (\b~combout\(3) & !\a~combout\(1))) # (!\b~combout\(2) & (!\b~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \b~combout\(3),
	datad => \a~combout\(1),
	combout => \m4|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X8_Y8_N2
\m4|Div0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\a~combout\(0) & ((\b~combout\(0)) # ((\m4|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\) # (\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \m4|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => \a~combout\(0),
	datad => \b~combout\(1),
	combout => \m4|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X8_Y8_N8
\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\m4|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\b~combout\(2) & (!\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\b~combout\(2) & 
-- (\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\m4|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\b~combout\(2) & ((\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # 
-- (!\b~combout\(2) & (!\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\m4|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\b~combout\(2) & !\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\m4|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\b~combout\(2)) # (!\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m4|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \b~combout\(2),
	datad => VCC,
	cin => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X8_Y8_N12
\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X8_Y8_N14
\m4|Div0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\b~combout\(0) & (((\m4|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)))) # (!\b~combout\(0) & ((\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\m4|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\))) # (!\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \m4|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datac => \b~combout\(0),
	datad => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \m4|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\);

-- Location: LCCOMB_X8_Y8_N16
\m4|Div0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\b~combout\(0) & (\m4|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\b~combout\(0) & ((\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\m4|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m4|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \b~combout\(0),
	datad => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \m4|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X8_Y8_N18
\m4|Div0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\b~combout\(0) & (((\a~combout\(2))))) # (!\b~combout\(0) & ((\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\a~combout\(2)))) # 
-- (!\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \a~combout\(2),
	datac => \b~combout\(0),
	datad => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \m4|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X8_Y8_N22
\m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\a~combout\(3)) # (!\b~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(3),
	datad => VCC,
	cout => \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X8_Y8_N24
\m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\b~combout\(2) & ((!\m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # (!\m4|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\))) # 
-- (!\b~combout\(2) & (!\m4|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ & !\m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \m4|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datad => VCC,
	cin => \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X8_Y8_N26
\m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\b~combout\(1) & (\m4|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & !\m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # 
-- (!\b~combout\(1) & ((\m4|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\) # (!\m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \m4|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datad => VCC,
	cin => \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X8_Y8_N28
\m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\b~combout\(0) & ((!\m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # (!\m4|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\))) # 
-- (!\b~combout\(0) & (!\m4|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ & !\m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \m4|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datad => VCC,
	cin => \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X8_Y8_N30
\m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bin[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_bin(1),
	combout => \bin~combout\(1));

-- Location: LCCOMB_X10_Y9_N28
\m5|c[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[0]~3_combout\ = (\b~combout\(1)) # ((\b~combout\(0)) # ((\b~combout\(2)) # (!\bin~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \bin~combout\(1),
	datad => \b~combout\(2),
	combout => \m5|c[0]~3_combout\);

-- Location: LCCOMB_X10_Y9_N0
\m5|c[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[0]~5_combout\ = (\m5|c[0]~3_combout\ & ((\bin~combout\(1)))) # (!\m5|c[0]~3_combout\ & (\b~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(3),
	datac => \bin~combout\(1),
	datad => \m5|c[0]~3_combout\,
	combout => \m5|c[0]~5_combout\);

-- Location: LCCOMB_X10_Y7_N0
\m3|ShiftRight0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m3|ShiftRight0~0_combout\ = (\b~combout\(3) & ((\a~combout\(0)))) # (!\b~combout\(3) & (\a~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \a~combout\(1),
	datad => \a~combout\(0),
	combout => \m3|ShiftRight0~0_combout\);

-- Location: LCCOMB_X10_Y9_N30
\m5|c[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[0]~4_combout\ = ((!\b~combout\(1) & (!\b~combout\(0) & \b~combout\(2)))) # (!\bin~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \bin~combout\(1),
	datad => \b~combout\(2),
	combout => \m5|c[0]~4_combout\);

-- Location: LCCOMB_X10_Y9_N18
\m5|c[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[0]~6_combout\ = (\m5|c[0]~5_combout\ & (((\m3|ShiftRight0~0_combout\ & \m5|c[0]~4_combout\)))) # (!\m5|c[0]~5_combout\ & ((\m2|c[4]~0_combout\) # ((!\m5|c[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|c[4]~0_combout\,
	datab => \m5|c[0]~5_combout\,
	datac => \m3|ShiftRight0~0_combout\,
	datad => \m5|c[0]~4_combout\,
	combout => \m5|c[0]~6_combout\);

-- Location: LCCOMB_X10_Y9_N4
\m5|c[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[0]~7_combout\ = (\m5|c[0]~3_combout\ & (((\m5|c[0]~6_combout\)))) # (!\m5|c[0]~3_combout\ & ((\m5|c[0]~6_combout\ & ((\a~combout\(3)))) # (!\m5|c[0]~6_combout\ & (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \m5|c[0]~3_combout\,
	datac => \a~combout\(3),
	datad => \m5|c[0]~6_combout\,
	combout => \m5|c[0]~7_combout\);

-- Location: LCCOMB_X10_Y8_N30
\m5|c[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[0]~8_combout\ = (\m5|c[0]~2_combout\ & (((\m5|c[0]~7_combout\)) # (!\m5|c[0]~1_combout\))) # (!\m5|c[0]~2_combout\ & (\m5|c[0]~1_combout\ & (!\m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m5|c[0]~2_combout\,
	datab => \m5|c[0]~1_combout\,
	datac => \m4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \m5|c[0]~7_combout\,
	combout => \m5|c[0]~8_combout\);

-- Location: LCCOMB_X10_Y8_N0
\m5|c[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[0]~0_combout\ = (\bin~combout\(0)) # (!\un~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(0),
	datac => \un~combout\,
	combout => \m5|c[0]~0_combout\);

-- Location: LCCOMB_X10_Y8_N24
\m5|c[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[0]~9_combout\ = (\m5|c[0]~8_combout\ & ((\b~combout\(3)) # ((\a~combout\(3)) # (\m5|c[0]~0_combout\)))) # (!\m5|c[0]~8_combout\ & (((!\a~combout\(3) & !\m5|c[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \m5|c[0]~8_combout\,
	datac => \a~combout\(3),
	datad => \m5|c[0]~0_combout\,
	combout => \m5|c[0]~9_combout\);

-- Location: LCCOMB_X10_Y8_N2
\m4|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|selnose\(10) = (\m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (\b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \b~combout\(0),
	combout => \m4|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X10_Y9_N8
\m2|c[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m2|c[3]~2_combout\ = (\a~combout\(2) & ((\b~combout\(2) & (\m2|c[4]~1\ & VCC)) # (!\b~combout\(2) & (!\m2|c[4]~1\)))) # (!\a~combout\(2) & ((\b~combout\(2) & (!\m2|c[4]~1\)) # (!\b~combout\(2) & ((\m2|c[4]~1\) # (GND)))))
-- \m2|c[3]~3\ = CARRY((\a~combout\(2) & (!\b~combout\(2) & !\m2|c[4]~1\)) # (!\a~combout\(2) & ((!\m2|c[4]~1\) # (!\b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	datad => VCC,
	cin => \m2|c[4]~1\,
	combout => \m2|c[3]~2_combout\,
	cout => \m2|c[3]~3\);

-- Location: LCCOMB_X10_Y9_N14
\m5|c[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[1]~10_combout\ = (\m5|c[0]~5_combout\ & (\m3|ShiftRight0~1_combout\ & ((\m5|c[0]~4_combout\)))) # (!\m5|c[0]~5_combout\ & (((\m2|c[3]~2_combout\) # (!\m5|c[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|ShiftRight0~1_combout\,
	datab => \m5|c[0]~5_combout\,
	datac => \m2|c[3]~2_combout\,
	datad => \m5|c[0]~4_combout\,
	combout => \m5|c[1]~10_combout\);

-- Location: LCCOMB_X10_Y9_N24
\m5|c[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[1]~11_combout\ = (\m5|c[0]~3_combout\ & (((\m5|c[1]~10_combout\)))) # (!\m5|c[0]~3_combout\ & ((\m5|c[1]~10_combout\ & (\a~combout\(2))) # (!\m5|c[1]~10_combout\ & ((\a~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \m5|c[0]~3_combout\,
	datac => \m5|c[1]~10_combout\,
	datad => \a~combout\(1),
	combout => \m5|c[1]~11_combout\);

-- Location: LCCOMB_X10_Y8_N28
\m5|c[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[1]~12_combout\ = (\m5|c[0]~2_combout\ & (((\m5|c[1]~11_combout\) # (!\m5|c[0]~1_combout\)))) # (!\m5|c[0]~2_combout\ & (!\m4|Div0|auto_generated|divider|divider|selnose\(10) & ((\m5|c[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m5|c[0]~2_combout\,
	datab => \m4|Div0|auto_generated|divider|divider|selnose\(10),
	datac => \m5|c[1]~11_combout\,
	datad => \m5|c[0]~1_combout\,
	combout => \m5|c[1]~12_combout\);

-- Location: LCCOMB_X10_Y8_N6
\m5|c[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[1]~13_combout\ = (\m5|c[1]~12_combout\ & ((\b~combout\(2)))) # (!\m5|c[1]~12_combout\ & (\a~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m5|c[1]~12_combout\,
	datac => \a~combout\(3),
	datad => \b~combout\(2),
	combout => \m5|c[1]~13_combout\);

-- Location: LCCOMB_X10_Y8_N8
\m5|c[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[1]~14_combout\ = (\m5|c[1]~13_combout\ & ((\m5|c[1]~12_combout\) # ((!\m5|c[0]~0_combout\ & \a~combout\(2))))) # (!\m5|c[1]~13_combout\ & (\m5|c[1]~12_combout\ $ (((!\m5|c[0]~0_combout\ & !\a~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m5|c[1]~13_combout\,
	datab => \m5|c[0]~0_combout\,
	datac => \a~combout\(2),
	datad => \m5|c[1]~12_combout\,
	combout => \m5|c[1]~14_combout\);

-- Location: LCCOMB_X10_Y9_N2
\m5|c[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[2]~16_combout\ = (\bin~combout\(1) & (\b~combout\(1))) # (!\bin~combout\(1) & (((\a~combout\(3)) # (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \bin~combout\(1),
	datac => \a~combout\(3),
	datad => \a~combout\(2),
	combout => \m5|c[2]~16_combout\);

-- Location: LCCOMB_X10_Y7_N30
\m5|c[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[2]~17_combout\ = (\bin~combout\(0) & (((!\bin~combout\(1))))) # (!\bin~combout\(0) & ((\m5|c[2]~16_combout\ & ((\a~combout\(1)) # (\bin~combout\(1)))) # (!\m5|c[2]~16_combout\ & (\a~combout\(1) $ (!\bin~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(0),
	datab => \m5|c[2]~16_combout\,
	datac => \a~combout\(1),
	datad => \bin~combout\(1),
	combout => \m5|c[2]~17_combout\);

-- Location: LCCOMB_X8_Y8_N20
\m4|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Equal0~1_combout\ = (!\b~combout\(2) & (!\b~combout\(0) & !\b~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \b~combout\(0),
	datad => \b~combout\(1),
	combout => \m4|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y7_N4
\m5|c[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[2]~15_combout\ = (\bin~combout\(0) & ((\m4|Equal0~1_combout\) # (!\bin~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(0),
	datac => \m4|Equal0~1_combout\,
	datad => \bin~combout\(1),
	combout => \m5|c[2]~15_combout\);

-- Location: LCCOMB_X10_Y9_N10
\m2|c[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m2|c[2]~4_combout\ = ((\a~combout\(1) $ (\b~combout\(1) $ (!\m2|c[3]~3\)))) # (GND)
-- \m2|c[2]~5\ = CARRY((\a~combout\(1) & ((\b~combout\(1)) # (!\m2|c[3]~3\))) # (!\a~combout\(1) & (\b~combout\(1) & !\m2|c[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(1),
	datad => VCC,
	cin => \m2|c[3]~3\,
	combout => \m2|c[2]~4_combout\,
	cout => \m2|c[2]~5\);

-- Location: LCCOMB_X10_Y7_N16
\m5|c[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[2]~18_combout\ = (\m5|c[2]~17_combout\ & (((\m2|c[2]~4_combout\) # (!\m5|c[2]~15_combout\)))) # (!\m5|c[2]~17_combout\ & (\m3|ShiftRight0~0_combout\ & (\m5|c[2]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|ShiftRight0~0_combout\,
	datab => \m5|c[2]~17_combout\,
	datac => \m5|c[2]~15_combout\,
	datad => \m2|c[2]~4_combout\,
	combout => \m5|c[2]~18_combout\);

-- Location: LCCOMB_X8_Y8_N4
\m4|Div0|auto_generated|divider|divider|selnose[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\b~combout\(0)) # ((\b~combout\(1)) # ((!\a~combout\(0) & \b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datac => \b~combout\(1),
	datad => \b~combout\(2),
	combout => \m4|Div0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X10_Y9_N20
\m4|Div0|auto_generated|divider|divider|selnose[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ = (\m4|Div0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((!\a~combout\(1) & \b~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(3),
	datad => \m4|Div0|auto_generated|divider|divider|selnose[5]~0_combout\,
	combout => \m4|Div0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X10_Y7_N26
\m5|c[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[2]~19_combout\ = (\un~combout\ & (\m5|c[2]~18_combout\)) # (!\un~combout\ & (((!\m4|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ & !\m4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m5|c[2]~18_combout\,
	datab => \m4|Div0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datac => \un~combout\,
	datad => \m4|Equal0~0_combout\,
	combout => \m5|c[2]~19_combout\);

-- Location: LCCOMB_X10_Y7_N28
\m3|ShiftRight0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m3|ShiftRight0~2_combout\ = (\b~combout\(3) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datad => \a~combout\(0),
	combout => \m3|ShiftRight0~2_combout\);

-- Location: LCCOMB_X10_Y7_N22
\m0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m0|Add0~0_combout\ = \a~combout\(0) $ (((\a~combout\(2)) # ((\a~combout\(1)) # (\a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \a~combout\(1),
	datac => \a~combout\(3),
	datad => \a~combout\(0),
	combout => \m0|Add0~0_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bin[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_bin(0),
	combout => \bin~combout\(0));

-- Location: LCCOMB_X10_Y7_N8
\m5|c[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[3]~20_combout\ = (\bin~combout\(0) & (((!\bin~combout\(1))))) # (!\bin~combout\(0) & ((\bin~combout\(1) & (\m1|c\(1))) # (!\bin~combout\(1) & ((!\m0|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|c\(1),
	datab => \m0|Add0~0_combout\,
	datac => \bin~combout\(0),
	datad => \bin~combout\(1),
	combout => \m5|c[3]~20_combout\);

-- Location: LCCOMB_X10_Y9_N12
\m2|c[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m2|c[1]~6_combout\ = \a~combout\(0) $ (\m2|c[2]~5\ $ (\b~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(0),
	datad => \b~combout\(0),
	cin => \m2|c[2]~5\,
	combout => \m2|c[1]~6_combout\);

-- Location: LCCOMB_X10_Y7_N2
\m5|c[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[3]~21_combout\ = (\m5|c[2]~15_combout\ & ((\m5|c[3]~20_combout\ & ((\m2|c[1]~6_combout\))) # (!\m5|c[3]~20_combout\ & (\m3|ShiftRight0~1_combout\)))) # (!\m5|c[2]~15_combout\ & (((\m5|c[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|ShiftRight0~1_combout\,
	datab => \m5|c[2]~15_combout\,
	datac => \m5|c[3]~20_combout\,
	datad => \m2|c[1]~6_combout\,
	combout => \m5|c[3]~21_combout\);

-- Location: LCCOMB_X10_Y7_N6
\m5|c[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|c[3]~22_combout\ = (\un~combout\ & (((\m5|c[3]~21_combout\)))) # (!\un~combout\ & (\m4|Equal0~1_combout\ & (\m3|ShiftRight0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m4|Equal0~1_combout\,
	datab => \m3|ShiftRight0~2_combout\,
	datac => \un~combout\,
	datad => \m5|c[3]~21_combout\,
	combout => \m5|c[3]~22_combout\);

-- Location: LCCOMB_X10_Y9_N22
\m2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m2|LessThan0~0_combout\ = (\m2|c[3]~2_combout\ & (!\m2|c[4]~0_combout\ & (\a~combout\(3) & \a~combout\(2)))) # (!\m2|c[3]~2_combout\ & ((\a~combout\(2)) # ((!\m2|c[4]~0_combout\ & \a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|c[4]~0_combout\,
	datab => \m2|c[3]~2_combout\,
	datac => \a~combout\(3),
	datad => \a~combout\(2),
	combout => \m2|LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y7_N18
\m2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m2|LessThan0~1_combout\ = (\m2|c[2]~4_combout\ & (\a~combout\(1) & \m2|LessThan0~0_combout\)) # (!\m2|c[2]~4_combout\ & ((\a~combout\(1)) # (\m2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m2|c[2]~4_combout\,
	datac => \a~combout\(1),
	datad => \m2|LessThan0~0_combout\,
	combout => \m2|LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y7_N24
\m5|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|Equal1~0_combout\ = (\bin~combout\(0) & (\un~combout\ & !\bin~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(0),
	datac => \un~combout\,
	datad => \bin~combout\(1),
	combout => \m5|Equal1~0_combout\);

-- Location: LCCOMB_X10_Y7_N20
\m5|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m5|Equal1~1_combout\ = (\m5|Equal1~0_combout\ & ((\a~combout\(0) & ((\m2|LessThan0~1_combout\) # (!\m2|c[1]~6_combout\))) # (!\a~combout\(0) & (\m2|LessThan0~1_combout\ & !\m2|c[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \m2|LessThan0~1_combout\,
	datac => \m5|Equal1~0_combout\,
	datad => \m2|c[1]~6_combout\,
	combout => \m5|Equal1~1_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m5|c[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c(4));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m5|c[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c(3));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m5|c[2]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c(2));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m5|c[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c(1));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m5|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c(0));
END structure;


