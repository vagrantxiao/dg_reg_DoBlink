############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dg_reg
set_top knn_cluster1
add_files dg_reg/src/sdsoc/digitrec.h
add_files dg_reg/src/sdsoc/digitrec.cpp
add_files -tb dg_reg/src/host/utils.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb dg_reg/src/host/utils.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb dg_reg/src/host/typedefs.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb dg_reg/src/host/training_data.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb dg_reg/src/host/testing_data.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb dg_reg/src/host/digit_recognition_host.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb dg_reg/src/host/check_result.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb dg_reg/src/host/check_result.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "knn_cluster2"
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./dg_reg/knn_cluster2/directives.tcl"
csim_design -clean -O
csynth_design
cosim_design -reduce_diskspace -wave_debug -trace_level all -tool xsim
export_design -rtl verilog -format ip_catalog
