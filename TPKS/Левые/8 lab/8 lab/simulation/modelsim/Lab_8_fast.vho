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

-- DATE "05/10/2019 18:14:27"

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

ENTITY 	ALU_N IS
    PORT (
	data_A_in : IN std_logic_vector(3 DOWNTO 0);
	data_B_in : IN std_logic_vector(3 DOWNTO 0);
	opCode : IN std_logic_vector(2 DOWNTO 0);
	data_output : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALU_N;

-- Design Ports Information
-- data_output[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_output[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_output[2]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_output[3]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- opCode[1]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_A_in[0]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opCode[0]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_B_in[0]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_A_in[2]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_A_in[3]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_B_in[3]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_B_in[2]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_A_in[1]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_B_in[1]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opCode[2]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU_N IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_A_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_B_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_opCode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_data_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_ALU|Mux4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_ALU|LessThan0~1_combout\ : std_logic;
SIGNAL \inst_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \inst_ALU|Mux4~0clkctrl_outclk\ : std_logic;
SIGNAL \inst_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \inst_ALU|Mux1~3_combout\ : std_logic;
SIGNAL \inst_ALU|Equal0~0_combout\ : std_logic;
SIGNAL \inst_ALU|LessThan0~0_combout\ : std_logic;
SIGNAL \inst_ALU|LessThan0~2_combout\ : std_logic;
SIGNAL \inst_ALU|Equal0~1_combout\ : std_logic;
SIGNAL \inst_ALU|Equal0~2_combout\ : std_logic;
SIGNAL \inst_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \inst_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \inst_ALU|Mux1~4_combout\ : std_logic;
SIGNAL \inst_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \inst_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \inst_ALU|Mux0~0_combout\ : std_logic;
SIGNAL \inst_ALU|Mux0~1_combout\ : std_logic;
SIGNAL \inst_ALU|Mux0~2_combout\ : std_logic;
SIGNAL \inst_ALU|Mux0~3_combout\ : std_logic;
SIGNAL \inst_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \inst_ALU|Mux2~3_combout\ : std_logic;
SIGNAL \inst_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \inst_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \inst_ALU|Mux2~4_combout\ : std_logic;
SIGNAL \inst_ALU|Mux3~2_combout\ : std_logic;
SIGNAL \inst_ALU|Mux3~3_combout\ : std_logic;
SIGNAL \inst_ALU|Mux3~4_combout\ : std_logic;
SIGNAL \inst_ALU|data_output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \opCode~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \data_B_in~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_A_in~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_data_A_in <= data_A_in;
ww_data_B_in <= data_B_in;
ww_opCode <= opCode;
data_output <= ww_data_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst_ALU|Mux4~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X3_Y6_N2
\inst_ALU|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|LessThan0~1_combout\ = (\data_A_in~combout\(1) & (((\data_A_in~combout\(0) & !\data_B_in~combout\(0))) # (!\data_B_in~combout\(1)))) # (!\data_A_in~combout\(1) & (\data_A_in~combout\(0) & (!\data_B_in~combout\(0) & !\data_B_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_A_in~combout\(0),
	datab => \data_B_in~combout\(0),
	datac => \data_A_in~combout\(1),
	datad => \data_B_in~combout\(1),
	combout => \inst_ALU|LessThan0~1_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_A_in[0]~I\ : cycloneii_io
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
	padio => ww_data_A_in(0),
	combout => \data_A_in~combout\(0));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opCode[1]~I\ : cycloneii_io
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
	padio => ww_opCode(1),
	combout => \opCode~combout\(1));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opCode[0]~I\ : cycloneii_io
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
	padio => ww_opCode(0),
	combout => \opCode~combout\(0));

-- Location: LCCOMB_X1_Y6_N10
\inst_ALU|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux4~0_combout\ = ((!\opCode~combout\(1) & !\opCode~combout\(0))) # (!\opCode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opCode~combout\(2),
	datac => \opCode~combout\(1),
	datad => \opCode~combout\(0),
	combout => \inst_ALU|Mux4~0_combout\);

-- Location: CLKCTRL_G2
\inst_ALU|Mux4~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst_ALU|Mux4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst_ALU|Mux4~0clkctrl_outclk\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_B_in[0]~I\ : cycloneii_io
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
	padio => ww_data_B_in(0),
	combout => \data_B_in~combout\(0));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_A_in[1]~I\ : cycloneii_io
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
	padio => ww_data_A_in(1),
	combout => \data_A_in~combout\(1));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_A_in[3]~I\ : cycloneii_io
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
	padio => ww_data_A_in(3),
	combout => \data_A_in~combout\(3));

-- Location: LCCOMB_X3_Y6_N20
\inst_ALU|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux1~2_combout\ = (\data_B_in~combout\(0) & ((\data_B_in~combout\(1) & (\data_A_in~combout\(1))) # (!\data_B_in~combout\(1) & ((\data_A_in~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_B_in~combout\(1),
	datab => \data_B_in~combout\(0),
	datac => \data_A_in~combout\(1),
	datad => \data_A_in~combout\(3),
	combout => \inst_ALU|Mux1~2_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_A_in[2]~I\ : cycloneii_io
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
	padio => ww_data_A_in(2),
	combout => \data_A_in~combout\(2));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_B_in[1]~I\ : cycloneii_io
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
	padio => ww_data_B_in(1),
	combout => \data_B_in~combout\(1));

-- Location: LCCOMB_X3_Y6_N6
\inst_ALU|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux1~3_combout\ = (!\data_B_in~combout\(0) & ((\data_B_in~combout\(1) & ((\data_A_in~combout\(2)))) # (!\data_B_in~combout\(1) & (\data_A_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_A_in~combout\(0),
	datab => \data_B_in~combout\(0),
	datac => \data_A_in~combout\(2),
	datad => \data_B_in~combout\(1),
	combout => \inst_ALU|Mux1~3_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_B_in[3]~I\ : cycloneii_io
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
	padio => ww_data_B_in(3),
	combout => \data_B_in~combout\(3));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_B_in[2]~I\ : cycloneii_io
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
	padio => ww_data_B_in(2),
	combout => \data_B_in~combout\(2));

-- Location: LCCOMB_X3_Y6_N24
\inst_ALU|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Equal0~0_combout\ = (\data_A_in~combout\(2) & (\data_B_in~combout\(2) & (\data_B_in~combout\(3) $ (!\data_A_in~combout\(3))))) # (!\data_A_in~combout\(2) & (!\data_B_in~combout\(2) & (\data_B_in~combout\(3) $ (!\data_A_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_A_in~combout\(2),
	datab => \data_B_in~combout\(3),
	datac => \data_B_in~combout\(2),
	datad => \data_A_in~combout\(3),
	combout => \inst_ALU|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y6_N4
\inst_ALU|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|LessThan0~0_combout\ = (\data_B_in~combout\(3) & (\data_A_in~combout\(2) & (!\data_B_in~combout\(2) & \data_A_in~combout\(3)))) # (!\data_B_in~combout\(3) & ((\data_A_in~combout\(3)) # ((\data_A_in~combout\(2) & !\data_B_in~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_A_in~combout\(2),
	datab => \data_B_in~combout\(3),
	datac => \data_B_in~combout\(2),
	datad => \data_A_in~combout\(3),
	combout => \inst_ALU|LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y6_N22
\inst_ALU|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|LessThan0~2_combout\ = (\inst_ALU|LessThan0~0_combout\) # ((\inst_ALU|LessThan0~1_combout\ & \inst_ALU|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ALU|LessThan0~1_combout\,
	datab => \inst_ALU|Equal0~0_combout\,
	datad => \inst_ALU|LessThan0~0_combout\,
	combout => \inst_ALU|LessThan0~2_combout\);

-- Location: LCCOMB_X3_Y6_N30
\inst_ALU|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Equal0~1_combout\ = (\data_A_in~combout\(0) & (\data_B_in~combout\(0) & (\data_A_in~combout\(1) $ (!\data_B_in~combout\(1))))) # (!\data_A_in~combout\(0) & (!\data_B_in~combout\(0) & (\data_A_in~combout\(1) $ (!\data_B_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_A_in~combout\(0),
	datab => \data_B_in~combout\(0),
	datac => \data_A_in~combout\(1),
	datad => \data_B_in~combout\(1),
	combout => \inst_ALU|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y6_N12
\inst_ALU|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Equal0~2_combout\ = (\inst_ALU|Equal0~1_combout\ & \inst_ALU|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ALU|Equal0~1_combout\,
	datad => \inst_ALU|Equal0~0_combout\,
	combout => \inst_ALU|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y6_N18
\inst_ALU|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux1~0_combout\ = (\opCode~combout\(0) & (\data_B_in~combout\(0))) # (!\opCode~combout\(0) & (((\inst_ALU|LessThan0~2_combout\) # (\inst_ALU|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_B_in~combout\(0),
	datab => \inst_ALU|LessThan0~2_combout\,
	datac => \inst_ALU|Equal0~2_combout\,
	datad => \opCode~combout\(0),
	combout => \inst_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y6_N22
\inst_ALU|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux1~1_combout\ = (\opCode~combout\(1) & ((\opCode~combout\(0) & (\data_A_in~combout\(0) & \inst_ALU|Mux1~0_combout\)) # (!\opCode~combout\(0) & ((!\inst_ALU|Mux1~0_combout\))))) # (!\opCode~combout\(1) & (\data_A_in~combout\(0) $ 
-- (((\inst_ALU|Mux1~0_combout\) # (!\opCode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_A_in~combout\(0),
	datab => \opCode~combout\(1),
	datac => \opCode~combout\(0),
	datad => \inst_ALU|Mux1~0_combout\,
	combout => \inst_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X1_Y6_N28
\inst_ALU|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux1~4_combout\ = (\opCode~combout\(2) & ((\inst_ALU|Mux1~2_combout\) # ((\inst_ALU|Mux1~3_combout\)))) # (!\opCode~combout\(2) & (((\inst_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opCode~combout\(2),
	datab => \inst_ALU|Mux1~2_combout\,
	datac => \inst_ALU|Mux1~3_combout\,
	datad => \inst_ALU|Mux1~1_combout\,
	combout => \inst_ALU|Mux1~4_combout\);

-- Location: LCCOMB_X1_Y6_N16
\inst_ALU|data_output[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|data_output\(0) = (GLOBAL(\inst_ALU|Mux4~0clkctrl_outclk\) & ((\inst_ALU|Mux1~4_combout\))) # (!GLOBAL(\inst_ALU|Mux4~0clkctrl_outclk\) & (\inst_ALU|data_output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ALU|data_output\(0),
	datac => \inst_ALU|Mux4~0clkctrl_outclk\,
	datad => \inst_ALU|Mux1~4_combout\,
	combout => \inst_ALU|data_output\(0));

-- Location: LCCOMB_X3_Y6_N0
\inst_ALU|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux3~0_combout\ = (\data_B_in~combout\(0) & (\data_A_in~combout\(2))) # (!\data_B_in~combout\(0) & ((\data_A_in~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_B_in~combout\(0),
	datac => \data_A_in~combout\(2),
	datad => \data_A_in~combout\(3),
	combout => \inst_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X3_Y6_N10
\inst_ALU|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux3~1_combout\ = (\data_B_in~combout\(0) & (\data_A_in~combout\(0))) # (!\data_B_in~combout\(0) & ((\data_A_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_A_in~combout\(0),
	datac => \data_A_in~combout\(1),
	datad => \data_B_in~combout\(0),
	combout => \inst_ALU|Mux3~1_combout\);

-- Location: LCCOMB_X3_Y6_N12
\inst_ALU|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux0~0_combout\ = (\data_B_in~combout\(1) & (\inst_ALU|Mux3~0_combout\)) # (!\data_B_in~combout\(1) & ((\inst_ALU|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_B_in~combout\(1),
	datab => \inst_ALU|Mux3~0_combout\,
	datad => \inst_ALU|Mux3~1_combout\,
	combout => \inst_ALU|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y6_N0
\inst_ALU|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux0~1_combout\ = (\opCode~combout\(0) & (((\data_B_in~combout\(1))))) # (!\opCode~combout\(0) & (!\inst_ALU|LessThan0~2_combout\ & ((\inst_ALU|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ALU|LessThan0~2_combout\,
	datab => \data_B_in~combout\(1),
	datac => \inst_ALU|Equal0~2_combout\,
	datad => \opCode~combout\(0),
	combout => \inst_ALU|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y6_N2
\inst_ALU|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux0~2_combout\ = (\opCode~combout\(1) & (((!\data_A_in~combout\(1) & \opCode~combout\(0))) # (!\inst_ALU|Mux0~1_combout\))) # (!\opCode~combout\(1) & (\data_A_in~combout\(1) $ (((\opCode~combout\(0) & !\inst_ALU|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opCode~combout\(1),
	datab => \data_A_in~combout\(1),
	datac => \opCode~combout\(0),
	datad => \inst_ALU|Mux0~1_combout\,
	combout => \inst_ALU|Mux0~2_combout\);

-- Location: LCCOMB_X1_Y6_N26
\inst_ALU|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux0~3_combout\ = (\opCode~combout\(2) & (\inst_ALU|Mux0~0_combout\)) # (!\opCode~combout\(2) & ((!\inst_ALU|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opCode~combout\(2),
	datac => \inst_ALU|Mux0~0_combout\,
	datad => \inst_ALU|Mux0~2_combout\,
	combout => \inst_ALU|Mux0~3_combout\);

-- Location: LCCOMB_X1_Y6_N20
\inst_ALU|data_output[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|data_output\(1) = (GLOBAL(\inst_ALU|Mux4~0clkctrl_outclk\) & ((\inst_ALU|Mux0~3_combout\))) # (!GLOBAL(\inst_ALU|Mux4~0clkctrl_outclk\) & (\inst_ALU|data_output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ALU|data_output\(1),
	datac => \inst_ALU|Mux4~0clkctrl_outclk\,
	datad => \inst_ALU|Mux0~3_combout\,
	combout => \inst_ALU|data_output\(1));

-- Location: LCCOMB_X1_Y6_N8
\inst_ALU|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux2~2_combout\ = (\data_B_in~combout\(0) & ((\data_B_in~combout\(1) & ((\data_A_in~combout\(3)))) # (!\data_B_in~combout\(1) & (\data_A_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_B_in~combout\(0),
	datab => \data_A_in~combout\(1),
	datac => \data_B_in~combout\(1),
	datad => \data_A_in~combout\(3),
	combout => \inst_ALU|Mux2~2_combout\);

-- Location: LCCOMB_X1_Y6_N24
\inst_ALU|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux2~3_combout\ = (!\data_B_in~combout\(0) & ((\data_B_in~combout\(1) & (\data_A_in~combout\(0))) # (!\data_B_in~combout\(1) & ((\data_A_in~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_A_in~combout\(0),
	datab => \data_B_in~combout\(1),
	datac => \data_B_in~combout\(0),
	datad => \data_A_in~combout\(2),
	combout => \inst_ALU|Mux2~3_combout\);

-- Location: LCCOMB_X1_Y6_N6
\inst_ALU|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux2~0_combout\ = (\opCode~combout\(0) & (\data_B_in~combout\(2))) # (!\opCode~combout\(0) & ((\inst_ALU|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_B_in~combout\(2),
	datab => \inst_ALU|LessThan0~2_combout\,
	datad => \opCode~combout\(0),
	combout => \inst_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y6_N12
\inst_ALU|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux2~1_combout\ = (\opCode~combout\(1) & (\inst_ALU|Mux2~0_combout\ & ((\data_A_in~combout\(2)) # (!\opCode~combout\(0))))) # (!\opCode~combout\(1) & (\data_A_in~combout\(2) $ (((\inst_ALU|Mux2~0_combout\) # (!\opCode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opCode~combout\(1),
	datab => \data_A_in~combout\(2),
	datac => \opCode~combout\(0),
	datad => \inst_ALU|Mux2~0_combout\,
	combout => \inst_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y6_N30
\inst_ALU|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux2~4_combout\ = (\opCode~combout\(2) & ((\inst_ALU|Mux2~2_combout\) # ((\inst_ALU|Mux2~3_combout\)))) # (!\opCode~combout\(2) & (((\inst_ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opCode~combout\(2),
	datab => \inst_ALU|Mux2~2_combout\,
	datac => \inst_ALU|Mux2~3_combout\,
	datad => \inst_ALU|Mux2~1_combout\,
	combout => \inst_ALU|Mux2~4_combout\);

-- Location: LCCOMB_X1_Y6_N4
\inst_ALU|data_output[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|data_output\(2) = (GLOBAL(\inst_ALU|Mux4~0clkctrl_outclk\) & ((\inst_ALU|Mux2~4_combout\))) # (!GLOBAL(\inst_ALU|Mux4~0clkctrl_outclk\) & (\inst_ALU|data_output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ALU|data_output\(2),
	datac => \inst_ALU|Mux4~0clkctrl_outclk\,
	datad => \inst_ALU|Mux2~4_combout\,
	combout => \inst_ALU|data_output\(2));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opCode[2]~I\ : cycloneii_io
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
	padio => ww_opCode(2),
	combout => \opCode~combout\(2));

-- Location: LCCOMB_X3_Y6_N22
\inst_ALU|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux3~2_combout\ = (\opCode~combout\(2) & ((\data_B_in~combout\(1) & ((\inst_ALU|Mux3~1_combout\))) # (!\data_B_in~combout\(1) & (\inst_ALU|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_B_in~combout\(1),
	datab => \inst_ALU|Mux3~0_combout\,
	datac => \opCode~combout\(2),
	datad => \inst_ALU|Mux3~1_combout\,
	combout => \inst_ALU|Mux3~2_combout\);

-- Location: LCCOMB_X1_Y6_N14
\inst_ALU|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux3~3_combout\ = (\data_A_in~combout\(3) & (\opCode~combout\(0) & (\data_B_in~combout\(3) $ (!\opCode~combout\(1))))) # (!\data_A_in~combout\(3) & (!\opCode~combout\(1) & ((\data_B_in~combout\(3)) # (!\opCode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_B_in~combout\(3),
	datab => \data_A_in~combout\(3),
	datac => \opCode~combout\(1),
	datad => \opCode~combout\(0),
	combout => \inst_ALU|Mux3~3_combout\);

-- Location: LCCOMB_X2_Y6_N20
\inst_ALU|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|Mux3~4_combout\ = (\inst_ALU|Mux3~2_combout\) # ((!\opCode~combout\(2) & \inst_ALU|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opCode~combout\(2),
	datab => \inst_ALU|Mux3~2_combout\,
	datad => \inst_ALU|Mux3~3_combout\,
	combout => \inst_ALU|Mux3~4_combout\);

-- Location: LCCOMB_X2_Y6_N18
\inst_ALU|data_output[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_ALU|data_output\(3) = (GLOBAL(\inst_ALU|Mux4~0clkctrl_outclk\) & ((\inst_ALU|Mux3~4_combout\))) # (!GLOBAL(\inst_ALU|Mux4~0clkctrl_outclk\) & (\inst_ALU|data_output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ALU|data_output\(3),
	datac => \inst_ALU|Mux3~4_combout\,
	datad => \inst_ALU|Mux4~0clkctrl_outclk\,
	combout => \inst_ALU|data_output\(3));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_output[0]~I\ : cycloneii_io
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
	datain => \inst_ALU|data_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_output(0));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_output[1]~I\ : cycloneii_io
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
	datain => \inst_ALU|data_output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_output(1));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_output[2]~I\ : cycloneii_io
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
	datain => \inst_ALU|data_output\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_output(2));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_output[3]~I\ : cycloneii_io
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
	datain => \inst_ALU|data_output\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_output(3));
END structure;


