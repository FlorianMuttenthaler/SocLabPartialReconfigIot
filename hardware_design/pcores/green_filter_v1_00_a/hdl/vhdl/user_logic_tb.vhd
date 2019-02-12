library ieee;
use ieee.std_logic_1164.all;
--use ieee.math_real.all;
use std.textio.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;

entity user_logic_tb is
end user_logic_tb;

architecture behav of user_logic_tb is

	component user_logic is
		generic
		(
			-- ADD USER GENERICS BELOW THIS LINE ---------------
			--USER generics added here
			-- ADD USER GENERICS ABOVE THIS LINE ---------------

			-- DO NOT EDIT BELOW THIS LINE ---------------------
			-- Bus protocol parameters, do not add to or delete
			C_NUM_REG                      : integer              := 2;
			C_SLV_DWIDTH                   : integer              := 32
			-- DO NOT EDIT ABOVE THIS LINE ---------------------
		);
		port (
			-- ADD USER PORTS BELOW THIS LINE ------------------
			--USER ports added here

			-- ADD USER PORTS ABOVE THIS LINE ------------------

			-- DO NOT EDIT BELOW THIS LINE ---------------------
			-- Bus protocol ports, do not add to or delete
			Bus2IP_Clk                     : in  std_logic;
			Bus2IP_Resetn                  : in  std_logic;
			Bus2IP_Data                    : in  std_logic_vector(C_SLV_DWIDTH-1 downto 0);
			Bus2IP_BE                      : in  std_logic_vector(C_SLV_DWIDTH/8-1 downto 0);
			Bus2IP_RdCE                    : in  std_logic_vector(C_NUM_REG-1 downto 0);
			Bus2IP_WrCE                    : in  std_logic_vector(C_NUM_REG-1 downto 0);
			IP2Bus_Data                    : out std_logic_vector(C_SLV_DWIDTH-1 downto 0);
			IP2Bus_RdAck                   : out std_logic;
			IP2Bus_WrAck                   : out std_logic;
			IP2Bus_Error                   : out std_logic
			-- DO NOT EDIT ABOVE THIS LINE ---------------------
		);

	end component;

	signal Bus2IP_Clk                     : std_logic;
	signal Bus2IP_Resetn                  : std_logic;
	signal Bus2IP_Data                    : std_logic_vector(32-1 downto 0);
	signal Bus2IP_BE                      : std_logic_vector(32/8-1 downto 0);
	signal Bus2IP_RdCE                    : std_logic_vector(2-1 downto 0);
	signal Bus2IP_WrCE                    : std_logic_vector(2-1 downto 0);
	signal IP2Bus_Data                    : std_logic_vector(32-1 downto 0);
	signal IP2Bus_RdAck                   : std_logic;
	signal IP2Bus_WrAck                   : std_logic;
	signal IP2Bus_Error                   : std_logic;

	constant period : time := 10 ns;
	signal   ended  : std_logic := '0';

begin

	dut : user_logic

	port map (
		Bus2IP_Clk		=>	Bus2IP_Clk,
		Bus2IP_Resetn	=>	Bus2IP_Resetn,
		Bus2IP_Data		=>	Bus2IP_Data,
		Bus2IP_BE		=>	Bus2IP_BE,
		Bus2IP_RdCE		=>	Bus2IP_RdCE,
		Bus2IP_WrCE		=>	Bus2IP_WrCE,
		IP2Bus_Data		=>	IP2Bus_Data,
		IP2Bus_RdAck	=>	IP2Bus_RdAck,
		IP2Bus_WrAck	=>	IP2Bus_WrAck,
		IP2Bus_Error	=>	IP2Bus_Error
	);


	clk_process: process

	begin

		Bus2IP_Clk <= '0';
		wait for period/2;
		Bus2IP_Clk <= '1';
		wait for period/2;

		if ended = '1' then
			wait;
		end if;

	end process;


	stimuli : process

	begin

		Bus2IP_Resetn <= '0';
		wait for 10 ns;
		Bus2IP_Resetn <= '1';
		wait for 50 ns;
		
		--Test Sequence One		
		Bus2IP_WrCE <= "10";
		Bus2IP_BE <= "1111";
		Bus2IP_Data <= (others => '0');
		wait for 20 ns;
		Bus2IP_WrCE <= "01";
		Bus2IP_BE <= "1111";
		Bus2IP_Data <= (others => '1');
		wait for 20 ns;
		Bus2IP_WrCE <= (others => '0');
		wait for 20 ns;
		Bus2IP_RdCE <= "10";
		wait for 20 ns;
		Bus2IP_RdCE <= (others => '0');
		wait for 20 ns;	

		--Test Sequence Two		
		Bus2IP_WrCE <= "10";
		Bus2IP_BE <= "1111";
		Bus2IP_Data <= (others => '1');
		wait for 20 ns;
		Bus2IP_WrCE <= "01";
		Bus2IP_BE <= "1111";
		Bus2IP_Data <= (others => '1');
		wait for 20 ns;
		Bus2IP_WrCE <= (others => '0');
		wait for 20 ns;
		Bus2IP_RdCE <= "10";
		wait for 20 ns;
		Bus2IP_RdCE <= (others => '0');
		wait for 20 ns;

		--Test Sequence Three		
		Bus2IP_WrCE <= "10";
		Bus2IP_BE <= "1111";
		Bus2IP_Data <= "00000000000000000000000000111011";
		wait for 20 ns;
		Bus2IP_WrCE <= "01";
		Bus2IP_BE <= "1111";
		Bus2IP_Data <= (others => '1');
		wait for 20 ns;
		Bus2IP_WrCE <= (others => '0');
		wait for 20 ns;
		Bus2IP_RdCE <= "10";
		wait for 20 ns;
		Bus2IP_RdCE <= (others => '0');
		wait for 20 ns;

		--Test Sequence Four		
		Bus2IP_WrCE <= "10";
		Bus2IP_BE <= "1111";
		Bus2IP_Data <= "00000000000011000000000000111001";
		wait for 20 ns;
		Bus2IP_WrCE <= "01";
		Bus2IP_BE <= "1111";
		Bus2IP_Data <= (others => '1');
		wait for 20 ns;
		Bus2IP_WrCE <= (others => '0');
		wait for 20 ns;
		Bus2IP_RdCE <= "10";
		wait for 20 ns;
		Bus2IP_RdCE <= (others => '0');
		wait for 20 ns;
		
		--Test Sequence Five		
		Bus2IP_WrCE <= "10";
		Bus2IP_BE <= "1111";
		Bus2IP_Data <= "00000000000011000111000000111001";
		wait for 20 ns;
		Bus2IP_WrCE <= "01";
		Bus2IP_BE <= "1111";
		Bus2IP_Data <= (others => '1');
		wait for 20 ns;
		Bus2IP_WrCE <= (others => '0');
		wait for 20 ns;
		Bus2IP_RdCE <= "10";
		wait for 20 ns;
		Bus2IP_RdCE <= (others => '0');
		wait for 20 ns;
	
		wait for period*10000;

		ended <= '1';

		wait;

	end process;

end behav;
