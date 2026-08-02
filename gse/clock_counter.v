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

`ifdef TARGET_FPGA
`else
always @(posedge enable) counter <= PERIOD + DELAY - 1;

always @(posedge clock_in) begin
    if (counter == 'b0) counter <= PERIOD - 1;
    else counter <= counter - 'd1;
end

assign clock_out = enable & (counter == (PERIOD - 1));

`endif

endmodule
`default_nettype wire
