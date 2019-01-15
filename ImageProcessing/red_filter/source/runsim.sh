#!/bin/bash

# Script to simulate 7seg-VHDL designs

# Delete unused files
rm -f *.o *.cf *.vcd

# Simulate design

# Syntax check
ghdl -s red_filter_logic.vhd red_filter_logic_pkg.vhd red_filter_logic_tb.vhd

# Compile the design
ghdl -a red_filter_logic.vhd red_filter_logic_pkg.vhd red_filter_logic_tb.vhd

# Create executable
ghdl -e red_filter_logic_tb

# Simulate
ghdl -r red_filter_logic_tb --vcd=red_filter_logic_tb.vcd

# Show simulation result as wave form
gtkwave red_filter_logic_tb.vcd &

# Delete unused files
rm -f *.o *.cf
