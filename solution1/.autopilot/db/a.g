#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/zynq-fyp/Desktop/maxi_latest/GMM_Backsub_2model_edited/solution1/.autopilot/db/a.g.bc ${1+"$@"}
