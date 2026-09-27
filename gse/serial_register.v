`timescale 1ns/1ps
`default_nettype none

module serial_register #(
    parameter WIDTH = 26
)(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire serial,
    input wire clock,
    input wire sync,
    input wire display_update,
    input wire display_reset,
    input wire [3:0] index,
    output wire [1:WIDTH] out,
    output wire [1:WIDTH] display
);

localparam HISTORY = 16;

reg [WIDTH:1] delay = 'b0;
reg [WIDTH:1] display_value = 'b0;
reg [HISTORY-1:0][1:WIDTH] data;
integer i;
initial data = 'b0;
assign out = data[0];
assign display = (index == 0) ? display_value : data[index];

`ifdef CLOCKED
reg clock_r = 0;
reg sync_r = 0;
always @(posedge SIM_CLK) begin
    clock_r <= clock;
    if (~clock_r & clock) begin
        delay <= {serial, delay[WIDTH:2]};
    end

    sync_r <= sync;
    if (~sync_r & sync) begin
        for (i = 0; i < HISTORY-1; i = i + 1) begin
            data[i+1] <= data[i];
        end
        data[0] <= delay;
        delay <= 0;
    end
    if (display_update) display_value <= data[0];
    if (display_reset) display_value <= 0;
end
`else
always @(posedge clock) delay <= {serial, delay[WIDTH:2]};
always @(posedge sync) begin
    for (i = 0; i < HISTORY-1; i = i + 1) begin
        data[i+1] <= data[i];
    end
    data[0] <= delay;
    delay <= 0;
end
`endif

endmodule
`default_nettype wire
