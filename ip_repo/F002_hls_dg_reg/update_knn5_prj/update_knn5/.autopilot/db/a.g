#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/icgridio2/unsafe/ylxiao/F200905_hls/pr_flow/workspace/F002_hls_dg_reg/update_knn5_prj/update_knn5/.autopilot/db/a.g.bc ${1+"$@"}
