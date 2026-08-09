set src_dir [file normalize "./../"]

read_verilog -sv \
    $src_dir/fpga/hdl/lvdc_fpga.v \
    [glob $src_dir/iu/components/*.v] \
    [glob $src_dir/iu/iu.v] \
    $src_dir/iu/lvdc/lvdc.v \
    [glob $src_dir/iu/lvdc/modules/*.v] \
    $src_dir/iu/lvda/lvda.v \
    [glob $src_dir/iu/lvda/modules/*.v] \
    $src_dir/iu/ciu/ciu.v \
    $src_dir/iu/cmd_decoder/cmd_decoder.v \
    $src_dir/iu/switch_sel/switch_sel.v \
    $src_dir/iu/mod410/mod410.v \
    [glob $src_dir/gse/*.v] \
    [glob $src_dir/gse/uart/*.v] \

set_property verilog_define {TARGET_FPGA=1 CLOCKED=1 CORE_PATH=""} [current_fileset]

add_files [glob ${src_dir}/iu/lvdc/core/module*.mem]

file mkdir ip
create_ip -name clk_wiz -vendor xilinx.com -library ip -module_name prop_clk -dir ip -force
set_property -dict [list \
    CONFIG.PRIM_IN_FREQ {12.00} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {40.960} \
] [get_ips prop_clk]

create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name stream_fifo -dir ip -force
set_property -dict [list \
    CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
    CONFIG.Input_Data_Width {40} \
    CONFIG.Input_Depth {16} \
    CONFIG.Output_Data_Width {40} \
    CONFIG.Output_Depth {16} \
    CONFIG.Performance_Options {First_Word_Fall_Through} \
] [get_ips stream_fifo]

create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name msg_fifo -dir ip -force
set_property -dict [list \
    CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
    CONFIG.Input_Data_Width {48} \
    CONFIG.Input_Depth {256} \
    CONFIG.Output_Data_Width {48} \
    CONFIG.Output_Depth {256} \
    CONFIG.Performance_Options {First_Word_Fall_Through} \
] [get_ips msg_fifo]

create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name tx_byte_fifo -dir ip -force
set_property -dict [list \
    CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
    CONFIG.Input_Data_Width {8} \
    CONFIG.Input_Depth {512} \
    CONFIG.Output_Data_Width {8} \
    CONFIG.Output_Depth {512} \
    CONFIG.Performance_Options {First_Word_Fall_Through} \
] [get_ips tx_byte_fifo]



synth_ip [get_ips prop_clk stream_fifo msg_fifo tx_byte_fifo]
synth_design -top "lvdc_fpga" -part "xc7a35tcpg236-1"

write_checkpoint -force post_synth.dcp
report_utilization -file post_synth_util.rpt
