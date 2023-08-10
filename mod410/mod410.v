`timescale 1ns/1ps
`default_nettype none

module mod410(
    input wire SIM_CLK,
    input wire SIM_RST,
    output wire SIM_UART_TX,

    input wire BRD1,
    input wire BRD2,
    input wire BRD3,
    input wire BRD4,
    input wire BRD5,
    input wire BRD6,
    input wire BRD7,
    input wire BRD8,
    input wire BRD9,
    input wire BRD10,
    input wire BRD11,
    input wire BRD12,
    input wire BRD13,
    input wire BRD14,
    input wire BRD15,
    input wire BRD16,
    input wire BRD17,
    input wire BRD18,
    input wire BRD19,
    input wire BRD20,
    input wire BRD21,
    input wire BRD22,
    input wire BRD23,
    input wire BRD24,
    input wire BRD25,
    input wire BRD26,
    input wire RTR1,
    input wire RTR2,
    input wire RTR3,
    input wire RTR4,
    input wire RTR5,
    input wire TAGR1,
    input wire TAGR2,
    input wire TAGR3,
    input wire TAGR4,
    input wire TAGR5,
    input wire TAGR6,
    input wire TAGR7,
    input wire TAGR8,

    output wire TSYNC
);

`define STATE_IDLE     2'd0
`define STATE_SAMPLE   2'd1
`define STATE_SEND     2'd2
`define STATE_WAIT     2'd3

reg [1:0] state;
reg [1:0] state_next;

wire uart_tx_en;
assign uart_tx_en = state == `STATE_SEND;
wire uart_tx_busy;

reg [3:0] byte_count;

reg [47:0] lvdc_word;
wire [47:0] lvdc_word_next;
assign lvdc_word_next = {
    8'hA5,
    RTR3,
    RTR2,
    RTR1,
    1'b0, // PARITY
    BRD6,
    BRD5,
    BRD4,
    BRD3,
    BRD2,
    BRD1,
    TAGR8,
    TAGR1,
    TAGR2,
    TAGR7,
    TAGR6,
    TAGR5,
    TAGR4,
    TAGR3,
    RTR5,
    RTR4,
    BRD16,
    BRD15,
    BRD14,
    BRD13,
    BRD12,
    BRD11,
    BRD10,
    BRD9,
    BRD8,
    BRD7,
    BRD26,
    BRD25,
    BRD24,
    BRD23,
    BRD22,
    BRD21,
    BRD20,
    BRD19,
    BRD18,
    BRD17
};

always @(posedge SIM_CLK) begin
    if (~SIM_RST) begin
        lvdc_word <= 40'b0;
    end else begin
        if (state == `STATE_SAMPLE) begin
            lvdc_word <= lvdc_word_next;
        end else begin
            if (state == `STATE_WAIT && ~uart_tx_busy) begin
                lvdc_word <= lvdc_word << 8;
            end else begin
                lvdc_word <= lvdc_word;
            end
        end
    end
end

localparam MAX_COUNT = 170666;

reg [17:0] count;

always @(posedge SIM_CLK) begin
    if (~SIM_RST) begin
        count <= MAX_COUNT;
    end else begin
        if (count == 0) begin
            count <= MAX_COUNT;
        end else begin
            count <= count - 1;
        end
    end
end

always @(*) begin
    state_next = state;
    case (state)
    `STATE_IDLE: begin
        if (count == 18'd0 && lvdc_word_next[39:0] != 40'b0) begin
            state_next = `STATE_SAMPLE;
        end
    end
    `STATE_SAMPLE: begin
        state_next = `STATE_SEND;
    end
    `STATE_SEND: begin
        state_next = `STATE_WAIT;
    end
    `STATE_WAIT: begin
        if (~uart_tx_busy) begin
            if (byte_count == 0) begin
                state_next = `STATE_IDLE;
            end else begin
                state_next = `STATE_SEND;
            end
        end
    end

    endcase
end

always @(posedge SIM_CLK) begin
    if (~SIM_RST) begin
        state <= 2'd0;
    end else begin
        state <= state_next;
    end
end

always @(posedge SIM_CLK) begin
    if (~SIM_RST) begin
        byte_count <= 4'd6;
    end else begin
        if (state == `STATE_SAMPLE) begin
            byte_count <= 4'd6;
        end else if (state == `STATE_SEND) begin
            byte_count <= byte_count - 1;
        end
    end
end

assign TSYNC = (byte_count == 5);

uart_tx #(
    .BIT_RATE(115200),
    .CLK_HZ(40960000)
) tx (
    .clk(SIM_CLK),
    .resetn(SIM_RST),
    .uart_txd(SIM_UART_TX),
    .uart_tx_en(uart_tx_en),
    .uart_tx_busy(uart_tx_busy),
    .uart_tx_data(lvdc_word[47:40]) 
);

endmodule
`default_nettype wire
