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
initial begin
    for (i = 0; i < WIDTH; i = i + 1) data = 'b0;
end
assign out = data[0];
assign display = (index == 0) ? display_value : data[index];

`ifdef CLOCKED
reg clock_r;
reg sync_r;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        for (i = 0; i < WIDTH; i = i + 1) data = 'b0;
        sync_r <= 0;
        delay <= 0;
        clock_r <= 0;
    end else begin
        clock_r <= clock;
        if (~clock_r & clock) begin
            delay <= {serial, delay[WIDTH:2]};
        end

        sync_r <= sync;
        if (~sync_r & sync) begin
            for (i = 0; i < WIDTH-1; i = i + 1) begin
                data[i+1] <= data[i];
            end
            data[0] <= delay;
            delay <= 0;
        end
        if (display_update) display_value <= data[0];
        if (display_reset) display_value <= 0;
    end
end
`else
always @(posedge clock) delay <= {serial, delay[WIDTH:2]};
always @(posedge sync) begin
    for (i = 0; i < WIDTH-1; i = i + 1) begin
        data[i+1] <= data[i];
    end
    data[0] <= delay;
    delay <= 0;
end
`endif

endmodule
`default_nettype wire
