#!/bin/bash

# Script to simulate 7seg-VHDL designs

# Delete unused files
rm -f *.o *.cf *.vcd

# Simulate design

# Syntax check
ghdl -s red_filter_ip_v1_0.vhd red_filter_ip_v1_0_S00_AXI.vhd red_filter_ip_v1_0_tb.vhd

# Compile the design
ghdl -a red_filter_ip_v1_0.vhd red_filter_ip_v1_0_S00_AXI.vhd red_filter_ip_v1_0_tb.vhd

# Create executable
ghdl -e red_filter_ip_v1_0_tb

# Simulate
ghdl -r red_filter_ip_v1_0_tb --vcd=red_filter_ip_v1_0_tb.vcd

# Show simulation result as wave form
gtkwave red_filter_ip_v1_0_tb.vcd &

# Delete unused files
rm -f *.o *.cf
