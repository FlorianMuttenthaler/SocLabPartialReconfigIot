#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2017.4.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Tue Jan 15 09:29:28 CET 2019
# SW Build 2117270 on Tue Jan 30 15:31:13 MST 2018
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
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
ExecStep xelab -wto 248db5a411a0454eb7643422b9f5b60a --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot green_filter_logic_tb_behav xil_defaultlib.green_filter_logic_tb -log elaborate.log
