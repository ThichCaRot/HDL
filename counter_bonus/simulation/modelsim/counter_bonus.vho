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

-- DATE "10/15/2023 23:35:11"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter_bonus IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	UpDwn : IN std_logic;
	count : OUT std_logic_vector(7 DOWNTO 0)
	);
END counter_bonus;

-- Design Ports Information
-- count[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[2]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[5]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[6]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[7]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UpDwn	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF counter_bonus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_UpDwn : std_logic;
SIGNAL ww_count : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~8_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \UpDwn~combout\ : std_logic;
SIGNAL \count[0]~9\ : std_logic;
SIGNAL \count[1]~15\ : std_logic;
SIGNAL \count[2]~17\ : std_logic;
SIGNAL \count[3]~18_combout\ : std_logic;
SIGNAL \count[3]~reg0_regout\ : std_logic;
SIGNAL \count[2]~16_combout\ : std_logic;
SIGNAL \count[2]~reg0_regout\ : std_logic;
SIGNAL \count[0]~10_combout\ : std_logic;
SIGNAL \count[3]~19\ : std_logic;
SIGNAL \count[4]~20_combout\ : std_logic;
SIGNAL \count[4]~reg0_regout\ : std_logic;
SIGNAL \count[1]~14_combout\ : std_logic;
SIGNAL \count[1]~reg0_regout\ : std_logic;
SIGNAL \count[0]~12_combout\ : std_logic;
SIGNAL \count[4]~21\ : std_logic;
SIGNAL \count[5]~22_combout\ : std_logic;
SIGNAL \count[5]~reg0_regout\ : std_logic;
SIGNAL \count[5]~23\ : std_logic;
SIGNAL \count[6]~24_combout\ : std_logic;
SIGNAL \count[6]~reg0_regout\ : std_logic;
SIGNAL \count[6]~25\ : std_logic;
SIGNAL \count[7]~26_combout\ : std_logic;
SIGNAL \count[7]~reg0_regout\ : std_logic;
SIGNAL \count[0]~11_combout\ : std_logic;
SIGNAL \count[0]~13_combout\ : std_logic;
SIGNAL \count[0]~reg0_regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_UpDwn <= UpDwn;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y35_N8
\count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~8_combout\ = \count[0]~reg0_regout\ $ (VCC)
-- \count[0]~9\ = CARRY(\count[0]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[0]~reg0_regout\,
	datad => VCC,
	combout => \count[0]~8_combout\,
	cout => \count[0]~9\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UpDwn~I\ : cycloneii_io
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
	padio => ww_UpDwn,
	combout => \UpDwn~combout\);

-- Location: LCCOMB_X24_Y35_N10
\count[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~14_combout\ = (\count[1]~reg0_regout\ & ((\UpDwn~combout\ & (!\count[0]~9\)) # (!\UpDwn~combout\ & (\count[0]~9\ & VCC)))) # (!\count[1]~reg0_regout\ & ((\UpDwn~combout\ & ((\count[0]~9\) # (GND))) # (!\UpDwn~combout\ & (!\count[0]~9\))))
-- \count[1]~15\ = CARRY((\count[1]~reg0_regout\ & (\UpDwn~combout\ & !\count[0]~9\)) # (!\count[1]~reg0_regout\ & ((\UpDwn~combout\) # (!\count[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~reg0_regout\,
	datab => \UpDwn~combout\,
	datad => VCC,
	cin => \count[0]~9\,
	combout => \count[1]~14_combout\,
	cout => \count[1]~15\);

-- Location: LCCOMB_X24_Y35_N12
\count[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~16_combout\ = ((\count[2]~reg0_regout\ $ (\UpDwn~combout\ $ (\count[1]~15\)))) # (GND)
-- \count[2]~17\ = CARRY((\count[2]~reg0_regout\ & ((!\count[1]~15\) # (!\UpDwn~combout\))) # (!\count[2]~reg0_regout\ & (!\UpDwn~combout\ & !\count[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[2]~reg0_regout\,
	datab => \UpDwn~combout\,
	datad => VCC,
	cin => \count[1]~15\,
	combout => \count[2]~16_combout\,
	cout => \count[2]~17\);

-- Location: LCCOMB_X24_Y35_N14
\count[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~18_combout\ = (\count[3]~reg0_regout\ & ((\UpDwn~combout\ & (!\count[2]~17\)) # (!\UpDwn~combout\ & (\count[2]~17\ & VCC)))) # (!\count[3]~reg0_regout\ & ((\UpDwn~combout\ & ((\count[2]~17\) # (GND))) # (!\UpDwn~combout\ & (!\count[2]~17\))))
-- \count[3]~19\ = CARRY((\count[3]~reg0_regout\ & (\UpDwn~combout\ & !\count[2]~17\)) # (!\count[3]~reg0_regout\ & ((\UpDwn~combout\) # (!\count[2]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[3]~reg0_regout\,
	datab => \UpDwn~combout\,
	datad => VCC,
	cin => \count[2]~17\,
	combout => \count[3]~18_combout\,
	cout => \count[3]~19\);

-- Location: LCFF_X24_Y35_N15
\count[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[3]~18_combout\,
	sclr => \rst~combout\,
	ena => \count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[3]~reg0_regout\);

-- Location: LCFF_X24_Y35_N13
\count[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[2]~16_combout\,
	sclr => \rst~combout\,
	ena => \count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[2]~reg0_regout\);

-- Location: LCCOMB_X24_Y35_N4
\count[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~10_combout\ = (\UpDwn~combout\ & (!\rst~combout\ & (\count[3]~reg0_regout\ & \count[2]~reg0_regout\))) # (!\UpDwn~combout\ & ((\rst~combout\) # ((\count[3]~reg0_regout\) # (\count[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UpDwn~combout\,
	datab => \rst~combout\,
	datac => \count[3]~reg0_regout\,
	datad => \count[2]~reg0_regout\,
	combout => \count[0]~10_combout\);

-- Location: LCCOMB_X24_Y35_N16
\count[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~20_combout\ = ((\count[4]~reg0_regout\ $ (\UpDwn~combout\ $ (\count[3]~19\)))) # (GND)
-- \count[4]~21\ = CARRY((\count[4]~reg0_regout\ & ((!\count[3]~19\) # (!\UpDwn~combout\))) # (!\count[4]~reg0_regout\ & (!\UpDwn~combout\ & !\count[3]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[4]~reg0_regout\,
	datab => \UpDwn~combout\,
	datad => VCC,
	cin => \count[3]~19\,
	combout => \count[4]~20_combout\,
	cout => \count[4]~21\);

-- Location: LCFF_X24_Y35_N17
\count[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[4]~20_combout\,
	sclr => \rst~combout\,
	ena => \count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[4]~reg0_regout\);

-- Location: LCFF_X24_Y35_N11
\count[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[1]~14_combout\,
	sclr => \rst~combout\,
	ena => \count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[1]~reg0_regout\);

-- Location: LCCOMB_X24_Y35_N24
\count[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~12_combout\ = (\count[6]~reg0_regout\ & (((\count[4]~reg0_regout\ & \count[1]~reg0_regout\)) # (!\count[0]~reg0_regout\))) # (!\count[6]~reg0_regout\ & (!\count[0]~reg0_regout\ & ((\count[4]~reg0_regout\) # (\count[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[6]~reg0_regout\,
	datab => \count[0]~reg0_regout\,
	datac => \count[4]~reg0_regout\,
	datad => \count[1]~reg0_regout\,
	combout => \count[0]~12_combout\);

-- Location: LCCOMB_X24_Y35_N18
\count[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~22_combout\ = (\UpDwn~combout\ & ((\count[5]~reg0_regout\ & (!\count[4]~21\)) # (!\count[5]~reg0_regout\ & ((\count[4]~21\) # (GND))))) # (!\UpDwn~combout\ & ((\count[5]~reg0_regout\ & (\count[4]~21\ & VCC)) # (!\count[5]~reg0_regout\ & 
-- (!\count[4]~21\))))
-- \count[5]~23\ = CARRY((\UpDwn~combout\ & ((!\count[4]~21\) # (!\count[5]~reg0_regout\))) # (!\UpDwn~combout\ & (!\count[5]~reg0_regout\ & !\count[4]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UpDwn~combout\,
	datab => \count[5]~reg0_regout\,
	datad => VCC,
	cin => \count[4]~21\,
	combout => \count[5]~22_combout\,
	cout => \count[5]~23\);

-- Location: LCFF_X24_Y35_N19
\count[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[5]~22_combout\,
	sclr => \rst~combout\,
	ena => \count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[5]~reg0_regout\);

-- Location: LCCOMB_X24_Y35_N20
\count[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~24_combout\ = ((\UpDwn~combout\ $ (\count[6]~reg0_regout\ $ (\count[5]~23\)))) # (GND)
-- \count[6]~25\ = CARRY((\UpDwn~combout\ & (\count[6]~reg0_regout\ & !\count[5]~23\)) # (!\UpDwn~combout\ & ((\count[6]~reg0_regout\) # (!\count[5]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UpDwn~combout\,
	datab => \count[6]~reg0_regout\,
	datad => VCC,
	cin => \count[5]~23\,
	combout => \count[6]~24_combout\,
	cout => \count[6]~25\);

-- Location: LCFF_X24_Y35_N21
\count[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[6]~24_combout\,
	sclr => \rst~combout\,
	ena => \count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[6]~reg0_regout\);

-- Location: LCCOMB_X24_Y35_N22
\count[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[7]~26_combout\ = \UpDwn~combout\ $ (\count[6]~25\ $ (!\count[7]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UpDwn~combout\,
	datad => \count[7]~reg0_regout\,
	cin => \count[6]~25\,
	combout => \count[7]~26_combout\);

-- Location: LCFF_X24_Y35_N23
\count[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[7]~26_combout\,
	sclr => \rst~combout\,
	ena => \count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[7]~reg0_regout\);

-- Location: LCCOMB_X24_Y35_N26
\count[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~11_combout\ = (\UpDwn~combout\ & (((\count[5]~reg0_regout\ & \count[7]~reg0_regout\)) # (!\count[4]~reg0_regout\))) # (!\UpDwn~combout\ & (!\count[4]~reg0_regout\ & ((\count[5]~reg0_regout\) # (\count[7]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UpDwn~combout\,
	datab => \count[5]~reg0_regout\,
	datac => \count[4]~reg0_regout\,
	datad => \count[7]~reg0_regout\,
	combout => \count[0]~11_combout\);

-- Location: LCCOMB_X24_Y35_N2
\count[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~13_combout\ = (\count[0]~reg0_regout\ & (((!\count[0]~11_combout\) # (!\count[0]~12_combout\)) # (!\count[0]~10_combout\))) # (!\count[0]~reg0_regout\ & ((\count[0]~10_combout\) # ((\count[0]~12_combout\) # (\count[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0]~reg0_regout\,
	datab => \count[0]~10_combout\,
	datac => \count[0]~12_combout\,
	datad => \count[0]~11_combout\,
	combout => \count[0]~13_combout\);

-- Location: LCFF_X24_Y35_N9
\count[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[0]~8_combout\,
	sclr => \rst~combout\,
	ena => \count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[0]~reg0_regout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[0]~I\ : cycloneii_io
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
	datain => \count[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(0));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[1]~I\ : cycloneii_io
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
	datain => \count[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(1));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[2]~I\ : cycloneii_io
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
	datain => \count[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(2));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[3]~I\ : cycloneii_io
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
	datain => \count[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[4]~I\ : cycloneii_io
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
	datain => \count[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(4));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[5]~I\ : cycloneii_io
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
	datain => \count[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(5));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[6]~I\ : cycloneii_io
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
	datain => \count[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(6));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[7]~I\ : cycloneii_io
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
	datain => \count[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(7));
END structure;


