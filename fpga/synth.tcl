set src_dir [file normalize "./../"]

read_verilog -sv \
    $src_dir/fpga/hdl/lvdc_fpga.v \
    [glob $src_dir/components/*.v] \
    $src_dir/lvdc/lvdc.v \
    [glob $src_dir/lvdc/modules/*.v] \
    $src_dir/lvda/lvda.v \
    [glob $src_dir/lvda/modules/*.v] \
    $src_dir/mod410/mod410.v \
    [glob $src_dir/mod410/uart/*.v]

set_property verilog_define {TARGET_FPGA=1} [current_fileset]

add_files [glob ${src_dir}/core/module*.mem]

file mkdir ip
create_ip -name clk_wiz -vendor xilinx.com -library ip -module_name prop_clk -dir ip -force
set_property -dict [list \
    CONFIG.PRIM_IN_FREQ {12.00} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {40.960} \
] [get_ips prop_clk]

synth_ip [get_ips prop_clk]
synth_design -top "lvdc_fpga" -part "xc7a35tcpg236-1"

write_checkpoint -force post_synth.dcp
report_utilization -file post_synth_util.rpt
