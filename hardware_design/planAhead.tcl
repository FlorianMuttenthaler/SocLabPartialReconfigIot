#################################################################
# TCL script to generate bitstreams for partial reconfiguration 
# in planAhead 
#
# PlanAhead only works with netlists!
#
#################################################################

# Create project in planAhead
create_project partial_reconfiguration ./planAhead/partial_reconfiguration -part xc7z020clg484-1 -force
set_property design_mode GateLvl [current_fileset]

# copy generated netlists from xps
add_files -norecurse {./implementation/system.ngc ./implementation/system_axi_clkgen_0_wrapper.ngc ./implementation/system_axi_dma_0_wrapper.ngc ./implementation/system_axi_dma_0_wrapper_fifo_generator_v9_3.ngc ./implementation/system_axi_hdmi_tx_16b_0_wrapper.ngc ./implementation/system_axi_iic_0_wrapper.ngc ./implementation/system_axi_interconnect_0_wrapper.ngc ./implementation/system_axi_interconnect_1_wrapper.ngc ./implementation/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1.ngc ./implementation/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_2.ngc ./implementation/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_3.ngc ./implementation/system_axi_interconnect_2_wrapper.ngc ./implementation/system_axi_interconnect_2_wrapper_fifo_generator_v9_1_1.ngc ./implementation/system_axi_interconnect_2_wrapper_fifo_generator_v9_1_2.ngc ./implementation/system_axi_interconnect_2_wrapper_fifo_generator_v9_1_3.ngc ./implementation/system_axi_spdif_tx_0_wrapper.ngc ./implementation/system_axi_vdma_0_wrapper.ngc ./implementation/system_axi_vdma_0_wrapper_fifo_generator_v9_1.ngc ./implementation/system_axi_vdma_0_wrapper_fifo_generator_v9_3.ngc ./implementation/system_blake2b_0_wrapper.ngc ./implementation/system_clock_generator_0_wrapper.ngc ./implementation/system_myled_0_wrapper.ngc ./implementation/system_processing_system7_0_wrapper.ngc ./implementation/system_simple_filter_0_wrapper.ngc ./implementation/system_util_vector_logic_0_wrapper.ngc ./implementation/system_vga_flyinglogo_0_wrapper.ngc}
import_files -force -norecurse

# set top module
set_property top system [current_fileset]

# copy constraints files
import_files -fileset constrs_1 -force -norecurse {./data/ps7_constraints.ucf ./data/system.ucf}

# enable partial reconfiguration
set_property name config_1 [current_run]
set_property is_partial_reconfig true [current_project]

# open synthesized design
link_design -name netlist_1

# create module red_filter
create_reconfig_module -name red_filter -cell simple_filter_0/simple_filter_0/USER_LOGIC_I/filter_logic_0
set_property edif_top_file ./pcores/simple_filter_v1_00_a/hdl/vhdl/netlist/red_filter_logic.ngc [get_filesets simple_filter_0~simple_filter_0~USER_LOGIC_I~filter_logic_0#red_filter]
import_files -fileset simple_filter_0~simple_filter_0~USER_LOGIC_I~filter_logic_0#red_filter -force -norecurse ./pcores/simple_filter_v1_00_a/hdl/vhdl/netlist/red_filter_logic.ngc
save_constraints
load_reconfig_modules -reconfig_modules simple_filter_0/simple_filter_0/USER_LOGIC_I/filter_logic_0:red_filter

# create module green_filter
create_reconfig_module -name green_filter -cell simple_filter_0/simple_filter_0/USER_LOGIC_I/filter_logic_0
set_property edif_top_file ./pcores/simple_filter_v1_00_a/hdl/vhdl/netlist/green_filter_logic.ngc [get_filesets simple_filter_0~simple_filter_0~USER_LOGIC_I~filter_logic_0#green_filter]
import_files -fileset simple_filter_0~simple_filter_0~USER_LOGIC_I~filter_logic_0#green_filter -force -norecurse ./pcores/simple_filter_v1_00_a/hdl/vhdl/netlist/green_filter_logic.ngc

# create module blue_filter
create_reconfig_module -name blue_filter -cell simple_filter_0/simple_filter_0/USER_LOGIC_I/filter_logic_0
set_property edif_top_file ./pcores/simple_filter_v1_00_a/hdl/vhdl/netlist/blue_filter_logic.ngc [get_filesets simple_filter_0~simple_filter_0~USER_LOGIC_I~filter_logic_0#blue_filter]
import_files -fileset simple_filter_0~simple_filter_0~USER_LOGIC_I~filter_logic_0#blue_filter -force -norecurse ./pcores/simple_filter_v1_00_a/hdl/vhdl/netlist/blue_filter_logic.ngc

# create pblock (area for pr)
resize_pblock pblock_simple_filter_0_USER_LOGIC_I_filter_logic_0 -add {SLICE_X32Y130:SLICE_X35Y144 DSP48_X2Y52:DSP48_X2Y57 RAMB18_X2Y52:RAMB18_X2Y57 RAMB36_X2Y26:RAMB36_X2Y28} -locs keep_all -replace
save_constraints

# run DRC
report_drc -name drc_1 -rules {PABB-1 PALI-1 PAP-1 PAP-2 PAP-3 PAP-4 PAP-5 PAP-6 PAP-7 PAST-1 PRAG-1 PRAG-2 PRCC-1 PRGB-1 PRGL-1 PRGR-1 PRGR-2 PRGR-3 PRLL-1 PRLO-1 PROL-1 PRPR-1 PRRC-1 PRRM-1 PRSC-1 PRSF-1 PRSL-1}

# run implementation for config_1 (red_filter)
launch_runs config_1 -jobs 2

# wait until finished
wait_on_run config_1

# promote partition
promote_run -run config_1 -partition_names {system simple_filter_0/simple_filter_0/USER_LOGIC_I/filter_logic_0}

# create config_2 (green_filter)
create_run config_2 -flow {ISE 14} -strategy {ISE Defaults}
config_partition -run config_2 -import -import_dir ./planAhead/partial_reconfiguration/partial_reconfiguration.promote/Xconfig_1 -preservation routing
config_partition -run config_2 -cell simple_filter_0/simple_filter_0/USER_LOGIC_I/filter_logic_0 -reconfig_module green_filter -implement

# create config_3 (blue_filter)
create_run config_3 -flow {ISE 14} -strategy {ISE Defaults}
config_partition -run config_3 -import -import_dir ./planAhead/partial_reconfiguration/partial_reconfiguration.promote/Xconfig_1 -preservation routing
config_partition -run config_3 -cell simple_filter_0/simple_filter_0/USER_LOGIC_I/filter_logic_0 -reconfig_module blue_filter -implement

# run implementation for config_2
launch_runs config_2 -jobs 2

# wait until finished
wait_on_run config_2

# run implementation for config_3
launch_runs config_3 -jobs 2

# wait until finished
wait_on_run config_3

# verify configuration
verify_config -runs {  config_1 config_2 config_3 } -file ./planAhead/partial_reconfiguration/pr_verify.log

# generate bitstream
launch_runs config_1 -to_step Bitgen -jobs 2

# wait until finished
wait_on_run config_1

# generate bitstream
launch_runs config_2 -to_step Bitgen -jobs 2

# wait until finished
wait_on_run config_2

# generate bitstream
launch_runs config_3 -to_step Bitgen -jobs 2

# wait until finished
wait_on_run config_3

# close planAhead
exit