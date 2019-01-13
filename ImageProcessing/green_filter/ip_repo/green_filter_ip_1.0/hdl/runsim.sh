#!/bin/bash

# Script to simulate 7seg-VHDL designs

# Delete unused files
rm -f *.o *.cf *.vcd

# Simulate design

# Syntax check
ghdl -s green_filter_ip_v1_0.vhd green_filter_ip_v1_0_S00_AXI.vhd green_filter_ip_v1_0_tb.vhd

# Compile the design
ghdl -a green_filter_ip_v1_0.vhd green_filter_ip_v1_0_S00_AXI.vhd green_filter_ip_v1_0_tb.vhd

# Create executable
ghdl -e green_filter_ip_v1_0_tb

# Simulate
ghdl -r green_filter_ip_v1_0_tb --vcd=green_filter_ip_v1_0_tb.vcd

# Show simulation result as wave form
gtkwave green_filter_ip_v1_0_tb.vcd &

# Delete unused files
rm -f *.o *.cf
