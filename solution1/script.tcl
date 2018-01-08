############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project GMM_Backsub_2model_edited
set_top backsub
add_files GMM_Backsub_2model_edited/core.cpp
add_files GMM_Backsub_2model_edited/core.h
add_files -tb GMM_Backsub_2model_edited/cut_out.avi
add_files -tb GMM_Backsub_2model_edited/test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./GMM_Backsub_2model_edited/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -setup -trace_level all
export_design -format ip_catalog
