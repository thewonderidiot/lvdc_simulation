set_property -dict {PACKAGE_PIN L17 IOSTANDARD LVCMOS33} [get_ports {clk}];
create_clock -add -name clk_pin -period 83.333 -waveform {0 41.666} [get_ports {clk}];

set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports {rst}];
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports {uart_tx}];

set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports {AI3V}];
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS33} [get_ports {DATAV}];
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports {INTR7X}];
set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVCMOS33} [get_ports {PIOV}];
set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports {TRSV}];

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
