#!/bin/bash

# Script to simulate 7seg-VHDL designs

# Delete unused files
rm -f *.o *.cf *.vcd

# Simulate design

# Syntax check
ghdl -s black_white_filter_logic.vhd black_white_filter_logic_pkg.vhd black_white_filter_logic_tb.vhd

# Compile the design
ghdl -a black_white_filter_logic.vhd black_white_filter_logic_pkg.vhd black_white_filter_logic_tb.vhd

# Create executable
ghdl -e black_white_filter_logic_tb

# Simulate
ghdl -r black_white_filter_logic_tb --vcd=black_white_filter_logic_tb.vcd

# Show simulation result as wave form
gtkwave black_white_filter_logic_tb.vcd &

# Delete unused files
rm -f *.o *.cf