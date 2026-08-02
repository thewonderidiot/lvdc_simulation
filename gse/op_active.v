`timescale 1ns/1ps
`default_nettype none

module op_active #(
    parameter OPCODE = 0,
    parameter CYCLES = 1
)(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire [4:1] op,
    input wire clk_start,
    input wire clk_end,
    output wire active
);

localparam COUNTER_LEN = $clog2(CYCLES + 1);

`ifdef TARGET_FPGA
`else
reg [COUNTER_LEN-1:0] counter;
initial counter = 'd0;

wire op_start;
assign op_start = clk_start & (op == OPCODE);

always @(posedge op_start) counter <= CYCLES;
always @(posedge clk_end) begin
    if (counter > 'd0) counter <= counter - 'd1;
end

assign active = counter > 'd0;
`endif

endmodule
`default_nettype wire
