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

reg [COUNTER_LEN-1:0] counter;
initial counter = 'd0;

assign active = counter > 'd0;

`ifdef TARGET_FPGA
reg clk_start_r;
reg clk_end_r;

always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        clk_start_r <= 0;
        clk_end_r <= 0;
        counter <= 0;
    end else begin
        clk_start_r <= clk_start;
        clk_end_r <= clk_end;

        if (~clk_start_r & clk_start & (op == OPCODE)) begin
            counter <= CYCLES;
        end else if (~clk_end_r & clk_end & (counter > 'd0)) begin
            counter <= counter - 1;
        end
    end
end

`else

wire op_start;
assign op_start = clk_start & (op == OPCODE);

always @(posedge op_start) counter <= CYCLES;
always @(posedge clk_end) begin
    if (counter > 'd0) counter <= counter - 'd1;
end

`endif

endmodule
`default_nettype wire
