create_project prj -part xc7z020clg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
source "F:/maxi_latest/GMM_backsub_new/solution1/syn/verilog/backsub_ap_dcmp_0_no_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backsub_ap_dcmp_0_no_dsp_64]]
}
source "F:/maxi_latest/GMM_backsub_new/solution1/syn/verilog/backsub_ap_dmul_4_max_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backsub_ap_dmul_4_max_dsp_64]]
}
source "F:/maxi_latest/GMM_backsub_new/solution1/syn/verilog/backsub_ap_faddfsub_3_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backsub_ap_faddfsub_3_full_dsp_32]]
}
source "F:/maxi_latest/GMM_backsub_new/solution1/syn/verilog/backsub_ap_fcmp_0_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backsub_ap_fcmp_0_no_dsp_32]]
}
source "F:/maxi_latest/GMM_backsub_new/solution1/syn/verilog/backsub_ap_fdiv_14_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backsub_ap_fdiv_14_no_dsp_32]]
}
source "F:/maxi_latest/GMM_backsub_new/solution1/syn/verilog/backsub_ap_fmul_2_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backsub_ap_fmul_2_max_dsp_32]]
}
source "F:/maxi_latest/GMM_backsub_new/solution1/syn/verilog/backsub_ap_fpext_0_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backsub_ap_fpext_0_no_dsp_32]]
}
source "F:/maxi_latest/GMM_backsub_new/solution1/syn/verilog/backsub_ap_fsqrt_10_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backsub_ap_fsqrt_10_no_dsp_32]]
}
source "F:/maxi_latest/GMM_backsub_new/solution1/syn/verilog/backsub_ap_sitodp_4_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backsub_ap_sitodp_4_no_dsp_32]]
}
source "F:/maxi_latest/GMM_backsub_new/solution1/syn/verilog/backsub_ap_sitofp_4_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backsub_ap_sitofp_4_no_dsp_32]]
}
