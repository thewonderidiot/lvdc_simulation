`timescale 1ns/1ps
`default_nettype none

module mod410(
    input wire SIM_CLK,
    input wire SIM_RST,
    output wire [39:0] SIM_TLM,
    output wire SIM_TLM_SYNC,

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

assign SIM_TLM = {
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

`ifdef CLOCKED

localparam MAX_COUNT = 170666;
localparam COUNT_LEN = $clog2(MAX_COUNT);
reg [COUNT_LEN-1:0] counter;

always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        counter <= 0;
    end else begin
        if (counter >= MAX_COUNT - 1) counter <= 0;
        else counter <= counter + 1;
    end
end
assign SIM_TLM_SYNC = counter == 0;
assign TSYNC = counter < 7864; // about 192us

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
