-- megafunction wizard: %LPM_CLSHIFT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_CLSHIFT 

-- ============================================================
-- File Name: lpm_clshift0.vhd
-- Megafunction Name(s):
-- 			LPM_CLSHIFT
--
-- Simulation Library Files(s):
-- 			
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.1.0 Build 162 10/23/2013 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY lpm_clshift0 IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		distance		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		overflow		: OUT STD_LOGIC ;
		result		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END lpm_clshift0;


ARCHITECTURE SYN OF lpm_clshift0 IS

	SIGNAL sub_wire0	: STD_LOGIC ;
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire2	: STD_LOGIC ;



	COMPONENT lpm_clshift
	GENERIC (
		lpm_shifttype		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL;
		lpm_widthdist		: NATURAL
	);
	PORT (
			data	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			overflow	: OUT STD_LOGIC ;
			direction	: IN STD_LOGIC ;
			distance	: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	sub_wire2    <= '0';
	overflow    <= sub_wire0;
	result    <= sub_wire1(3 DOWNTO 0);

	LPM_CLSHIFT_component : LPM_CLSHIFT
	GENERIC MAP (
		lpm_shifttype => "LOGICAL",
		lpm_type => "LPM_CLSHIFT",
		lpm_width => 4,
		lpm_widthdist => 2
	)
	PORT MAP (
		data => data,
		direction => sub_wire2,
		distance => distance,
		overflow => sub_wire0,
		result => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: PRIVATE: LPM_SHIFTTYPE NUMERIC "0"
-- Retrieval info: PRIVATE: LPM_WIDTH NUMERIC "4"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: lpm_widthdist NUMERIC "2"
-- Retrieval info: PRIVATE: lpm_widthdist_style NUMERIC "0"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: PRIVATE: port_direction NUMERIC "0"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_SHIFTTYPE STRING "LOGICAL"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_CLSHIFT"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "4"
-- Retrieval info: CONSTANT: LPM_WIDTHDIST NUMERIC "2"
-- Retrieval info: USED_PORT: data 0 0 4 0 INPUT NODEFVAL "data[3..0]"
-- Retrieval info: USED_PORT: distance 0 0 2 0 INPUT NODEFVAL "distance[1..0]"
-- Retrieval info: USED_PORT: overflow 0 0 0 0 OUTPUT NODEFVAL "overflow"
-- Retrieval info: USED_PORT: result 0 0 4 0 OUTPUT NODEFVAL "result[3..0]"
-- Retrieval info: CONNECT: @data 0 0 4 0 data 0 0 4 0
-- Retrieval info: CONNECT: @direction 0 0 0 0 GND 0 0 0 0
-- Retrieval info: CONNECT: @distance 0 0 2 0 distance 0 0 2 0
-- Retrieval info: CONNECT: overflow 0 0 0 0 @overflow 0 0 0 0
-- Retrieval info: CONNECT: result 0 0 4 0 @result 0 0 4 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_clshift0.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_clshift0.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_clshift0.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_clshift0.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_clshift0_inst.vhd FALSE
