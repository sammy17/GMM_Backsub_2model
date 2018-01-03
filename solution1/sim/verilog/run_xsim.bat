
call xelab xil_defaultlib.apatb_backsub_top -prj backsub.prj --lib "ieee_proposed=./ieee_proposed" -s backsub -debug wave
call xsim --noieeewarnings backsub -tclbatch backsub.tcl

