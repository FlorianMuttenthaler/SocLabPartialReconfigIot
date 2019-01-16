// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (lin64) Build 2117270 Tue Jan 30 15:31:13 MST 2018
// Date        : Wed Jan 16 14:34:01 2019
// Host        : soclab-VirtualBox running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/soc-lab/Desktop/SoC-Lab/SocLabPartialReconfigIot/ImageProcessing/blue_filter/blue_filter.srcs/sources_1/bd/zynq_design/ip/zynq_design_blue_filter_ip_0_1/zynq_design_blue_filter_ip_0_1_sim_netlist.v
// Design      : zynq_design_blue_filter_ip_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zynq_design_blue_filter_ip_0_1,blue_filter_ip_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blue_filter_ip_v1_0,Vivado 2017.4.1" *) 
(* NotValidForBitStream *)
module zynq_design_blue_filter_ip_0_1
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zynq_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [15:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [15:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zynq_design_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [15:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [15:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr({s00_axi_araddr[15],s00_axi_araddr[5:2]}),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[15:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[7:0]),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "blue_filter_ip_v1_0" *) 
module zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0
   (S_AXI_ARREADY,
    s00_axi_rvalid,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_ARREADY;
  output s00_axi_rvalid;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [4:0]s00_axi_araddr;
  input [13:0]s00_axi_awaddr;
  input [7:0]s00_axi_wdata;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [13:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [7:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0_S00_AXI blue_filter_ip_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "blue_filter_ip_v1_0_S00_AXI" *) 
module zynq_design_blue_filter_ip_0_1_blue_filter_ip_v1_0_S00_AXI
   (S_AXI_ARREADY,
    s00_axi_rvalid,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_ARREADY;
  output s00_axi_rvalid;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [4:0]s00_axi_araddr;
  input [13:0]s00_axi_awaddr;
  input [7:0]s00_axi_wdata;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [3:0]array_index;
  wire \array_index[3]_i_1_n_0 ;
  wire \array_index[3]_i_2_n_0 ;
  wire \axi_araddr_reg_n_0_[15] ;
  wire axi_arready_i_1_n_0;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [7:0]filter_in;
  wire [3:0]p_0_in;
  wire [13:0]p_0_in_0;
  wire [7:7]p_1_in;
  wire [31:0]reg_data_out;
  wire [31:0]reg_data_out0;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [13:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [7:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_regs[0][7]_i_1_n_0 ;
  wire \slv_regs[10][7]_i_1_n_0 ;
  wire \slv_regs[11][7]_i_1_n_0 ;
  wire \slv_regs[11][7]_i_2_n_0 ;
  wire \slv_regs[12][7]_i_1_n_0 ;
  wire \slv_regs[13][7]_i_2_n_0 ;
  wire \slv_regs[13][7]_i_3_n_0 ;
  wire \slv_regs[13][7]_i_4_n_0 ;
  wire \slv_regs[13][7]_i_5_n_0 ;
  wire [7:0]\slv_regs[13]_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[0]_i_2_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[0]_i_3_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[0]_i_4_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[0]_i_5_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[1]_i_2_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[1]_i_3_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[1]_i_4_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[1]_i_5_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[2]_i_2_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[2]_i_3_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[2]_i_4_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[2]_i_5_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[3]_i_2_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[3]_i_3_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[3]_i_4_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[3]_i_5_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[4]_i_2_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[4]_i_3_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[4]_i_4_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[4]_i_5_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[5]_i_2_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[5]_i_3_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[5]_i_4_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[5]_i_5_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[6]_i_2_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[6]_i_3_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[6]_i_4_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[6]_i_5_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[7]_i_2_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[7]_i_3_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[7]_i_4_n_0 ;
  wire \slv_regs[13]_inferred__0/filter_in[7]_i_5_n_0 ;
  wire \slv_regs[1][7]_i_1_n_0 ;
  wire \slv_regs[2][7]_i_1_n_0 ;
  wire \slv_regs[3][7]_i_1_n_0 ;
  wire \slv_regs[4][7]_i_1_n_0 ;
  wire \slv_regs[5][7]_i_1_n_0 ;
  wire \slv_regs[6][7]_i_1_n_0 ;
  wire \slv_regs[7][7]_i_1_n_0 ;
  wire \slv_regs[8][7]_i_1_n_0 ;
  wire \slv_regs[9][7]_i_1_n_0 ;
  wire [7:0]\slv_regs_reg[0] ;
  wire [7:0]\slv_regs_reg[10] ;
  wire [7:0]\slv_regs_reg[11] ;
  wire [7:0]\slv_regs_reg[12] ;
  wire [7:0]\slv_regs_reg[13] ;
  wire [7:0]\slv_regs_reg[1] ;
  wire [7:0]\slv_regs_reg[2] ;
  wire [7:0]\slv_regs_reg[3] ;
  wire [7:0]\slv_regs_reg[4] ;
  wire [7:0]\slv_regs_reg[5] ;
  wire [7:0]\slv_regs_reg[6] ;
  wire [7:0]\slv_regs_reg[7] ;
  wire [7:0]\slv_regs_reg[8] ;
  wire [7:0]\slv_regs_reg[9] ;
  wire [1:0]NLW_slv_regs_out_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_slv_regs_out_reg_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_slv_regs_out_reg_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_slv_regs_out_reg_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_slv_regs_out_reg_0_15_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_slv_regs_out_reg_0_15_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_slv_regs_out_reg_0_15_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_slv_regs_out_reg_0_15_6_11_DOD_UNCONNECTED;

  LUT5 #(
    .INIT(32'hF0F0F0E0)) 
    \array_index[3]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(s00_axi_wstrb[1]),
        .I2(\array_index[3]_i_2_n_0 ),
        .I3(s00_axi_wstrb[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\array_index[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \array_index[3]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(\array_index[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \array_index_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\array_index[3]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(array_index[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \array_index_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\array_index[3]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(array_index[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \array_index_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\array_index[3]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(array_index[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \array_index_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\array_index[3]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(array_index[3]),
        .R(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[4]),
        .Q(\axi_araddr_reg_n_0_[15] ),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[0]),
        .Q(p_0_in[0]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[1]),
        .Q(p_0_in[1]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[2]),
        .Q(p_0_in[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[3]),
        .Q(p_0_in[3]),
        .S(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[8]),
        .Q(p_0_in_0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[9]),
        .Q(p_0_in_0[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[10]),
        .Q(p_0_in_0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[11]),
        .Q(p_0_in_0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[12]),
        .Q(p_0_in_0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[13]),
        .Q(p_0_in_0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in_0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in_0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in_0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in_0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[4]),
        .Q(p_0_in_0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[5]),
        .Q(p_0_in_0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[6]),
        .Q(p_0_in_0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[7]),
        .Q(p_0_in_0[7]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_in_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_regs[13]_0 [0]),
        .Q(filter_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_in_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_regs[13]_0 [1]),
        .Q(filter_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_in_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_regs[13]_0 [2]),
        .Q(filter_in[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_in_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_regs[13]_0 [3]),
        .Q(filter_in[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_in_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_regs[13]_0 [4]),
        .Q(filter_in[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_in_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_regs[13]_0 [5]),
        .Q(filter_in[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_in_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_regs[13]_0 [6]),
        .Q(filter_in[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_in_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_regs[13]_0 [7]),
        .Q(filter_in[7]),
        .R(axi_awready_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[0] 
       (.CLR(1'b0),
        .D(reg_data_out0[0]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[10] 
       (.CLR(1'b0),
        .D(reg_data_out0[10]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[11] 
       (.CLR(1'b0),
        .D(reg_data_out0[11]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[12] 
       (.CLR(1'b0),
        .D(reg_data_out0[12]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[13] 
       (.CLR(1'b0),
        .D(reg_data_out0[13]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[14] 
       (.CLR(1'b0),
        .D(reg_data_out0[14]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[15] 
       (.CLR(1'b0),
        .D(reg_data_out0[15]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[16] 
       (.CLR(1'b0),
        .D(reg_data_out0[16]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[17] 
       (.CLR(1'b0),
        .D(reg_data_out0[17]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[18] 
       (.CLR(1'b0),
        .D(reg_data_out0[18]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[19] 
       (.CLR(1'b0),
        .D(reg_data_out0[19]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[1] 
       (.CLR(1'b0),
        .D(reg_data_out0[1]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[20] 
       (.CLR(1'b0),
        .D(reg_data_out0[20]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[21] 
       (.CLR(1'b0),
        .D(reg_data_out0[21]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[22] 
       (.CLR(1'b0),
        .D(reg_data_out0[22]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[23] 
       (.CLR(1'b0),
        .D(reg_data_out0[23]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[24] 
       (.CLR(1'b0),
        .D(reg_data_out0[24]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[25] 
       (.CLR(1'b0),
        .D(reg_data_out0[25]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[26] 
       (.CLR(1'b0),
        .D(reg_data_out0[26]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[27] 
       (.CLR(1'b0),
        .D(reg_data_out0[27]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[28] 
       (.CLR(1'b0),
        .D(reg_data_out0[28]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[29] 
       (.CLR(1'b0),
        .D(reg_data_out0[29]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[2] 
       (.CLR(1'b0),
        .D(reg_data_out0[2]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[30] 
       (.CLR(1'b0),
        .D(reg_data_out0[30]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[31] 
       (.CLR(1'b0),
        .D(reg_data_out0[31]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[3] 
       (.CLR(1'b0),
        .D(reg_data_out0[3]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[4] 
       (.CLR(1'b0),
        .D(reg_data_out0[4]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[5] 
       (.CLR(1'b0),
        .D(reg_data_out0[5]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[6] 
       (.CLR(1'b0),
        .D(reg_data_out0[6]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[7] 
       (.CLR(1'b0),
        .D(reg_data_out0[7]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[8] 
       (.CLR(1'b0),
        .D(reg_data_out0[8]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \reg_data_out_reg[9] 
       (.CLR(1'b0),
        .D(reg_data_out0[9]),
        .G(\axi_araddr_reg_n_0_[15] ),
        .GE(1'b1),
        .Q(reg_data_out[9]));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_regs[0][7]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(\slv_regs[13][7]_i_2_n_0 ),
        .O(\slv_regs[0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_regs[10][7]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(\slv_regs[11][7]_i_2_n_0 ),
        .O(\slv_regs[10][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \slv_regs[11][7]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(\slv_regs[11][7]_i_2_n_0 ),
        .O(\slv_regs[11][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_regs[11][7]_i_2 
       (.I0(\slv_regs[13][7]_i_5_n_0 ),
        .I1(\slv_regs[13][7]_i_4_n_0 ),
        .I2(\array_index[3]_i_2_n_0 ),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in_0[4]),
        .I5(p_0_in_0[5]),
        .O(\slv_regs[11][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_regs[12][7]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(\slv_regs[13][7]_i_2_n_0 ),
        .O(\slv_regs[12][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_regs[13][7]_i_1 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[3]),
        .I3(\slv_regs[13][7]_i_2_n_0 ),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \slv_regs[13][7]_i_2 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[4]),
        .I2(\slv_regs[13][7]_i_3_n_0 ),
        .I3(\slv_regs[13][7]_i_4_n_0 ),
        .I4(\slv_regs[13][7]_i_5_n_0 ),
        .I5(p_0_in_0[1]),
        .O(\slv_regs[13][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_regs[13][7]_i_3 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_regs[13][7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \slv_regs[13][7]_i_4 
       (.I0(p_0_in_0[9]),
        .I1(p_0_in_0[8]),
        .I2(p_0_in_0[7]),
        .I3(p_0_in_0[6]),
        .O(\slv_regs[13][7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \slv_regs[13][7]_i_5 
       (.I0(p_0_in_0[13]),
        .I1(p_0_in_0[12]),
        .I2(p_0_in_0[11]),
        .I3(p_0_in_0[10]),
        .O(\slv_regs[13][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[0]_i_1 
       (.I0(\slv_regs[13]_inferred__0/filter_in[0]_i_2_n_0 ),
        .I1(\slv_regs[13]_inferred__0/filter_in[0]_i_3_n_0 ),
        .I2(array_index[3]),
        .I3(\slv_regs[13]_inferred__0/filter_in[0]_i_4_n_0 ),
        .I4(array_index[2]),
        .I5(\slv_regs[13]_inferred__0/filter_in[0]_i_5_n_0 ),
        .O(\slv_regs[13]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_regs[13]_inferred__0/filter_in[0]_i_2 
       (.I0(\slv_regs_reg[13] [0]),
        .I1(array_index[0]),
        .I2(\slv_regs_reg[12] [0]),
        .O(\slv_regs[13]_inferred__0/filter_in[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[0]_i_3 
       (.I0(\slv_regs_reg[11] [0]),
        .I1(\slv_regs_reg[10] [0]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[9] [0]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[8] [0]),
        .O(\slv_regs[13]_inferred__0/filter_in[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[0]_i_4 
       (.I0(\slv_regs_reg[7] [0]),
        .I1(\slv_regs_reg[6] [0]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[5] [0]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[4] [0]),
        .O(\slv_regs[13]_inferred__0/filter_in[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[0]_i_5 
       (.I0(\slv_regs_reg[3] [0]),
        .I1(\slv_regs_reg[2] [0]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[1] [0]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[0] [0]),
        .O(\slv_regs[13]_inferred__0/filter_in[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[1]_i_1 
       (.I0(\slv_regs[13]_inferred__0/filter_in[1]_i_2_n_0 ),
        .I1(\slv_regs[13]_inferred__0/filter_in[1]_i_3_n_0 ),
        .I2(array_index[3]),
        .I3(\slv_regs[13]_inferred__0/filter_in[1]_i_4_n_0 ),
        .I4(array_index[2]),
        .I5(\slv_regs[13]_inferred__0/filter_in[1]_i_5_n_0 ),
        .O(\slv_regs[13]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_regs[13]_inferred__0/filter_in[1]_i_2 
       (.I0(\slv_regs_reg[13] [1]),
        .I1(array_index[0]),
        .I2(\slv_regs_reg[12] [1]),
        .O(\slv_regs[13]_inferred__0/filter_in[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[1]_i_3 
       (.I0(\slv_regs_reg[11] [1]),
        .I1(\slv_regs_reg[10] [1]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[9] [1]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[8] [1]),
        .O(\slv_regs[13]_inferred__0/filter_in[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[1]_i_4 
       (.I0(\slv_regs_reg[7] [1]),
        .I1(\slv_regs_reg[6] [1]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[5] [1]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[4] [1]),
        .O(\slv_regs[13]_inferred__0/filter_in[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[1]_i_5 
       (.I0(\slv_regs_reg[3] [1]),
        .I1(\slv_regs_reg[2] [1]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[1] [1]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[0] [1]),
        .O(\slv_regs[13]_inferred__0/filter_in[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[2]_i_1 
       (.I0(\slv_regs[13]_inferred__0/filter_in[2]_i_2_n_0 ),
        .I1(\slv_regs[13]_inferred__0/filter_in[2]_i_3_n_0 ),
        .I2(array_index[3]),
        .I3(\slv_regs[13]_inferred__0/filter_in[2]_i_4_n_0 ),
        .I4(array_index[2]),
        .I5(\slv_regs[13]_inferred__0/filter_in[2]_i_5_n_0 ),
        .O(\slv_regs[13]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_regs[13]_inferred__0/filter_in[2]_i_2 
       (.I0(\slv_regs_reg[13] [2]),
        .I1(array_index[0]),
        .I2(\slv_regs_reg[12] [2]),
        .O(\slv_regs[13]_inferred__0/filter_in[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[2]_i_3 
       (.I0(\slv_regs_reg[11] [2]),
        .I1(\slv_regs_reg[10] [2]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[9] [2]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[8] [2]),
        .O(\slv_regs[13]_inferred__0/filter_in[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[2]_i_4 
       (.I0(\slv_regs_reg[7] [2]),
        .I1(\slv_regs_reg[6] [2]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[5] [2]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[4] [2]),
        .O(\slv_regs[13]_inferred__0/filter_in[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[2]_i_5 
       (.I0(\slv_regs_reg[3] [2]),
        .I1(\slv_regs_reg[2] [2]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[1] [2]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[0] [2]),
        .O(\slv_regs[13]_inferred__0/filter_in[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[3]_i_1 
       (.I0(\slv_regs[13]_inferred__0/filter_in[3]_i_2_n_0 ),
        .I1(\slv_regs[13]_inferred__0/filter_in[3]_i_3_n_0 ),
        .I2(array_index[3]),
        .I3(\slv_regs[13]_inferred__0/filter_in[3]_i_4_n_0 ),
        .I4(array_index[2]),
        .I5(\slv_regs[13]_inferred__0/filter_in[3]_i_5_n_0 ),
        .O(\slv_regs[13]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_regs[13]_inferred__0/filter_in[3]_i_2 
       (.I0(\slv_regs_reg[13] [3]),
        .I1(array_index[0]),
        .I2(\slv_regs_reg[12] [3]),
        .O(\slv_regs[13]_inferred__0/filter_in[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[3]_i_3 
       (.I0(\slv_regs_reg[11] [3]),
        .I1(\slv_regs_reg[10] [3]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[9] [3]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[8] [3]),
        .O(\slv_regs[13]_inferred__0/filter_in[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[3]_i_4 
       (.I0(\slv_regs_reg[7] [3]),
        .I1(\slv_regs_reg[6] [3]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[5] [3]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[4] [3]),
        .O(\slv_regs[13]_inferred__0/filter_in[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[3]_i_5 
       (.I0(\slv_regs_reg[3] [3]),
        .I1(\slv_regs_reg[2] [3]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[1] [3]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[0] [3]),
        .O(\slv_regs[13]_inferred__0/filter_in[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[4]_i_1 
       (.I0(\slv_regs[13]_inferred__0/filter_in[4]_i_2_n_0 ),
        .I1(\slv_regs[13]_inferred__0/filter_in[4]_i_3_n_0 ),
        .I2(array_index[3]),
        .I3(\slv_regs[13]_inferred__0/filter_in[4]_i_4_n_0 ),
        .I4(array_index[2]),
        .I5(\slv_regs[13]_inferred__0/filter_in[4]_i_5_n_0 ),
        .O(\slv_regs[13]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_regs[13]_inferred__0/filter_in[4]_i_2 
       (.I0(\slv_regs_reg[13] [4]),
        .I1(array_index[0]),
        .I2(\slv_regs_reg[12] [4]),
        .O(\slv_regs[13]_inferred__0/filter_in[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[4]_i_3 
       (.I0(\slv_regs_reg[11] [4]),
        .I1(\slv_regs_reg[10] [4]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[9] [4]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[8] [4]),
        .O(\slv_regs[13]_inferred__0/filter_in[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[4]_i_4 
       (.I0(\slv_regs_reg[7] [4]),
        .I1(\slv_regs_reg[6] [4]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[5] [4]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[4] [4]),
        .O(\slv_regs[13]_inferred__0/filter_in[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[4]_i_5 
       (.I0(\slv_regs_reg[3] [4]),
        .I1(\slv_regs_reg[2] [4]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[1] [4]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[0] [4]),
        .O(\slv_regs[13]_inferred__0/filter_in[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[5]_i_1 
       (.I0(\slv_regs[13]_inferred__0/filter_in[5]_i_2_n_0 ),
        .I1(\slv_regs[13]_inferred__0/filter_in[5]_i_3_n_0 ),
        .I2(array_index[3]),
        .I3(\slv_regs[13]_inferred__0/filter_in[5]_i_4_n_0 ),
        .I4(array_index[2]),
        .I5(\slv_regs[13]_inferred__0/filter_in[5]_i_5_n_0 ),
        .O(\slv_regs[13]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_regs[13]_inferred__0/filter_in[5]_i_2 
       (.I0(\slv_regs_reg[13] [5]),
        .I1(array_index[0]),
        .I2(\slv_regs_reg[12] [5]),
        .O(\slv_regs[13]_inferred__0/filter_in[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[5]_i_3 
       (.I0(\slv_regs_reg[11] [5]),
        .I1(\slv_regs_reg[10] [5]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[9] [5]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[8] [5]),
        .O(\slv_regs[13]_inferred__0/filter_in[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[5]_i_4 
       (.I0(\slv_regs_reg[7] [5]),
        .I1(\slv_regs_reg[6] [5]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[5] [5]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[4] [5]),
        .O(\slv_regs[13]_inferred__0/filter_in[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[5]_i_5 
       (.I0(\slv_regs_reg[3] [5]),
        .I1(\slv_regs_reg[2] [5]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[1] [5]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[0] [5]),
        .O(\slv_regs[13]_inferred__0/filter_in[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[6]_i_1 
       (.I0(\slv_regs[13]_inferred__0/filter_in[6]_i_2_n_0 ),
        .I1(\slv_regs[13]_inferred__0/filter_in[6]_i_3_n_0 ),
        .I2(array_index[3]),
        .I3(\slv_regs[13]_inferred__0/filter_in[6]_i_4_n_0 ),
        .I4(array_index[2]),
        .I5(\slv_regs[13]_inferred__0/filter_in[6]_i_5_n_0 ),
        .O(\slv_regs[13]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_regs[13]_inferred__0/filter_in[6]_i_2 
       (.I0(\slv_regs_reg[13] [6]),
        .I1(array_index[0]),
        .I2(\slv_regs_reg[12] [6]),
        .O(\slv_regs[13]_inferred__0/filter_in[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[6]_i_3 
       (.I0(\slv_regs_reg[11] [6]),
        .I1(\slv_regs_reg[10] [6]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[9] [6]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[8] [6]),
        .O(\slv_regs[13]_inferred__0/filter_in[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[6]_i_4 
       (.I0(\slv_regs_reg[7] [6]),
        .I1(\slv_regs_reg[6] [6]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[5] [6]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[4] [6]),
        .O(\slv_regs[13]_inferred__0/filter_in[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[6]_i_5 
       (.I0(\slv_regs_reg[3] [6]),
        .I1(\slv_regs_reg[2] [6]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[1] [6]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[0] [6]),
        .O(\slv_regs[13]_inferred__0/filter_in[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[7]_i_1 
       (.I0(\slv_regs[13]_inferred__0/filter_in[7]_i_2_n_0 ),
        .I1(\slv_regs[13]_inferred__0/filter_in[7]_i_3_n_0 ),
        .I2(array_index[3]),
        .I3(\slv_regs[13]_inferred__0/filter_in[7]_i_4_n_0 ),
        .I4(array_index[2]),
        .I5(\slv_regs[13]_inferred__0/filter_in[7]_i_5_n_0 ),
        .O(\slv_regs[13]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_regs[13]_inferred__0/filter_in[7]_i_2 
       (.I0(\slv_regs_reg[13] [7]),
        .I1(array_index[0]),
        .I2(\slv_regs_reg[12] [7]),
        .O(\slv_regs[13]_inferred__0/filter_in[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[7]_i_3 
       (.I0(\slv_regs_reg[11] [7]),
        .I1(\slv_regs_reg[10] [7]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[9] [7]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[8] [7]),
        .O(\slv_regs[13]_inferred__0/filter_in[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[7]_i_4 
       (.I0(\slv_regs_reg[7] [7]),
        .I1(\slv_regs_reg[6] [7]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[5] [7]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[4] [7]),
        .O(\slv_regs[13]_inferred__0/filter_in[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_regs[13]_inferred__0/filter_in[7]_i_5 
       (.I0(\slv_regs_reg[3] [7]),
        .I1(\slv_regs_reg[2] [7]),
        .I2(array_index[1]),
        .I3(\slv_regs_reg[1] [7]),
        .I4(array_index[0]),
        .I5(\slv_regs_reg[0] [7]),
        .O(\slv_regs[13]_inferred__0/filter_in[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_regs[1][7]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(\slv_regs[13][7]_i_2_n_0 ),
        .O(\slv_regs[1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \slv_regs[2][7]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(\slv_regs[11][7]_i_2_n_0 ),
        .O(\slv_regs[2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \slv_regs[3][7]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(\slv_regs[11][7]_i_2_n_0 ),
        .O(\slv_regs[3][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_regs[4][7]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(\slv_regs[13][7]_i_2_n_0 ),
        .O(\slv_regs[4][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_regs[5][7]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(\slv_regs[13][7]_i_2_n_0 ),
        .O(\slv_regs[5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \slv_regs[6][7]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(\slv_regs[11][7]_i_2_n_0 ),
        .O(\slv_regs[6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \slv_regs[7][7]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(\slv_regs[11][7]_i_2_n_0 ),
        .O(\slv_regs[7][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_regs[8][7]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(\slv_regs[13][7]_i_2_n_0 ),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[0]),
        .O(\slv_regs[8][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_regs[9][7]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(\slv_regs[13][7]_i_2_n_0 ),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[0]),
        .O(\slv_regs[9][7]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    slv_regs_out_reg_0_15_0_5
       (.ADDRA({1'b0,p_0_in}),
        .ADDRB({1'b0,p_0_in}),
        .ADDRC({1'b0,p_0_in}),
        .ADDRD({1'b0,array_index}),
        .DIA(filter_in[1:0]),
        .DIB(filter_in[3:2]),
        .DIC(filter_in[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(reg_data_out0[1:0]),
        .DOB(reg_data_out0[3:2]),
        .DOC(reg_data_out0[5:4]),
        .DOD(NLW_slv_regs_out_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(s00_axi_aresetn));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    slv_regs_out_reg_0_15_12_17
       (.ADDRA({1'b0,p_0_in}),
        .ADDRB({1'b0,p_0_in}),
        .ADDRC({1'b0,p_0_in}),
        .ADDRD({1'b0,array_index}),
        .DIA({1'b0,1'b0}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_data_out0[13:12]),
        .DOB(reg_data_out0[15:14]),
        .DOC(reg_data_out0[17:16]),
        .DOD(NLW_slv_regs_out_reg_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(s00_axi_aresetn));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    slv_regs_out_reg_0_15_18_23
       (.ADDRA({1'b0,p_0_in}),
        .ADDRB({1'b0,p_0_in}),
        .ADDRC({1'b0,p_0_in}),
        .ADDRD({1'b0,array_index}),
        .DIA({1'b0,1'b0}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_data_out0[19:18]),
        .DOB(reg_data_out0[21:20]),
        .DOC(reg_data_out0[23:22]),
        .DOD(NLW_slv_regs_out_reg_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(s00_axi_aresetn));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    slv_regs_out_reg_0_15_24_29
       (.ADDRA({1'b0,p_0_in}),
        .ADDRB({1'b0,p_0_in}),
        .ADDRC({1'b0,p_0_in}),
        .ADDRD({1'b0,array_index}),
        .DIA({1'b0,1'b0}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_data_out0[25:24]),
        .DOB(reg_data_out0[27:26]),
        .DOC(reg_data_out0[29:28]),
        .DOD(NLW_slv_regs_out_reg_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(s00_axi_aresetn));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    slv_regs_out_reg_0_15_30_31
       (.ADDRA({1'b0,p_0_in}),
        .ADDRB({1'b0,p_0_in}),
        .ADDRC({1'b0,p_0_in}),
        .ADDRD({1'b0,array_index}),
        .DIA({1'b0,1'b0}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_data_out0[31:30]),
        .DOB(NLW_slv_regs_out_reg_0_15_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_slv_regs_out_reg_0_15_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_slv_regs_out_reg_0_15_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(s00_axi_aresetn));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    slv_regs_out_reg_0_15_6_11
       (.ADDRA({1'b0,p_0_in}),
        .ADDRB({1'b0,p_0_in}),
        .ADDRC({1'b0,p_0_in}),
        .ADDRD({1'b0,array_index}),
        .DIA(filter_in[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_data_out0[7:6]),
        .DOB(reg_data_out0[9:8]),
        .DOC(reg_data_out0[11:10]),
        .DOD(NLW_slv_regs_out_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[0] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[0] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[0] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[0] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[0] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[0] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[0] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[0] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[10][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[10][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[10] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[10][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[10][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[10] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[10][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[10][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[10] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[10][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[10][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[10] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[10][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[10][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[10] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[10][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[10][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[10] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[10][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[10][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[10] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[10][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[10][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[10] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[11][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[11][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[11] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[11][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[11][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[11] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[11][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[11][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[11] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[11][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[11][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[11] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[11][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[11][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[11] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[11][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[11][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[11] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[11][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[11][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[11] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[11][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[11][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[11] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[12][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[12][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[12] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[12][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[12][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[12] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[12][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[12][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[12] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[12][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[12][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[12] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[12][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[12][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[12] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[12][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[12][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[12] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[12][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[12][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[12] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[12][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[12][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[12] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[13][0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[13] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[13][1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[13] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[13][2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[13] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[13][3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[13] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[13][4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[13] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[13][5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[13] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[13][6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[13] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[13][7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[13] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[1] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[1] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[1] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[1] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[1] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[1] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[1] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[1] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[2] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[2] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[2] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[2] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[2] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[2] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[2] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[2] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[3] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[3] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[3] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[3] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[3] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[3] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[3] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[3] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[4][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[4] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[4][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[4] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[4][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[4] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[4][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[4] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[4][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[4][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[4] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[4][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[4][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[4] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[4][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[4][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[4] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[4][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[4][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[4] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[5][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[5] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[5][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[5] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[5][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[5] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[5][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[5] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[5][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[5][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[5] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[5][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[5][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[5] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[5][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[5][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[5] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[5][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[5][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[5] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[6][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[6][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[6] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[6][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[6][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[6] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[6][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[6][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[6] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[6][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[6][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[6] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[6][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[6][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[6] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[6][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[6][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[6] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[6][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[6][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[6] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[6][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[6][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[6] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[7][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[7][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[7] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[7][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[7][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[7] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[7][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[7][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[7] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[7][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[7][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[7] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[7][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[7][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[7] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[7][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[7][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[7] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[7][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[7][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[7] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[7][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[7][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[7] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[8][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[8][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[8] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[8][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[8][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[8] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[8][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[8][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[8] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[8][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[8][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[8] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[8][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[8][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[8] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[8][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[8][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[8] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[8][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[8][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[8] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[8][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[8][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[8] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[9][0] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[9][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_regs_reg[9] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[9][1] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[9][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_regs_reg[9] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[9][2] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[9][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_regs_reg[9] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[9][3] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[9][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_regs_reg[9] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[9][4] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[9][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_regs_reg[9] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[9][5] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[9][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_regs_reg[9] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[9][6] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[9][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_regs_reg[9] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_regs_reg[9][7] 
       (.C(s00_axi_aclk),
        .CE(\slv_regs[9][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_regs_reg[9] [7]),
        .R(axi_awready_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
