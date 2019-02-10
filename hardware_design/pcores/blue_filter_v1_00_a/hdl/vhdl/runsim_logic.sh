#!/bin/bash

# Script to simulate 7seg-VHDL designs

# Delete unused files
rm -f *.o *.cf *.vcd

# Simulate design

# Syntax check
ghdl -s blue_filter_logic.vhd blue_filter_logic_pkg.vhd blue_filter_logic_tb.vhd

# Compile the design
ghdl -a blue_filter_logic.vhd blue_filter_logic_pkg.vhd blue_filter_logic_tb.vhd

# Create executable
ghdl -e blue_filter_logic_tb

# Simulate
ghdl -r blue_filter_logic_tb --vcd=blue_filter_logic_tb.vcd

# Show simulation result as wave form
gtkwave blue_filter_logic_tb.vcd &

# Delete unused files
rm -f *.o *.cf
