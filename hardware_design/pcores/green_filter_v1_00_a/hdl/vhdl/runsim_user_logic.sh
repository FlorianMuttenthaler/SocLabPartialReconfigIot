#!/bin/bash

# Script to simulate 7seg-VHDL designs

# Delete unused files
rm -f *.o *.cf *.vcd

# Simulate design

# Syntax check
ghdl -s green_filter_logic.vhd user_logic.vhd user_logic_tb.vhd

# Compile the design
ghdl -a green_filter_logic.vhd user_logic.vhd user_logic_tb.vhd

# Create executable
ghdl -e user_logic_tb

# Simulate
ghdl -r user_logic_tb --vcd=user_logic_tb.vcd

# Show simulation result as wave form
gtkwave user_logic_tb.vcd &

# Delete unused files
rm -f *.o *.cf
