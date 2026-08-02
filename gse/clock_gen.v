`timescale 1ns/1ps
`default_nettype none

module clock_gen(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire PBAVN,
    input wire W6,

    output reg pa,
    output reg pb,
    output reg pc,

    output reg [14:1] bit,

    output reg w,
    output reg x,
    output reg y,
    output reg z
);

localparam phase_delay = 27243.75;
localparam clock_delay = 388.28125;

initial pa = 0;
initial pb = 0;
initial pc = 0;
initial bit = 'o20000;
initial w = 0;
initial x = 0;
initial y = 0;
initial z = 0;

`ifdef TARGET_FPGA
`else
always @(negedge PBAVN) begin
    pb <= 1;
    #phase_delay pb <= 0;
    #100 pc <= 1;
    #phase_delay pc <= 0;
    #100 pa <= 1;
    #phase_delay pa <= 0;
end

always @(posedge W6) begin
    #50 w <= 1;
    #clock_delay w <= 0;
    #100 x <= 1;
    #clock_delay x <= 0;
    #100 y <= 1;
    #clock_delay y <= 0;
    #100 z <= 1;
    #clock_delay z <= 0;
end

always @(posedge W6) begin
    bit <= {bit[13:1], bit[14]};
end
always @(posedge pb) begin
    bit <= 'b1;
end
`endif

endmodule
`default_nettype wire
