`timescale 1ns/1ps
`default_nettype none

module switch_sel(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire STAGE_SEL,
    input wire RESET,
    input wire READ_CMD,
    input wire BIT1,
    input wire BIT2,
    input wire BIT3,
    input wire BIT4,
    input wire BIT5,
    input wire BIT6,
    input wire BIT7,
    input wire BIT8,

    output wire B1V,
    output wire B2V,
    output wire B3V,
    output wire B4V,
    output wire B5V,
    output wire B6V,
    output wire B7V,
    output wire B8V
);

assign B1V = 0;
assign B2V = 0;
assign B3V = 0;
assign B4V = 0;
assign B5V = 0;
assign B6V = 0;
assign B7V = 0;
assign B8V = 0;

endmodule
`default_nettype wire
