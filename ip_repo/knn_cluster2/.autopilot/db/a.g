#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ylxiao/ws_192/F200831_DoBlink_FPGA2021/hls/dg_reg/knn_cluster2/.autopilot/db/a.g.bc ${1+"$@"}
