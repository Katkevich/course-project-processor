-- megafunction wizard: %LPM_LATCH%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_latch 

-- ============================================================
-- File Name: latch_1.vhd
-- Megafunction Name(s):
-- 			lpm_latch
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 9.1 Build 350 03/24/2010 SP 2 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2010 Altera Corporation
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

ENTITY latch_1 IS
	PORT
	(
		data		: IN STD_LOGIC ;
		gate		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC 
	);
END latch_1;


ARCHITECTURE SYN OF latch_1 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC ;
	SIGNAL sub_wire3	: STD_LOGIC_VECTOR (0 DOWNTO 0);



	COMPONENT lpm_latch
	GENERIC (
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			q	: OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
			data	: IN STD_LOGIC_VECTOR (0 DOWNTO 0);
			gate	: IN STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	sub_wire1    <= sub_wire0(0);
	q    <= sub_wire1;
	sub_wire2    <= data;
	sub_wire3(0)    <= sub_wire2;

	lpm_latch_component : lpm_latch
	GENERIC MAP (
		lpm_type => "LPM_LATCH",
		lpm_width => 1
	)
	PORT MAP (
		data => sub_wire3,
		gate => gate,
		q => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix II"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: aclr NUMERIC "0"
-- Retrieval info: PRIVATE: aset NUMERIC "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "1"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_LATCH"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "1"
-- Retrieval info: USED_PORT: data 0 0 0 0 INPUT NODEFVAL data
-- Retrieval info: USED_PORT: gate 0 0 0 0 INPUT NODEFVAL gate
-- Retrieval info: USED_PORT: q 0 0 0 0 OUTPUT NODEFVAL q
-- Retrieval info: CONNECT: @data 0 0 1 0 data 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 0 0 @q 0 0 1 0
-- Retrieval info: CONNECT: @gate 0 0 0 0 gate 0 0 0 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL latch_1.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL latch_1.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL latch_1.cmp FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL latch_1.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL latch_1_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
