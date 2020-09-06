set logFileId [open ./runLogupdate_knn4.log "a"]
set_param general.maxThreads 8 
set start_time [clock seconds]
open_project update_knn4_prj
set_top update_knn4
add_files ../../input_files/hls_src/dg_reg/host/utils.cpp
add_files ../../input_files/hls_src/dg_reg/host/typedefs.h
add_files ../../input_files/hls_src/dg_reg/host/check_result.cpp
add_files -tb ../../input_files/hls_src/dg_reg/host/digit_recognition_host.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files ../../input_files/hls_src/dg_reg/host/training_data.h
add_files ../../input_files/hls_src/dg_reg/host/utils.h
add_files ../../input_files/hls_src/dg_reg/host/check_result.h
add_files ../../input_files/hls_src/dg_reg/host/testing_data.h
add_files ../../input_files/hls_src/dg_reg/sdsoc/digitrec.cpp
add_files ../../input_files/hls_src/dg_reg/sdsoc/digitrec.h
open_solution "update_knn4"
set_part {xc7z020-clg400-1}
create_clock -period 4 -name default
#source "./Rendering_hls/colorFB/directives.tcl"
#csim_design
csynth_design
#cosim_design -trace_level all -tool xsim
export_design -rtl verilog -format ip_catalog
set end_time [clock seconds]
set total_seconds [expr $end_time - $start_time]
puts $logFileId "hls: $total_seconds seconds"

exit
