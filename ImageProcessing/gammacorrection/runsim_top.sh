#!/bin/bash

# Script to simulate TRNG-VHDL designs

# Delete unused files
rm -f *.o *.cf *.vcd

# Simulate design

# Syntax check
ghdl -s top_gamma.vhd top_gamma_pkg.vhd top_gamma_tb.vhd

# Compile the design
ghdl -a top_gamma.vhd top_gamma_pkg.vhd top_gamma_tb.vhd
# Create executable
ghdl -e top_gamma_tb

# Simulate
ghdl -r top_gamma_tb --vcd=top_gamma_tb.vcd

# Show simulation result as wave form
gtkwave top_gamma_tb.vcd &

# Delete unused files
rm -f *.o *.cf
