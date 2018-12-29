-------------------------------------------------------------------------------
--
-- top Interface Testbench
-- NOTE: Testbench used to test the top interface
--
-------------------------------------------------------------------------------
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.top_gamma_pkg.all;

--  A testbench has no ports.
entity top_gamma_tb is
end top_gamma_tb;
--
-------------------------------------------------------------------------------
--
architecture beh of top_gamma_tb is

	-- Specifies which entity is bound with the component.
	for top_gamma_0: top_gamma use entity work.top_gamma;	

	constant CLK_PERIOD			: time := 5 ns;
	
	signal clk		 			: std_logic := '0';

	signal rst 					: std_logic; -- active high system reset
begin

		top_gamma_0: top_gamma
		port map (
			clk => clk,
			rst => rst
		);
		
--
--------------------------------------------------------------------------------
--
	clk_process : process
	
	begin
		clk_200MHz <= '0';
		wait for CLK_PERIOD/2;
		clk_200MHz <= '1';
		wait for CLK_PERIOD/2;

	end process clk_process;	
--
--------------------------------------------------------------------------------
--  This process does the real job.
--
	stimuli : process

	begin
        
		rst <= '0';
		wait for 100 ns;
        
		assert false report "end of test" severity failure;

		--  Wait forever; this will finish the simulation.
		wait;

	end process stimuli;

end beh;
--
-------------------------------------------------------------------------------
