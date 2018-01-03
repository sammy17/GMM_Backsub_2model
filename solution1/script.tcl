############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project GMM_backsub_new
set_top backsub
add_files GMM_backsub_new/core.h
add_files GMM_backsub_new/core.cpp
add_files -tb GMM_backsub_new/test.cpp
add_files -tb GMM_backsub_new/cut_out.avi
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./GMM_backsub_new/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -setup -trace_level all
export_design -format ip_catalog
