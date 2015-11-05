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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/05/2015 15:28:07"
                                                            
-- Vhdl Test Bench template for design  :  g05_possibility_table
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g05_possibility_table_vhd_tst IS
END g05_possibility_table_vhd_tst;
ARCHITECTURE g05_possibility_table_arch OF g05_possibility_table_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL TC_EN : STD_LOGIC;
SIGNAL TC_LAST : STD_LOGIC;
SIGNAL TC_RST : STD_LOGIC;
SIGNAL TM_ADDR : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL TM_EN : STD_LOGIC;
SIGNAL TM_IN : STD_LOGIC;
SIGNAL TM_OUT : STD_LOGIC;
COMPONENT g05_possibility_table
	PORT (
	CLK : IN STD_LOGIC;
	TC_EN : IN STD_LOGIC;
	TC_LAST : OUT STD_LOGIC;
	TC_RST : IN STD_LOGIC;
	TM_ADDR : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	TM_EN : IN STD_LOGIC;
	TM_IN : IN STD_LOGIC;
	TM_OUT : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g05_possibility_table
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	TC_EN => TC_EN,
	TC_LAST => TC_LAST,
	TC_RST => TC_RST,
	TM_ADDR => TM_ADDR,
	TM_EN => TM_EN,
	TM_IN => TM_IN,
	TM_OUT => TM_OUT
	);                                         
always : PROCESS                                                                                   
BEGIN
																				
	TC_RST <= '1';
	TC_EN <= '0';
	FOR i IN 0 TO 2 LOOP
			CLK <= '1';
			wait for 20 ns;
			CLK <= '0';
			wait for 20 ns;
    END LOOP;
	 
	TC_RST <= '0';
	FOR i IN 0 TO 2 LOOP
			CLK <= '1';
			wait for 20 ns;
			CLK <= '0';
			wait for 20 ns;
    END LOOP;
	 
	TC_EN <= '1';
	FOR i IN 0 TO 1300 LOOP
			CLK <= '1';
			wait for 20 ns;
			CLK <= '0';
			wait for 20 ns;
    END LOOP;
 
WAIT;                                                        
END PROCESS always;                                          
END g05_possibility_table_arch;
