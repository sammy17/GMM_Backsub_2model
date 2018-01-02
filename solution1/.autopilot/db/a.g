#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/zynq-fyp/Backsub_GMM/GMM_backsub_new/solution1/.autopilot/db/a.g.bc ${1+"$@"}
