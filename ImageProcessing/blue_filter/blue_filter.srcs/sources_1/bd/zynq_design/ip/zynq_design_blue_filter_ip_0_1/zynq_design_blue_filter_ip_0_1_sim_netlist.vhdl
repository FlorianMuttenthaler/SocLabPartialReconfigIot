-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4.1 (lin64) Build 2117270 Tue Jan 30 15:31:13 MST 2018
-- Date        : Wed Jan 16 14:34:01 2019
-- Host        : soclab-VirtualBox running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/soc-lab/Desktop/SoC-Lab/SocLabPartialReconfigIot/ImageProcessing/blue_filter/blue_filter.srcs/sources_1/bd/zynq_design/ip/zynq_design_blue_filter_ip_0_1/zynq_design_blue_filter_ip_0_1_sim_netlist.vhdl
-- Design      : zynq_design_blue_filter_ip_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0_S00_AXI is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0_S00_AXI : entity is "blue_filter_ip_v1_0_S00_AXI";
end zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0_S00_AXI;

architecture STRUCTURE of zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal array_index : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \array_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \array_index[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[15]\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal filter_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 to 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \slv_regs[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs[10][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs[11][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs[11][7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_regs[12][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs[13][7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_regs[13][7]_i_3_n_0\ : STD_LOGIC;
  signal \slv_regs[13][7]_i_4_n_0\ : STD_LOGIC;
  signal \slv_regs[13][7]_i_5_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs[13]_inferred__0/filter_in[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[0]_i_3_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[0]_i_4_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[0]_i_5_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[1]_i_3_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[1]_i_4_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[1]_i_5_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[2]_i_2_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[2]_i_3_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[2]_i_4_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[2]_i_5_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[3]_i_2_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[3]_i_3_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[3]_i_4_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[3]_i_5_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[4]_i_2_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[4]_i_3_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[4]_i_4_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[4]_i_5_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[5]_i_2_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[5]_i_3_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[5]_i_4_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[5]_i_5_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[6]_i_2_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[6]_i_3_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[6]_i_4_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[6]_i_5_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[7]_i_3_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[7]_i_4_n_0\ : STD_LOGIC;
  signal \slv_regs[13]_inferred__0/filter_in[7]_i_5_n_0\ : STD_LOGIC;
  signal \slv_regs[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs[6][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs[8][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs[9][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_regs_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[10]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[11]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[12]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[13]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[8]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_regs_reg[9]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_slv_regs_out_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_slv_regs_out_reg_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_slv_regs_out_reg_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_slv_regs_out_reg_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_slv_regs_out_reg_0_15_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_slv_regs_out_reg_0_15_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_slv_regs_out_reg_0_15_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_slv_regs_out_reg_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \array_index[3]_i_2\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \reg_data_out_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \slv_regs[13][7]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_regs[13]_inferred__0/filter_in[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_regs[13]_inferred__0/filter_in[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_regs[13]_inferred__0/filter_in[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_regs[13]_inferred__0/filter_in[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_regs[13]_inferred__0/filter_in[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_regs[13]_inferred__0/filter_in[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_regs[13]_inferred__0/filter_in[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_regs[13]_inferred__0/filter_in[7]_i_2\ : label is "soft_lutpair1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of slv_regs_out_reg_0_15_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of slv_regs_out_reg_0_15_12_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of slv_regs_out_reg_0_15_18_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of slv_regs_out_reg_0_15_24_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of slv_regs_out_reg_0_15_30_31 : label is "";
  attribute METHODOLOGY_DRC_VIOS of slv_regs_out_reg_0_15_6_11 : label is "";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
\array_index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0E0"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => s00_axi_wstrb(1),
      I2 => \array_index[3]_i_2_n_0\,
      I3 => s00_axi_wstrb(0),
      I4 => s00_axi_wstrb(3),
      O => \array_index[3]_i_1_n_0\
    );
\array_index[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \array_index[3]_i_2_n_0\
    );
\array_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \array_index[3]_i_1_n_0\,
      D => p_0_in_0(0),
      Q => array_index(0),
      R => axi_awready_i_1_n_0
    );
\array_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \array_index[3]_i_1_n_0\,
      D => p_0_in_0(1),
      Q => array_index(1),
      R => axi_awready_i_1_n_0
    );
\array_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \array_index[3]_i_1_n_0\,
      D => p_0_in_0(2),
      Q => array_index(2),
      R => axi_awready_i_1_n_0
    );
\array_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \array_index[3]_i_1_n_0\,
      D => p_0_in_0(3),
      Q => array_index(3),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(4),
      Q => \axi_araddr_reg_n_0_[15]\,
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(0),
      Q => p_0_in(0),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(1),
      Q => p_0_in(1),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(2),
      Q => p_0_in(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready_i_1_n_0,
      D => s00_axi_araddr(3),
      Q => p_0_in(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(8),
      Q => p_0_in_0(8),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(9),
      Q => p_0_in_0(9),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(10),
      Q => p_0_in_0(10),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(11),
      Q => p_0_in_0(11),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(12),
      Q => p_0_in_0(12),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(13),
      Q => p_0_in_0(13),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => p_0_in_0(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => p_0_in_0(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => p_0_in_0(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => p_0_in_0(3),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(4),
      Q => p_0_in_0(4),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(5),
      Q => p_0_in_0(5),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(6),
      Q => p_0_in_0(6),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(7),
      Q => p_0_in_0(7),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\filter_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_regs[13]_0\(0),
      Q => filter_in(0),
      R => axi_awready_i_1_n_0
    );
\filter_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_regs[13]_0\(1),
      Q => filter_in(1),
      R => axi_awready_i_1_n_0
    );
\filter_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_regs[13]_0\(2),
      Q => filter_in(2),
      R => axi_awready_i_1_n_0
    );
\filter_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_regs[13]_0\(3),
      Q => filter_in(3),
      R => axi_awready_i_1_n_0
    );
\filter_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_regs[13]_0\(4),
      Q => filter_in(4),
      R => axi_awready_i_1_n_0
    );
\filter_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_regs[13]_0\(5),
      Q => filter_in(5),
      R => axi_awready_i_1_n_0
    );
\filter_in_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_regs[13]_0\(6),
      Q => filter_in(6),
      R => axi_awready_i_1_n_0
    );
\filter_in_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_regs[13]_0\(7),
      Q => filter_in(7),
      R => axi_awready_i_1_n_0
    );
\reg_data_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(0),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(0)
    );
\reg_data_out_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(10),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(10)
    );
\reg_data_out_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(11),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(11)
    );
\reg_data_out_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(12),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(12)
    );
\reg_data_out_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(13),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(13)
    );
\reg_data_out_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(14),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(14)
    );
\reg_data_out_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(15),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(15)
    );
\reg_data_out_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(16),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(16)
    );
\reg_data_out_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(17),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(17)
    );
\reg_data_out_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(18),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(18)
    );
\reg_data_out_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(19),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(19)
    );
\reg_data_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(1),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(1)
    );
\reg_data_out_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(20),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(20)
    );
\reg_data_out_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(21),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(21)
    );
\reg_data_out_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(22),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(22)
    );
\reg_data_out_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(23),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(23)
    );
\reg_data_out_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(24),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(24)
    );
\reg_data_out_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(25),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(25)
    );
\reg_data_out_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(26),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(26)
    );
\reg_data_out_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(27),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(27)
    );
\reg_data_out_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(28),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(28)
    );
\reg_data_out_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(29),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(29)
    );
\reg_data_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(2),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(2)
    );
\reg_data_out_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(30),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(30)
    );
\reg_data_out_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(31),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(31)
    );
\reg_data_out_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(3),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(3)
    );
\reg_data_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(4),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(4)
    );
\reg_data_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(5),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(5)
    );
\reg_data_out_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(6),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(6)
    );
\reg_data_out_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(7),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(7)
    );
\reg_data_out_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(8),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(8)
    );
\reg_data_out_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => reg_data_out0(9),
      G => \axi_araddr_reg_n_0_[15]\,
      GE => '1',
      Q => reg_data_out(9)
    );
\slv_regs[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      I3 => \slv_regs[13][7]_i_2_n_0\,
      O => \slv_regs[0][7]_i_1_n_0\
    );
\slv_regs[10][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(1),
      I4 => \slv_regs[11][7]_i_2_n_0\,
      O => \slv_regs[10][7]_i_1_n_0\
    );
\slv_regs[11][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(1),
      I4 => \slv_regs[11][7]_i_2_n_0\,
      O => \slv_regs[11][7]_i_1_n_0\
    );
\slv_regs[11][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_regs[13][7]_i_5_n_0\,
      I1 => \slv_regs[13][7]_i_4_n_0\,
      I2 => \array_index[3]_i_2_n_0\,
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in_0(4),
      I5 => p_0_in_0(5),
      O => \slv_regs[11][7]_i_2_n_0\
    );
\slv_regs[12][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => \slv_regs[13][7]_i_2_n_0\,
      O => \slv_regs[12][7]_i_1_n_0\
    );
\slv_regs[13][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(3),
      I3 => \slv_regs[13][7]_i_2_n_0\,
      O => p_1_in(7)
    );
\slv_regs[13][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(4),
      I2 => \slv_regs[13][7]_i_3_n_0\,
      I3 => \slv_regs[13][7]_i_4_n_0\,
      I4 => \slv_regs[13][7]_i_5_n_0\,
      I5 => p_0_in_0(1),
      O => \slv_regs[13][7]_i_2_n_0\
    );
\slv_regs[13][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_wstrb(0),
      O => \slv_regs[13][7]_i_3_n_0\
    );
\slv_regs[13][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in_0(9),
      I1 => p_0_in_0(8),
      I2 => p_0_in_0(7),
      I3 => p_0_in_0(6),
      O => \slv_regs[13][7]_i_4_n_0\
    );
\slv_regs[13][7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in_0(13),
      I1 => p_0_in_0(12),
      I2 => p_0_in_0(11),
      I3 => p_0_in_0(10),
      O => \slv_regs[13][7]_i_5_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs[13]_inferred__0/filter_in[0]_i_2_n_0\,
      I1 => \slv_regs[13]_inferred__0/filter_in[0]_i_3_n_0\,
      I2 => array_index(3),
      I3 => \slv_regs[13]_inferred__0/filter_in[0]_i_4_n_0\,
      I4 => array_index(2),
      I5 => \slv_regs[13]_inferred__0/filter_in[0]_i_5_n_0\,
      O => \slv_regs[13]_0\(0)
    );
\slv_regs[13]_inferred__0/filter_in[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_regs_reg[13]\(0),
      I1 => array_index(0),
      I2 => \slv_regs_reg[12]\(0),
      O => \slv_regs[13]_inferred__0/filter_in[0]_i_2_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[11]\(0),
      I1 => \slv_regs_reg[10]\(0),
      I2 => array_index(1),
      I3 => \slv_regs_reg[9]\(0),
      I4 => array_index(0),
      I5 => \slv_regs_reg[8]\(0),
      O => \slv_regs[13]_inferred__0/filter_in[0]_i_3_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[7]\(0),
      I1 => \slv_regs_reg[6]\(0),
      I2 => array_index(1),
      I3 => \slv_regs_reg[5]\(0),
      I4 => array_index(0),
      I5 => \slv_regs_reg[4]\(0),
      O => \slv_regs[13]_inferred__0/filter_in[0]_i_4_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[3]\(0),
      I1 => \slv_regs_reg[2]\(0),
      I2 => array_index(1),
      I3 => \slv_regs_reg[1]\(0),
      I4 => array_index(0),
      I5 => \slv_regs_reg[0]\(0),
      O => \slv_regs[13]_inferred__0/filter_in[0]_i_5_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs[13]_inferred__0/filter_in[1]_i_2_n_0\,
      I1 => \slv_regs[13]_inferred__0/filter_in[1]_i_3_n_0\,
      I2 => array_index(3),
      I3 => \slv_regs[13]_inferred__0/filter_in[1]_i_4_n_0\,
      I4 => array_index(2),
      I5 => \slv_regs[13]_inferred__0/filter_in[1]_i_5_n_0\,
      O => \slv_regs[13]_0\(1)
    );
\slv_regs[13]_inferred__0/filter_in[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_regs_reg[13]\(1),
      I1 => array_index(0),
      I2 => \slv_regs_reg[12]\(1),
      O => \slv_regs[13]_inferred__0/filter_in[1]_i_2_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[11]\(1),
      I1 => \slv_regs_reg[10]\(1),
      I2 => array_index(1),
      I3 => \slv_regs_reg[9]\(1),
      I4 => array_index(0),
      I5 => \slv_regs_reg[8]\(1),
      O => \slv_regs[13]_inferred__0/filter_in[1]_i_3_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[7]\(1),
      I1 => \slv_regs_reg[6]\(1),
      I2 => array_index(1),
      I3 => \slv_regs_reg[5]\(1),
      I4 => array_index(0),
      I5 => \slv_regs_reg[4]\(1),
      O => \slv_regs[13]_inferred__0/filter_in[1]_i_4_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[3]\(1),
      I1 => \slv_regs_reg[2]\(1),
      I2 => array_index(1),
      I3 => \slv_regs_reg[1]\(1),
      I4 => array_index(0),
      I5 => \slv_regs_reg[0]\(1),
      O => \slv_regs[13]_inferred__0/filter_in[1]_i_5_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs[13]_inferred__0/filter_in[2]_i_2_n_0\,
      I1 => \slv_regs[13]_inferred__0/filter_in[2]_i_3_n_0\,
      I2 => array_index(3),
      I3 => \slv_regs[13]_inferred__0/filter_in[2]_i_4_n_0\,
      I4 => array_index(2),
      I5 => \slv_regs[13]_inferred__0/filter_in[2]_i_5_n_0\,
      O => \slv_regs[13]_0\(2)
    );
\slv_regs[13]_inferred__0/filter_in[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_regs_reg[13]\(2),
      I1 => array_index(0),
      I2 => \slv_regs_reg[12]\(2),
      O => \slv_regs[13]_inferred__0/filter_in[2]_i_2_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[11]\(2),
      I1 => \slv_regs_reg[10]\(2),
      I2 => array_index(1),
      I3 => \slv_regs_reg[9]\(2),
      I4 => array_index(0),
      I5 => \slv_regs_reg[8]\(2),
      O => \slv_regs[13]_inferred__0/filter_in[2]_i_3_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[7]\(2),
      I1 => \slv_regs_reg[6]\(2),
      I2 => array_index(1),
      I3 => \slv_regs_reg[5]\(2),
      I4 => array_index(0),
      I5 => \slv_regs_reg[4]\(2),
      O => \slv_regs[13]_inferred__0/filter_in[2]_i_4_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[3]\(2),
      I1 => \slv_regs_reg[2]\(2),
      I2 => array_index(1),
      I3 => \slv_regs_reg[1]\(2),
      I4 => array_index(0),
      I5 => \slv_regs_reg[0]\(2),
      O => \slv_regs[13]_inferred__0/filter_in[2]_i_5_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs[13]_inferred__0/filter_in[3]_i_2_n_0\,
      I1 => \slv_regs[13]_inferred__0/filter_in[3]_i_3_n_0\,
      I2 => array_index(3),
      I3 => \slv_regs[13]_inferred__0/filter_in[3]_i_4_n_0\,
      I4 => array_index(2),
      I5 => \slv_regs[13]_inferred__0/filter_in[3]_i_5_n_0\,
      O => \slv_regs[13]_0\(3)
    );
\slv_regs[13]_inferred__0/filter_in[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_regs_reg[13]\(3),
      I1 => array_index(0),
      I2 => \slv_regs_reg[12]\(3),
      O => \slv_regs[13]_inferred__0/filter_in[3]_i_2_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[11]\(3),
      I1 => \slv_regs_reg[10]\(3),
      I2 => array_index(1),
      I3 => \slv_regs_reg[9]\(3),
      I4 => array_index(0),
      I5 => \slv_regs_reg[8]\(3),
      O => \slv_regs[13]_inferred__0/filter_in[3]_i_3_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[7]\(3),
      I1 => \slv_regs_reg[6]\(3),
      I2 => array_index(1),
      I3 => \slv_regs_reg[5]\(3),
      I4 => array_index(0),
      I5 => \slv_regs_reg[4]\(3),
      O => \slv_regs[13]_inferred__0/filter_in[3]_i_4_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[3]\(3),
      I1 => \slv_regs_reg[2]\(3),
      I2 => array_index(1),
      I3 => \slv_regs_reg[1]\(3),
      I4 => array_index(0),
      I5 => \slv_regs_reg[0]\(3),
      O => \slv_regs[13]_inferred__0/filter_in[3]_i_5_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs[13]_inferred__0/filter_in[4]_i_2_n_0\,
      I1 => \slv_regs[13]_inferred__0/filter_in[4]_i_3_n_0\,
      I2 => array_index(3),
      I3 => \slv_regs[13]_inferred__0/filter_in[4]_i_4_n_0\,
      I4 => array_index(2),
      I5 => \slv_regs[13]_inferred__0/filter_in[4]_i_5_n_0\,
      O => \slv_regs[13]_0\(4)
    );
\slv_regs[13]_inferred__0/filter_in[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_regs_reg[13]\(4),
      I1 => array_index(0),
      I2 => \slv_regs_reg[12]\(4),
      O => \slv_regs[13]_inferred__0/filter_in[4]_i_2_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[11]\(4),
      I1 => \slv_regs_reg[10]\(4),
      I2 => array_index(1),
      I3 => \slv_regs_reg[9]\(4),
      I4 => array_index(0),
      I5 => \slv_regs_reg[8]\(4),
      O => \slv_regs[13]_inferred__0/filter_in[4]_i_3_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[7]\(4),
      I1 => \slv_regs_reg[6]\(4),
      I2 => array_index(1),
      I3 => \slv_regs_reg[5]\(4),
      I4 => array_index(0),
      I5 => \slv_regs_reg[4]\(4),
      O => \slv_regs[13]_inferred__0/filter_in[4]_i_4_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[3]\(4),
      I1 => \slv_regs_reg[2]\(4),
      I2 => array_index(1),
      I3 => \slv_regs_reg[1]\(4),
      I4 => array_index(0),
      I5 => \slv_regs_reg[0]\(4),
      O => \slv_regs[13]_inferred__0/filter_in[4]_i_5_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs[13]_inferred__0/filter_in[5]_i_2_n_0\,
      I1 => \slv_regs[13]_inferred__0/filter_in[5]_i_3_n_0\,
      I2 => array_index(3),
      I3 => \slv_regs[13]_inferred__0/filter_in[5]_i_4_n_0\,
      I4 => array_index(2),
      I5 => \slv_regs[13]_inferred__0/filter_in[5]_i_5_n_0\,
      O => \slv_regs[13]_0\(5)
    );
\slv_regs[13]_inferred__0/filter_in[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_regs_reg[13]\(5),
      I1 => array_index(0),
      I2 => \slv_regs_reg[12]\(5),
      O => \slv_regs[13]_inferred__0/filter_in[5]_i_2_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[11]\(5),
      I1 => \slv_regs_reg[10]\(5),
      I2 => array_index(1),
      I3 => \slv_regs_reg[9]\(5),
      I4 => array_index(0),
      I5 => \slv_regs_reg[8]\(5),
      O => \slv_regs[13]_inferred__0/filter_in[5]_i_3_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[7]\(5),
      I1 => \slv_regs_reg[6]\(5),
      I2 => array_index(1),
      I3 => \slv_regs_reg[5]\(5),
      I4 => array_index(0),
      I5 => \slv_regs_reg[4]\(5),
      O => \slv_regs[13]_inferred__0/filter_in[5]_i_4_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[3]\(5),
      I1 => \slv_regs_reg[2]\(5),
      I2 => array_index(1),
      I3 => \slv_regs_reg[1]\(5),
      I4 => array_index(0),
      I5 => \slv_regs_reg[0]\(5),
      O => \slv_regs[13]_inferred__0/filter_in[5]_i_5_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs[13]_inferred__0/filter_in[6]_i_2_n_0\,
      I1 => \slv_regs[13]_inferred__0/filter_in[6]_i_3_n_0\,
      I2 => array_index(3),
      I3 => \slv_regs[13]_inferred__0/filter_in[6]_i_4_n_0\,
      I4 => array_index(2),
      I5 => \slv_regs[13]_inferred__0/filter_in[6]_i_5_n_0\,
      O => \slv_regs[13]_0\(6)
    );
\slv_regs[13]_inferred__0/filter_in[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_regs_reg[13]\(6),
      I1 => array_index(0),
      I2 => \slv_regs_reg[12]\(6),
      O => \slv_regs[13]_inferred__0/filter_in[6]_i_2_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[11]\(6),
      I1 => \slv_regs_reg[10]\(6),
      I2 => array_index(1),
      I3 => \slv_regs_reg[9]\(6),
      I4 => array_index(0),
      I5 => \slv_regs_reg[8]\(6),
      O => \slv_regs[13]_inferred__0/filter_in[6]_i_3_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[7]\(6),
      I1 => \slv_regs_reg[6]\(6),
      I2 => array_index(1),
      I3 => \slv_regs_reg[5]\(6),
      I4 => array_index(0),
      I5 => \slv_regs_reg[4]\(6),
      O => \slv_regs[13]_inferred__0/filter_in[6]_i_4_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[3]\(6),
      I1 => \slv_regs_reg[2]\(6),
      I2 => array_index(1),
      I3 => \slv_regs_reg[1]\(6),
      I4 => array_index(0),
      I5 => \slv_regs_reg[0]\(6),
      O => \slv_regs[13]_inferred__0/filter_in[6]_i_5_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs[13]_inferred__0/filter_in[7]_i_2_n_0\,
      I1 => \slv_regs[13]_inferred__0/filter_in[7]_i_3_n_0\,
      I2 => array_index(3),
      I3 => \slv_regs[13]_inferred__0/filter_in[7]_i_4_n_0\,
      I4 => array_index(2),
      I5 => \slv_regs[13]_inferred__0/filter_in[7]_i_5_n_0\,
      O => \slv_regs[13]_0\(7)
    );
\slv_regs[13]_inferred__0/filter_in[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_regs_reg[13]\(7),
      I1 => array_index(0),
      I2 => \slv_regs_reg[12]\(7),
      O => \slv_regs[13]_inferred__0/filter_in[7]_i_2_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[11]\(7),
      I1 => \slv_regs_reg[10]\(7),
      I2 => array_index(1),
      I3 => \slv_regs_reg[9]\(7),
      I4 => array_index(0),
      I5 => \slv_regs_reg[8]\(7),
      O => \slv_regs[13]_inferred__0/filter_in[7]_i_3_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[7]\(7),
      I1 => \slv_regs_reg[6]\(7),
      I2 => array_index(1),
      I3 => \slv_regs_reg[5]\(7),
      I4 => array_index(0),
      I5 => \slv_regs_reg[4]\(7),
      O => \slv_regs[13]_inferred__0/filter_in[7]_i_4_n_0\
    );
\slv_regs[13]_inferred__0/filter_in[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_regs_reg[3]\(7),
      I1 => \slv_regs_reg[2]\(7),
      I2 => array_index(1),
      I3 => \slv_regs_reg[1]\(7),
      I4 => array_index(0),
      I5 => \slv_regs_reg[0]\(7),
      O => \slv_regs[13]_inferred__0/filter_in[7]_i_5_n_0\
    );
\slv_regs[1][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      I3 => \slv_regs[13][7]_i_2_n_0\,
      O => \slv_regs[1][7]_i_1_n_0\
    );
\slv_regs[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(1),
      I4 => \slv_regs[11][7]_i_2_n_0\,
      O => \slv_regs[2][7]_i_1_n_0\
    );
\slv_regs[3][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(1),
      I4 => \slv_regs[11][7]_i_2_n_0\,
      O => \slv_regs[3][7]_i_1_n_0\
    );
\slv_regs[4][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => \slv_regs[13][7]_i_2_n_0\,
      O => \slv_regs[4][7]_i_1_n_0\
    );
\slv_regs[5][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => \slv_regs[13][7]_i_2_n_0\,
      O => \slv_regs[5][7]_i_1_n_0\
    );
\slv_regs[6][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(1),
      I4 => \slv_regs[11][7]_i_2_n_0\,
      O => \slv_regs[6][7]_i_1_n_0\
    );
\slv_regs[7][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(1),
      I4 => \slv_regs[11][7]_i_2_n_0\,
      O => \slv_regs[7][7]_i_1_n_0\
    );
\slv_regs[8][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => \slv_regs[13][7]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(0),
      O => \slv_regs[8][7]_i_1_n_0\
    );
\slv_regs[9][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => \slv_regs[13][7]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(0),
      O => \slv_regs[9][7]_i_1_n_0\
    );
slv_regs_out_reg_0_15_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => p_0_in(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => p_0_in(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => p_0_in(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => array_index(3 downto 0),
      DIA(1 downto 0) => filter_in(1 downto 0),
      DIB(1 downto 0) => filter_in(3 downto 2),
      DIC(1 downto 0) => filter_in(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_data_out0(1 downto 0),
      DOB(1 downto 0) => reg_data_out0(3 downto 2),
      DOC(1 downto 0) => reg_data_out0(5 downto 4),
      DOD(1 downto 0) => NLW_slv_regs_out_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s00_axi_aclk,
      WE => s00_axi_aresetn
    );
slv_regs_out_reg_0_15_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => p_0_in(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => p_0_in(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => p_0_in(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => array_index(3 downto 0),
      DIA(1 downto 0) => B"00",
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_data_out0(13 downto 12),
      DOB(1 downto 0) => reg_data_out0(15 downto 14),
      DOC(1 downto 0) => reg_data_out0(17 downto 16),
      DOD(1 downto 0) => NLW_slv_regs_out_reg_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s00_axi_aclk,
      WE => s00_axi_aresetn
    );
slv_regs_out_reg_0_15_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => p_0_in(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => p_0_in(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => p_0_in(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => array_index(3 downto 0),
      DIA(1 downto 0) => B"00",
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_data_out0(19 downto 18),
      DOB(1 downto 0) => reg_data_out0(21 downto 20),
      DOC(1 downto 0) => reg_data_out0(23 downto 22),
      DOD(1 downto 0) => NLW_slv_regs_out_reg_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s00_axi_aclk,
      WE => s00_axi_aresetn
    );
slv_regs_out_reg_0_15_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => p_0_in(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => p_0_in(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => p_0_in(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => array_index(3 downto 0),
      DIA(1 downto 0) => B"00",
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_data_out0(25 downto 24),
      DOB(1 downto 0) => reg_data_out0(27 downto 26),
      DOC(1 downto 0) => reg_data_out0(29 downto 28),
      DOD(1 downto 0) => NLW_slv_regs_out_reg_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s00_axi_aclk,
      WE => s00_axi_aresetn
    );
slv_regs_out_reg_0_15_30_31: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => p_0_in(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => p_0_in(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => p_0_in(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => array_index(3 downto 0),
      DIA(1 downto 0) => B"00",
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_data_out0(31 downto 30),
      DOB(1 downto 0) => NLW_slv_regs_out_reg_0_15_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_slv_regs_out_reg_0_15_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_slv_regs_out_reg_0_15_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => s00_axi_aclk,
      WE => s00_axi_aresetn
    );
slv_regs_out_reg_0_15_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => p_0_in(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => p_0_in(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => p_0_in(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => array_index(3 downto 0),
      DIA(1 downto 0) => filter_in(7 downto 6),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_data_out0(7 downto 6),
      DOB(1 downto 0) => reg_data_out0(9 downto 8),
      DOC(1 downto 0) => reg_data_out0(11 downto 10),
      DOD(1 downto 0) => NLW_slv_regs_out_reg_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s00_axi_aclk,
      WE => s00_axi_aresetn
    );
\slv_regs_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[0][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[0]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[0][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[0]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[0][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[0]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[0][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[0]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[0][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[0]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[0][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[0]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[0][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[0]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[0][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[0]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[10][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[10]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[10][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[10]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[10][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[10]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[10][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[10]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[10][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[10][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[10]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[10][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[10]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[10][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[10][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[10]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[10][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[10][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[10]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[11][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[11][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[11]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[11][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[11][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[11]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[11][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[11]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[11][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[11][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[11]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[11][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[11]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[11][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[11][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[11]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[11][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[11][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[11]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[11][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[11][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[11]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[12][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[12]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[12][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[12]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[12][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[12]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[12][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[12]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[12][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[12]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[12][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[12]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[12][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[12][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[12]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[12][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[12][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[12]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[13][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[13]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[13]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[13]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[13]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[13]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[13]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[13][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[13]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[13][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[13]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[1][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[1]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[1][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[1]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[1][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[1]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[1][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[1]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[1][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[1]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[1][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[1]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[1][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[1]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[1][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[1]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[2][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[2]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[2][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[2]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[2][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[2]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[2][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[2]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[2][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[2]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[2][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[2]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[2][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[2]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[2][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[2]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[3][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[3]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[3][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[3]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[3][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[3]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[3][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[3]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[3][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[3]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[3][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[3]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[3][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[3]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[3][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[3]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[4][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[4]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[4][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[4]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[4][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[4]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[4][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[4]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[4][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[4]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[4][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[4]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[4][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[4]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[4][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[4]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[5][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[5]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[5][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[5]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[5][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[5]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[5][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[5]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[5][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[5]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[5][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[5]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[5][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[5]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[5][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[5]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[6][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[6]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[6][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[6]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[6][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[6]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[6][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[6]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[6][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[6]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[6][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[6]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[6][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[6]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[6][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[6]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[7][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[7]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[7][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[7]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[7][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[7]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[7][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[7]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[7][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[7]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[7][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[7]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[7][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[7]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[7][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[7]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[8][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[8]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[8][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[8]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[8][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[8]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[8][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[8]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[8][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[8]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[8][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[8][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[8]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[8][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[8][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[8]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[8][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[8][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[8]\(7),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[9][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_regs_reg[9]\(0),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[9][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_regs_reg[9]\(1),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[9][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_regs_reg[9]\(2),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[9][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_regs_reg[9]\(3),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[9][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_regs_reg[9]\(4),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[9][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_regs_reg[9]\(5),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[9][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_regs_reg[9]\(6),
      R => axi_awready_i_1_n_0
    );
\slv_regs_reg[9][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_regs[9][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_regs_reg[9]\(7),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0 is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0 : entity is "blue_filter_ip_v1_0";
end zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0;

architecture STRUCTURE of zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0 is
begin
blue_filter_ip_v1_0_S00_AXI_inst: entity work.zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 0) => s00_axi_araddr(4 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(13 downto 0) => s00_axi_awaddr(13 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(7 downto 0) => s00_axi_wdata(7 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_design_blue_filter_ip_0_1 is
  port (
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zynq_design_blue_filter_ip_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zynq_design_blue_filter_ip_0_1 : entity is "zynq_design_blue_filter_ip_0_1,blue_filter_ip_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zynq_design_blue_filter_ip_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of zynq_design_blue_filter_ip_0_1 : entity is "blue_filter_ip_v1_0,Vivado 2017.4.1";
end zynq_design_blue_filter_ip_0_1;

architecture STRUCTURE of zynq_design_blue_filter_ip_0_1 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zynq_design_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zynq_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4) => s00_axi_araddr(15),
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(5 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(13 downto 0) => s00_axi_awaddr(15 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(7 downto 0) => s00_axi_wdata(7 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
