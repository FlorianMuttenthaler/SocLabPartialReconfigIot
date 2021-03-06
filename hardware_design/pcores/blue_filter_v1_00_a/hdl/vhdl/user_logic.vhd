------------------------------------------------------------------------------
-- user_logic.vhd - entity/architecture pair
------------------------------------------------------------------------------
--
-- ***************************************************************************
-- ** Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.            **
-- **                                                                       **
-- ** Xilinx, Inc.                                                          **
-- ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"         **
-- ** AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND       **
-- ** SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,        **
-- ** OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,        **
-- ** APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION           **
-- ** THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,     **
-- ** AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE      **
-- ** FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY              **
-- ** WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE               **
-- ** IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR        **
-- ** REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF       **
-- ** INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS       **
-- ** FOR A PARTICULAR PURPOSE.                                             **
-- **                                                                       **
-- ***************************************************************************
--
------------------------------------------------------------------------------
-- Filename:          user_logic.vhd
-- Version:           1.00.a
-- Description:       User logic.
-- Date:              Tue Feb 12 10:02:38 2019 (by Create and Import Peripheral Wizard)
-- VHDL Standard:     VHDL'93
------------------------------------------------------------------------------
-- Naming Conventions:
--   active low signals:                    "*_n"
--   clock signals:                         "clk", "clk_div#", "clk_#x"
--   reset signals:                         "rst", "rst_n"
--   generics:                              "C_*"
--   user defined types:                    "*_TYPE"
--   state machine next state:              "*_ns"
--   state machine current state:           "*_cs"
--   combinatorial signals:                 "*_com"
--   pipelined or register delay signals:   "*_d#"
--   counter signals:                       "*cnt*"
--   clock enable signals:                  "*_ce"
--   internal version of output port:       "*_i"
--   device pins:                           "*_pin"
--   ports:                                 "- Names begin with Uppercase"
--   processes:                             "*_PROCESS"
--   component instantiations:              "<ENTITY_>I_<#|FUNC>"
------------------------------------------------------------------------------

-- DO NOT EDIT BELOW THIS LINE --------------------
library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--use ieee.std=08.all;

--library proc_common_v3_00_a;
--use proc_common_v3_00_a.proc_common_pkg.all;

-- DO NOT EDIT ABOVE THIS LINE --------------------

--USER libraries added here
use work.fifo_buffer_pkg.all;
--use work.blue_filter_logic_pkg.all;

------------------------------------------------------------------------------
-- Entity section
------------------------------------------------------------------------------
-- Definition of Generics:
--   C_NUM_REG                    -- Number of software accessible registers
--   C_SLV_DWIDTH                 -- Slave interface data bus width
--
-- Definition of Ports:
--   Bus2IP_Clk                   -- Bus to IP clock
--   Bus2IP_Resetn                -- Bus to IP reset
--   Bus2IP_Data                  -- Bus to IP data bus
--   Bus2IP_BE                    -- Bus to IP byte enables
--   Bus2IP_RdCE                  -- Bus to IP read chip enable
--   Bus2IP_WrCE                  -- Bus to IP write chip enable
--   IP2Bus_Data                  -- IP to Bus data bus
--   IP2Bus_RdAck                 -- IP to Bus read transfer acknowledgement
--   IP2Bus_WrAck                 -- IP to Bus write transfer acknowledgement
--   IP2Bus_Error                 -- IP to Bus error response
------------------------------------------------------------------------------

entity user_logic is
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
  port
  (
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

  attribute MAX_FANOUT : string;
  attribute SIGIS : string;

  attribute SIGIS of Bus2IP_Clk    : signal is "CLK";
  attribute SIGIS of Bus2IP_Resetn : signal is "RST";

end entity user_logic;

------------------------------------------------------------------------------
-- Architecture section
------------------------------------------------------------------------------

architecture IMP of user_logic is

  --USER signal declarations added here, as needed for user logic
  signal filter_data_in			: std_logic_vector(C_SLV_DWIDTH-1 downto 0) := (others => '0');
  signal filter_data_out		: std_logic_vector(C_SLV_DWIDTH-1 downto 0) := (others => '0');
  signal enable_write   		: std_logic := '0';
  signal enable_read   		    : std_logic := '0';
  
  signal write_toggle           : std_logic := '0';
  signal read_toggle            : std_logic := '0';
  --
  -- States for the state machine
  --
  type state_type is (
    STATE_IDLE,                 --IDLE state
    STATE_FIFO_WR_EN,
    STATE_FIFO_WR,
    STATE_FIFO_RD_EN,
    STATE_FIFO_RD           
  );
  signal state, state_next 		: state_type 		:= STATE_IDLE;
  --
  -- FiFo Signals
  --
  signal fifo_rst			: std_logic := '0';
  signal fifo_full		: std_logic;
  signal fifo_empty		: std_logic;
  signal fifo_write_en		: std_logic;
  signal fifo_read_en		: std_logic;

  signal slave_out			: std_logic_vector(C_SLV_DWIDTH-1 downto 0);
  signal fifo_out			: std_logic_vector(C_SLV_DWIDTH-1 downto 0);
  signal counter            : integer := 0;
  signal counter_next       : integer := 0;
  ------------------------------------------
  -- Signals for user logic slave model s/w accessible register example
  ------------------------------------------
  signal slv_reg0                       : std_logic_vector(C_SLV_DWIDTH-1 downto 0);
  signal slv_reg1                       : std_logic_vector(C_SLV_DWIDTH-1 downto 0);
  signal slv_reg_write_sel              : std_logic_vector(1 downto 0);
  signal slv_reg_read_sel               : std_logic_vector(1 downto 0);
  signal slv_ip2bus_data                : std_logic_vector(C_SLV_DWIDTH-1 downto 0);
  signal slv_read_ack                   : std_logic;
  signal slv_write_ack                  : std_logic;

  component blue_filter_logic is

	  generic(
		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32
	  );
	  port(
	    clk 	    : in std_logic;
	    rst         : in std_logic;
	    regin   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	    regout   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0)  
	);
	
	end component blue_filter_logic;

component fifo_buffer is

	-- 'DATA_BASE_WIDTH', 'DATA_IN_WIDTH', 'DATA_OUT_WIDTH' and 'FIFO_DEPTH' are the generic values of the entity.
	-- 'clk', 'rst', 'write', 'dataIn' and 'read' are the inputs of the entity.
	-- 'dataOut', 'empty' and 'full' are the output of the entity.

	Generic (
		constant DATA_BASE_WIDTH: integer	:=	32;	--storage unit length
		constant DATA_IN_WIDTH	: integer	:=	1;	--number of units stored on write
		constant DATA_OUT_WIDTH	: integer	:=	1;	--number of units loaded on read
		--constant FIFO_DEPTH	: integer	:=	2147483547--number of available units
		constant FIFO_DEPTH	: integer	:=	256--number of available units
	);
	Port ( 
		clk		: in  std_logic;
		rst		: in  std_logic;
		write	: in  std_logic;
		dataIn	: in  std_logic_vector (DATA_IN_WIDTH *DATA_BASE_WIDTH -1
																	  downto 0);
		read	: in  std_logic;
		dataOut	: out std_logic_vector (DATA_OUT_WIDTH*DATA_BASE_WIDTH -1
																	  downto 0);
		empty	: out std_logic;
		full	: out std_logic
	);
	
	end component fifo_buffer;


begin

  --USER logic implementation added here
  --  Component instantiation.
	blue_filter_logic_0: blue_filter_logic
		generic map(
			C_S_AXI_DATA_WIDTH	=> C_SLV_DWIDTH
		)
		port map (
			clk => Bus2IP_Clk,
			rst => Bus2IP_Resetn,
			regin => filter_data_in,
			regout => filter_data_out
		);

	fifo: fifo_buffer
		generic map(
			DATA_BASE_WIDTH	=>	32,
			DATA_IN_WIDTH	=>	1,
			DATA_OUT_WIDTH	=>	1,
			FIFO_DEPTH	=>	10000
		)
		port map(
			clk	=> Bus2IP_Clk,
			rst	=> fifo_rst,
			write	=> fifo_write_en,
			dataIn	=> filter_data_out,
			read	=> fifo_read_en,
			dataOut	=> fifo_out,
			empty	=> fifo_empty,
			full	=> fifo_full
		);

  ------------------------------------------
  -- Example code to read/write user logic slave model s/w accessible registers
  -- 
  -- Note:
  -- The example code presented here is to show you one way of reading/writing
  -- software accessible registers implemented in the user logic slave model.
  -- Each bit of the Bus2IP_WrCE/Bus2IP_RdCE signals is configured to correspond
  -- to one software accessible register by the top level template. For example,
  -- if you have four 32 bit software accessible registers in the user logic,
  -- you are basically operating on the following memory mapped registers:
  -- 
  --    Bus2IP_WrCE/Bus2IP_RdCE   Memory Mapped Register
  --                     "1000"   C_BASEADDR + 0x0
  --                     "0100"   C_BASEADDR + 0x4
  --                     "0010"   C_BASEADDR + 0x8
  --                     "0001"   C_BASEADDR + 0xC
  -- 
  ------------------------------------------
  slv_reg_write_sel <= Bus2IP_WrCE(1 downto 0);
  slv_reg_read_sel  <= Bus2IP_RdCE(1 downto 0);
  slv_write_ack     <= Bus2IP_WrCE(0) or Bus2IP_WrCE(1);
  slv_read_ack      <= Bus2IP_RdCE(0) or Bus2IP_RdCE(1);

  -- implement slave model software accessible register(s)
  SLAVE_REG_WRITE_PROC : process( Bus2IP_Clk ) is
  begin

    if Bus2IP_Clk'event and Bus2IP_Clk = '1' then
      if Bus2IP_Resetn = '0' then
        slv_reg0 <= (others => '0');
        slv_reg1 <= (others => '0');
      else
        case slv_reg_write_sel is
          when "10" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if ( Bus2IP_BE(byte_index) = '1' ) then
                slv_reg0(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
		          enable_write <= '1';
		          write_toggle <= not write_toggle;
              end if;
            end loop;
          when "01" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if ( Bus2IP_BE(byte_index) = '1' ) then
                slv_reg1(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
                enable_write <= '0';
              end if;
            end loop;
          when others => null;
        end case;
      end if;
    end if;

  end process SLAVE_REG_WRITE_PROC;

  -- implement slave model software accessible register(s) read mux
  SLAVE_REG_READ_PROC : process( slv_reg_read_sel, slv_reg0, slv_reg1 ) is
  begin

    case slv_reg_read_sel is
      --when "10" => slv_ip2bus_data <= filter_data_out;
      when "10" => 
        slv_ip2bus_data <= slave_out;
        enable_read <= '0';
        read_toggle <= not read_toggle;
      when "01" => 
        slv_ip2bus_data <= slv_reg1;
        enable_read <= '1';
      when others => slv_ip2bus_data <= (others => '0');
    end case;

  end process SLAVE_REG_READ_PROC;

  ------------------------------------------
  -- Example code to drive IP to Bus signals
  ------------------------------------------
  IP2Bus_Data  <= slv_ip2bus_data when slv_read_ack = '1' else
                  (others => '0');

  IP2Bus_WrAck <= slv_write_ack;
  IP2Bus_RdAck <= slv_read_ack;
  IP2Bus_Error <= '0';

  ------------------------------------------
  -- State maschine for processing image data
  ------------------------------------------
  STATE_MASCHINE_PROC : process (state, enable_write, enable_read, write_toggle, read_toggle, counter) is
  begin
	--prevent latches
	state_next <= state;
	counter_next <= counter;
	case state is 
	  when STATE_IDLE =>		
            if (enable_write = '1') then
                state_next <= STATE_FIFO_WR_EN;	
            end if;
	  when STATE_FIFO_WR_EN =>
            if (fifo_full = '0') then
                  fifo_write_en <= '1';
                  fifo_read_en <= '0';
                  state_next <= STATE_FIFO_WR;
            end if;
	  when STATE_FIFO_WR =>
	       if (enable_read = '0') and (enable_write = '1') then
	           if (write_toggle = '1') or (write_toggle = '0') then
	               filter_data_in <= slv_reg0;
	               counter_next <= counter + 1;
	           end if; 
	       elsif (enable_read = '1') then
	           state_next <= STATE_FIFO_RD_EN;
	       end if;
	  when STATE_FIFO_RD_EN =>
           if (fifo_empty = '0') then
                fifo_write_en <= '0';
                fifo_read_en <= '1';
                state_next <= STATE_FIFO_RD;
           end if;
	  when STATE_FIFO_RD =>  
           if (read_toggle = '1') or (read_toggle = '0') then
               slave_out <= fifo_out;
               counter_next <= counter - 1;
           end if;
           if (counter = 0) then 
            state_next <= STATE_IDLE;
           end if;
	  when others =>
	end case;

  end process STATE_MASCHINE_PROC;

  ------------------------------------------
  -- General sync process for own user logic
  ------------------------------------------
  sync_proc : process (Bus2IP_Clk, Bus2IP_Resetn) is
  begin
	if (Bus2IP_Resetn = '0') then
		state <= STATE_IDLE;
		counter <= 0;
	elsif (rising_edge(Bus2IP_Clk)) then
		state <= state_next;
		counter <= counter_next;
	end if;
  end process sync_proc;

  ------------------------------------------
  -- Fifo Logic Reset
  ------------------------------------------
  fifo_rst <= '0' when Bus2IP_Resetn = '1' else '1';
  
end IMP;
