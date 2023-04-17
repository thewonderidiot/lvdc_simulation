`timescale 1ns/1ps
`default_nettype none

module osc(
    output reg y,
    input wire clk,
    input wire rst
);

initial y = 0;

`ifdef TARGET_FPGA

reg [3:0] count;
reg [3:0] count_next;
reg y_next;

initial count = 0;
initial count_next = 0;
initial y_next = 0;

always @(*) begin
    if (count == 4'd9) begin
        count_next = 4'd0;
        y_next = ~y;
    end else begin
        count_next = count + 4'd1;
        y_next = y;
    end
end

always @(posedge clk) begin
    if (~rst) begin
        count <= 4'd0;
        y <= 1'b0;
    end else begin
        count <= count_next;
        y <= y_next;
    end
end
    
`else

always #244.140625 y = !y;

`endif

endmodule
`default_nettype wire
