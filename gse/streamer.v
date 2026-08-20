`timescale 1ns/1ps
`default_nettype none

`include "gse_defs.v"

module streamer(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire [39:0] SIM_TLM,
    input wire SIM_TLM_SYNC,
    output wire SIM_UART_TX,

    input wire [39:0] reg_stream,
    input wire reg_stream_sync,
    input wire [39:0] control_stream,
    input wire control_stream_sync,
    input wire [42:0] verify_stream,
    input wire verify_stream_sync
);

wire next_msg_ready;
wire [47:0] next_msg;

// Telemetry FIFO
wire read_tlm;
wire tlm_fifo_empty;
wire [39:0] next_tlm;
stream_fifo tlm_fifo(
  .clk(SIM_CLK),
  .srst(~SIM_RST),
  .din(SIM_TLM),
  .wr_en(SIM_TLM_SYNC),
  .rd_en(read_tlm),
  .dout(next_tlm),
  .full(),
  .empty(tlm_fifo_empty)
);

// Register FIFO
wire read_reg;
wire reg_fifo_empty;
wire [39:0] next_reg;
stream_fifo reg_fifo(
  .clk(SIM_CLK),
  .srst(~SIM_RST),
  .din(reg_stream),
  .wr_en(reg_stream_sync),
  .rd_en(read_reg),
  .dout(next_reg),
  .full(),
  .empty(reg_fifo_empty)
);

// Control FIFO
wire read_control;
wire control_fifo_empty;
wire [39:0] next_control;
stream_fifo control_fifo(
  .clk(SIM_CLK),
  .srst(~SIM_RST),
  .din(control_stream),
  .wr_en(control_stream_sync),
  .rd_en(read_control),
  .dout(next_control),
  .full(),
  .empty(control_fifo_empty)
);

// Verify FIFO
wire read_verify;
wire verify_fifo_empty;
wire [42:0] next_verify;
verify_fifo verify_fifo1(
  .clk(SIM_CLK),
  .srst(~SIM_RST),
  .din(verify_stream),
  .wr_en(verify_stream_sync),
  .rd_en(read_verify),
  .dout(next_verify),
  .full(),
  .empty(verify_fifo_empty)
);

// Signal to send message FIFO that the message sender is ready for data
wire sender_ready;
// Data from send message FIFO to the message sender
wire [47:0] send_msg;

// Send message FIFO status flags
wire send_fifo_empty;
wire send_fifo_ready;
assign send_fifo_ready = ~send_fifo_empty;
wire send_fifo_full;

// SLIP-encoded byte output from message sender and its validity flag
wire send_byte_ready;
wire [7:0] send_byte;

// TX byte FIFO status flags
wire tx_byte_fifo_full;
wire tx_byte_fifo_empty;

// Output byte from the TX byte FIFO
wire [7:0] tx_byte;
wire tx_byte_read_en;

assign next_msg = ~tlm_fifo_empty ? {`MSGID_TELEMETRY, next_tlm} :
                  ~verify_fifo_empty ? {`MSG_GROUP_VERIFY, 1'b0, next_verify} :
                  ~reg_fifo_empty ? {`MSGID_REGISTERS, next_reg} :
                  ~control_fifo_empty ? {`MSGID_CONTROL, next_control} :
                  40'b0;

assign read_tlm = (~tlm_fifo_empty & ~send_fifo_full);
assign read_verify = (tlm_fifo_empty & ~verify_fifo_empty & ~send_fifo_full);
assign read_reg = (tlm_fifo_empty & verify_fifo_empty & ~reg_fifo_empty & ~send_fifo_full);
assign read_control = (tlm_fifo_empty & verify_fifo_empty & reg_fifo_empty & ~control_fifo_empty & ~send_fifo_full);
assign next_msg_ready = read_tlm | read_verify | read_reg | read_control;

// Send message FIFO
msg_fifo send_msg_fifo(
  .clk(SIM_CLK),
  .srst(~SIM_RST),
  .din(next_msg),
  .wr_en(next_msg_ready),
  .rd_en(sender_ready),
  .dout(send_msg),
  .full(send_fifo_full),
  .empty(send_fifo_empty)
);

msg_sender msg_sender1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .msg(send_msg),
    .msg_ready(send_fifo_ready),
    .sender_ready(sender_ready),
    .out_byte(send_byte),
    .out_byte_ready(send_byte_ready),
    .byte_fifo_full(tx_byte_fifo_full)
);

wire uart_tx_busy;
wire uart_tx_en;

assign tx_byte_read_en = (~tx_byte_fifo_empty) & (~uart_tx_busy);

// Read byte FIFO
tx_byte_fifo tx_byte_fifo1(
    .clk(SIM_CLK),
    .srst(~SIM_RST),
    .din(send_byte),
    .wr_en(send_byte_ready),
    .rd_en(tx_byte_read_en),
    .dout(tx_byte),
    .full(tx_byte_fifo_full),
    .empty(tx_byte_fifo_empty)
);

uart_tx #(
    .BIT_RATE(1000000),
    .CLK_HZ(40960000)
) uart_tx1 (
    .clk(SIM_CLK),
    .resetn(SIM_RST),
    .uart_txd(SIM_UART_TX),
    .uart_tx_en(tx_byte_read_en),
    .uart_tx_busy(uart_tx_busy),
    .uart_tx_data(tx_byte)
);

endmodule
`default_nettype wire
