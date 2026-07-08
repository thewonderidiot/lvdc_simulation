`timescale 1ns/1ps
`default_nettype none

module cmd_decoder(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire RESET,

    output wire INTA,
    output wire INTB,
    output wire OMDA,
    output wire OMDB,
    output wire BIT1,
    output wire BIT2,
    output wire BIT3,
    output wire BIT4,
    output wire BIT5,
    output wire BIT6,
    output wire BIT7,
    output wire BIT8,
    output wire BIT9,
    output wire BIT10,
    output wire BIT11,
    output wire BIT12,
    output wire BIT13,
    output wire BIT14
);

assign INTA = 0;
assign INTB = 0;
assign OMDA = 0;
assign OMDB = 0;
assign BIT1 = 0;
assign BIT2 = 0;
assign BIT3 = 0;
assign BIT4 = 0;
assign BIT5 = 0;
assign BIT6 = 0;
assign BIT7 = 0;
assign BIT8 = 0;
assign BIT9 = 0;
assign BIT10 = 0;
assign BIT11 = 0;
assign BIT12 = 0;
assign BIT13 = 0;
assign BIT14 = 0;

endmodule
`default_nettype wire
