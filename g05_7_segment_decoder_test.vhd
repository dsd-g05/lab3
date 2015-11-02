-- Descp.
--
-- entity name: g05_7_segment_decoder_test
--
-- Version 1.0
-- Author: Felix Dube; felix.dube@mail.mcgill.ca & Auguste Lalande; auguste.lalande@mail.mcgill.ca
-- Date: 

library ieee;
use ieee.std_logic_1164.all;

entity g05_7_segment_decoder_test is
	port (
		decoder_2_code : in std_logic_vector(3 downto 0);
		segment_3 : out std_logic_vector(6 downto 0);
		segment_2 : out std_logic_vector(6 downto 0);
		segment_1 : out std_logic_vector(6 downto 0);
		segment_0 : out std_logic_vector(6 downto 0)
	);
end g05_7_segment_decoder_test;

architecture behavior of g05_7_segment_decoder_test is
	component g05_7_segment_decoder is
		port ( 	
			code : in std_logic_vector(3 downto 0);
			RippleBlank_In : in std_logic;
			RippleBlank_Out : out std_logic;
			segments : out std_logic_vector(6 downto 0)
		);
	end component;
	signal ripple_in : std_logic_vector(2 downto 0);
begin
	segment3 : g05_7_segment_decoder
		port map (code => "0000", RippleBlank_In => '1', RippleBlank_Out => ripple_in(2), segments => segment_3);
	segment2 : g05_7_segment_decoder
		port map (code => decoder_2_code, RippleBlank_In => ripple_in(2), RippleBlank_Out => ripple_in(1), segments => segment_2);
	segment1 : g05_7_segment_decoder
		port map (code => "0000", RippleBlank_In => ripple_in(1), RippleBlank_Out => ripple_in(0), segments => segment_1);
	segment0 : g05_7_segment_decoder
		port map (code => "0000", RippleBlank_In => ripple_in(0), segments => segment_0);
end behavior;