`timescale 1ns/1ps
`default_nettype none

module mod410(
    input wire SIM_CLK,
    input wire SIM_RST,
    output wire SIM_UART_TX,

    input wire BR1,
    input wire BR2,
    input wire BR3,
    input wire BR4,
    input wire BR5,
    input wire BR6,
    input wire BR7,
    input wire BR8,
    input wire BR9,
    input wire BR10,
    input wire BR11,
    input wire BR12,
    input wire BR13,
    input wire BR14,
    input wire BR15,
    input wire BR16,
    input wire BR17,
    input wire BR18,
    input wire BR19,
    input wire BR20,
    input wire BR21,
    input wire BR22,
    input wire BR23,
    input wire BR24,
    input wire BR25,
    input wire BR26,
    input wire RT1,
    input wire RT2,
    input wire RT3,
    input wire RT4,
    input wire RT5,
    input wire TAG1,
    input wire TAG2,
    input wire TAG3,
    input wire TAG4,
    input wire TAG5,
    input wire TAG6,
    input wire TAG7,
    input wire TAG8,
    input wire TPBX,

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
    RT3,
    RT2,
    RT1,
    TPBX,
    BR6,
    BR5,
    BR4,
    BR3,
    BR2,
    BR1,
    TAG8,
    TAG1,
    TAG2,
    TAG7,
    TAG6,
    TAG5,
    TAG4,
    TAG3,
    RT5,
    RT4,
    BR16,
    BR15,
    BR14,
    BR13,
    BR12,
    BR11,
    BR10,
    BR9,
    BR8,
    BR7,
    BR26,
    BR25,
    BR24,
    BR23,
    BR22,
    BR21,
    BR20,
    BR19,
    BR18,
    BR17
};

`ifdef TARGET_FPGA
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
        if (count == 18'd0 && !(lvdc_word_next[39:37] == 3'b0 && lvdc_word_next[35:0] == 36'b0)) begin
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

`else
reg tsync_r = 0;
always begin
    #800000 tsync_r = 1;
    #10000  tsync_r = 0;
end
assign TSYNC = tsync_r;
`endif

endmodule
`default_nettype wire
