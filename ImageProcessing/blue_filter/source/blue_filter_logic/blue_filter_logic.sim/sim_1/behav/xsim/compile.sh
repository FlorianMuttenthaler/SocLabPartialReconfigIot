#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2017.4.1 (64-bit)
#
# Filename    : compile.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Tue Jan 15 09:17:20 CET 2019
# SW Build 2117270 on Tue Jan 30 15:31:13 MST 2018
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
#
# usage: compile.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
echo "xvhdl --incr --relax -prj blue_filter_logic_tb_vhdl.prj"
ExecStep xvhdl --incr --relax -prj blue_filter_logic_tb_vhdl.prj 2>&1 | tee -a compile.log
