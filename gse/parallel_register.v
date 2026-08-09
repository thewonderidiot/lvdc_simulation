`timescale 1ns/1ps
`default_nettype none

module parallel_register #(
    parameter WIDTH = 9
)(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire [WIDTH:1] in,
    input wire sync,
    input wire [3:0] index,
    output wire [WIDTH:1] out
);

localparam HISTORY = 16;

reg [HISTORY-1:0][1:WIDTH] data;
integer i;
initial begin
    for (i = 0; i < WIDTH; i = i + 1) data = 'b0;
end
assign out = data[index];

`ifdef CLOCKED
reg sync_r;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        for (i = 0; i < WIDTH; i = i + 1) data = 'b0;
        sync_r <= 0;
    end else begin
        sync_r <= sync;
        if (~sync_r & sync) begin
            for (i = 0; i < WIDTH-1; i = i + 1) begin
                data[i+1] <= data[i];
            end
            data[0] <= in;
        end
    end
end
`else
always @(posedge sync) begin
    for (i = 0; i < WIDTH-1; i = i + 1) begin
        data[i+1] <= data[i];
    end
    data[0] <= in;
end
`endif

endmodule
`default_nettype wire
