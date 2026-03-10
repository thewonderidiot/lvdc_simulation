set src_dir [file normalize "./../"]

open_checkpoint post_synth.dcp

read_xdc $src_dir/fpga/constr/lvdc_fpga.xdc

opt_design
place_design
phys_opt_design
route_design
phys_opt_design

write_bitstream -force "lvdc_fpga.bit"

report_route_status -file post_route_status.rpt
report_utilization -file post_route_util.rpt
report_timing_summary -file post_route_timing_summary.rpt
