`timescale 1ns/1ps
`default_nettype none

module cmd_interface(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire SIM_UART_RX,

    input wire cmd_busy,

    output wire [47:0] cmd,
    output wire cmd_ready
);

wire [7:0] rx_data;
wire rx_data_ready;

// Upon completion of a valid command, the receiver will assert cmd_valid and
// output the command on cmd_in. This will place the command onto the incoming
// command FIFO.
wire cmd_valid;
wire [47:0] cmd_in;

// Command FIFO state flags 
wire cmd_fifo_empty;

assign cmd_ready = (~cmd_busy) & (~cmd_fifo_empty);

uart_rx #(
    .BIT_RATE(1000000),
    .CLK_HZ(40960000)
) uart_rx1 (
    .clk(SIM_CLK),
    .resetn(SIM_RST),
    .uart_rxd(SIM_UART_RX),
    .uart_rx_en(1'b1),
    .uart_rx_data(rx_data),
    .uart_rx_valid(rx_data_ready)
);

// Command receiver
cmd_receiver cmd_rx(
    .clk(SIM_CLK),
    .rst_n(SIM_RST),
    .data(rx_data),
    .data_ready(rx_data_ready),
    .cmd_valid(cmd_valid),
    .cmd_msg(cmd_in)
);

// Queue of completed incoming commands
cmd_fifo cmd_queue(
    .clk(SIM_CLK),
    .srst(~SIM_RST),
    .din(cmd_in),
    .wr_en(cmd_valid),
    .rd_en(cmd_ready),
    .dout(cmd),
    .empty(cmd_fifo_empty)
);

endmodule
`default_nettype wire
