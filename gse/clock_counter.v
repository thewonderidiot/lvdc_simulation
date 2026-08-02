`timescale 1ns/1ps
`default_nettype none

module clock_counter #(
    parameter PERIOD = 28,
    parameter DELAY = 32
)(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire enable,
    input wire clock_in,
    output wire clock_out
);

localparam PERIOD_LEN = $clog2(PERIOD + DELAY);

reg [PERIOD_LEN-1:0] counter;
initial counter = 0;

assign clock_out = enable & (counter == (PERIOD - 1));

`ifdef TARGET_FPGA

reg clock_in_r;
reg enable_r;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        clock_in_r <= 0;
        enable_r <= 0;
        counter <= 0;
    end else begin
        clock_in_r <= clock_in;
        enable_r <= enable;

        if (~enable_r & enable) begin
            counter <= PERIOD + DELAY - 1;
        end else if (~clock_in_r & clock_in) begin
            if (counter == 'b0) counter <= PERIOD - 1;
            else counter <= counter - 'd1;
        end
    end
end

`else
always @(posedge enable) counter <= PERIOD + DELAY - 1;

always @(posedge clock_in) begin
    if (counter == 'b0) counter <= PERIOD - 1;
    else counter <= counter - 'd1;
end
`endif

endmodule
`default_nettype wire
