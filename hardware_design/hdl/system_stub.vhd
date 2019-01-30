-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
    processing_system7_0_PS_SRSTB_pin : in std_logic;
    processing_system7_0_PS_CLK_pin : in std_logic;
    processing_system7_0_PS_PORB_pin : in std_logic;
    processing_system7_0_DDR_Clk : inout std_logic;
    processing_system7_0_DDR_Clk_n : inout std_logic;
    processing_system7_0_DDR_CKE : inout std_logic;
    processing_system7_0_DDR_CS_n : inout std_logic;
    processing_system7_0_DDR_RAS_n : inout std_logic;
    processing_system7_0_DDR_CAS_n : inout std_logic;
    processing_system7_0_DDR_WEB_pin : out std_logic;
    processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
    processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
    processing_system7_0_DDR_ODT : inout std_logic;
    processing_system7_0_DDR_DRSTB : inout std_logic;
    processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
    processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_VRN : inout std_logic;
    processing_system7_0_DDR_VRP : inout std_logic;
    hdmi_iic_sda : inout std_logic;
    hdmi_iic_scl : inout std_logic;
    hdmi_clk : out std_logic;
    hdmi_data : out std_logic_vector(15 downto 0);
    hdmi_hsync : out std_logic;
    hdmi_data_e : out std_logic;
    hdmi_vsync : out std_logic;
    hdmi_spdif : out std_logic;
    hdmi_int : in std_logic;
    otg_oc : in std_logic;
    vga_flyinglogo_0_VSYNC_O_pin : out std_logic;
    vga_flyinglogo_0_HSYNC_O_pin : out std_logic;
    vga_flyinglogo_0_RED_O_pin : out std_logic_vector(3 downto 0);
    vga_flyinglogo_0_GREEN_O_pin : out std_logic_vector(3 downto 0);
    vga_flyinglogo_0_BLUE_O_pin : out std_logic_vector(3 downto 0);
    processing_system7_0_GPIO : inout std_logic_vector(51 downto 0);
    myled_0_LED_pin : out std_logic_vector(7 downto 0)
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
      processing_system7_0_PS_SRSTB_pin : in std_logic;
      processing_system7_0_PS_CLK_pin : in std_logic;
      processing_system7_0_PS_PORB_pin : in std_logic;
      processing_system7_0_DDR_Clk : inout std_logic;
      processing_system7_0_DDR_Clk_n : inout std_logic;
      processing_system7_0_DDR_CKE : inout std_logic;
      processing_system7_0_DDR_CS_n : inout std_logic;
      processing_system7_0_DDR_RAS_n : inout std_logic;
      processing_system7_0_DDR_CAS_n : inout std_logic;
      processing_system7_0_DDR_WEB_pin : out std_logic;
      processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
      processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
      processing_system7_0_DDR_ODT : inout std_logic;
      processing_system7_0_DDR_DRSTB : inout std_logic;
      processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
      processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_VRN : inout std_logic;
      processing_system7_0_DDR_VRP : inout std_logic;
      hdmi_iic_sda : inout std_logic;
      hdmi_iic_scl : inout std_logic;
      hdmi_clk : out std_logic;
      hdmi_data : out std_logic_vector(15 downto 0);
      hdmi_hsync : out std_logic;
      hdmi_data_e : out std_logic;
      hdmi_vsync : out std_logic;
      hdmi_spdif : out std_logic;
      hdmi_int : in std_logic;
      otg_oc : in std_logic;
      vga_flyinglogo_0_VSYNC_O_pin : out std_logic;
      vga_flyinglogo_0_HSYNC_O_pin : out std_logic;
      vga_flyinglogo_0_RED_O_pin : out std_logic_vector(3 downto 0);
      vga_flyinglogo_0_GREEN_O_pin : out std_logic_vector(3 downto 0);
      vga_flyinglogo_0_BLUE_O_pin : out std_logic_vector(3 downto 0);
      processing_system7_0_GPIO : inout std_logic_vector(51 downto 0);
      myled_0_LED_pin : out std_logic_vector(7 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      processing_system7_0_MIO => processing_system7_0_MIO,
      processing_system7_0_PS_SRSTB_pin => processing_system7_0_PS_SRSTB_pin,
      processing_system7_0_PS_CLK_pin => processing_system7_0_PS_CLK_pin,
      processing_system7_0_PS_PORB_pin => processing_system7_0_PS_PORB_pin,
      processing_system7_0_DDR_Clk => processing_system7_0_DDR_Clk,
      processing_system7_0_DDR_Clk_n => processing_system7_0_DDR_Clk_n,
      processing_system7_0_DDR_CKE => processing_system7_0_DDR_CKE,
      processing_system7_0_DDR_CS_n => processing_system7_0_DDR_CS_n,
      processing_system7_0_DDR_RAS_n => processing_system7_0_DDR_RAS_n,
      processing_system7_0_DDR_CAS_n => processing_system7_0_DDR_CAS_n,
      processing_system7_0_DDR_WEB_pin => processing_system7_0_DDR_WEB_pin,
      processing_system7_0_DDR_BankAddr => processing_system7_0_DDR_BankAddr,
      processing_system7_0_DDR_Addr => processing_system7_0_DDR_Addr,
      processing_system7_0_DDR_ODT => processing_system7_0_DDR_ODT,
      processing_system7_0_DDR_DRSTB => processing_system7_0_DDR_DRSTB,
      processing_system7_0_DDR_DQ => processing_system7_0_DDR_DQ,
      processing_system7_0_DDR_DM => processing_system7_0_DDR_DM,
      processing_system7_0_DDR_DQS => processing_system7_0_DDR_DQS,
      processing_system7_0_DDR_DQS_n => processing_system7_0_DDR_DQS_n,
      processing_system7_0_DDR_VRN => processing_system7_0_DDR_VRN,
      processing_system7_0_DDR_VRP => processing_system7_0_DDR_VRP,
      hdmi_iic_sda => hdmi_iic_sda,
      hdmi_iic_scl => hdmi_iic_scl,
      hdmi_clk => hdmi_clk,
      hdmi_data => hdmi_data,
      hdmi_hsync => hdmi_hsync,
      hdmi_data_e => hdmi_data_e,
      hdmi_vsync => hdmi_vsync,
      hdmi_spdif => hdmi_spdif,
      hdmi_int => hdmi_int,
      otg_oc => otg_oc,
      vga_flyinglogo_0_VSYNC_O_pin => vga_flyinglogo_0_VSYNC_O_pin,
      vga_flyinglogo_0_HSYNC_O_pin => vga_flyinglogo_0_HSYNC_O_pin,
      vga_flyinglogo_0_RED_O_pin => vga_flyinglogo_0_RED_O_pin,
      vga_flyinglogo_0_GREEN_O_pin => vga_flyinglogo_0_GREEN_O_pin,
      vga_flyinglogo_0_BLUE_O_pin => vga_flyinglogo_0_BLUE_O_pin,
      processing_system7_0_GPIO => processing_system7_0_GPIO,
      myled_0_LED_pin => myled_0_LED_pin
    );

end architecture STRUCTURE;

