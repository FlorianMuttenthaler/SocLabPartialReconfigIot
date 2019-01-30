-------------------------------------------------------------------------------
-- system_vga_flyinglogo_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library vga_flyinglogo_v1_00_a;
use vga_flyinglogo_v1_00_a.all;

entity system_vga_flyinglogo_0_wrapper is
  port (
    PIX_CLK_I : in std_logic;
    VSYNC_O : out std_logic;
    HSYNC_O : out std_logic;
    RED_O : out std_logic_vector(3 downto 0);
    GREEN_O : out std_logic_vector(3 downto 0);
    BLUE_O : out std_logic_vector(3 downto 0)
  );
end system_vga_flyinglogo_0_wrapper;

architecture STRUCTURE of system_vga_flyinglogo_0_wrapper is

  component vga_flyinglogo is
    port (
      PIX_CLK_I : in std_logic;
      VSYNC_O : out std_logic;
      HSYNC_O : out std_logic;
      RED_O : out std_logic_vector(3 downto 0);
      GREEN_O : out std_logic_vector(3 downto 0);
      BLUE_O : out std_logic_vector(3 downto 0)
    );
  end component;

begin

  vga_flyinglogo_0 : vga_flyinglogo
    port map (
      PIX_CLK_I => PIX_CLK_I,
      VSYNC_O => VSYNC_O,
      HSYNC_O => HSYNC_O,
      RED_O => RED_O,
      GREEN_O => GREEN_O,
      BLUE_O => BLUE_O
    );

end architecture STRUCTURE;

