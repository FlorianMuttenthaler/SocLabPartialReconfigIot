-------------------------------------------------------------------------------
--
-- Top entity for testing the functionality of the memory module on hardware
-- by a simple read and write option
--
-------------------------------------------------------------------------------
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package top_gamma_pkg is

	component top_gamma is
		port (
			clk      				: in  std_logic;
			rst						: in std_logic
		);
	end component top_gamma;
	
end top_gamma_pkg;