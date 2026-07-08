`timescale 1ns/1ps
`default_nettype none

module ciu(
    input wire SIM_CLK,
    input wire SIM_RST,

    output wire READY,
    output wire DATA1,
    output wire DATA2,
    output wire DATA3,
    output wire DATA4,
    output wire DATA5,
    output wire DATA6,
    output wire DATA7,
    output wire DATA8,
    output wire DATA9,
    output wire DATA10
);

assign READY = 0;
assign DATA1 = 0;
assign DATA2 = 0;
assign DATA3 = 0;
assign DATA4 = 0;
assign DATA5 = 0;
assign DATA6 = 0;
assign DATA7 = 0;
assign DATA8 = 0;
assign DATA9 = 0;
assign DATA10 = 0;

endmodule
`default_nettype wire
