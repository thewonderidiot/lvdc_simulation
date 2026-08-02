`timescale 1ns/1ps
`default_nettype none

module register #(
    parameter WIDTH = 8
)(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire [WIDTH:1] window,
    input wire clock,
    output reg [WIDTH:1] out
);

initial out = 'b0;

`ifdef TARGET_FPGA

reg clock_r;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        clock_r <= 0;
        out <= 'b0;
    end else begin
        clock_r <= clock;
        if (~clock_r & clock) begin
            out <= window;
        end
    end
end

`else
wire t;
always @(posedge clock) out <= window;
`endif

endmodule
`default_nettype wire
