`timescale 1ns/1ps
`default_nettype none

`include "gse_defs.v"

module memory_loader(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire [47:0] cmd,
    input wire cmd_ready,

    input wire pa,
    input wire pb,
    input wire pc,
    input wire [14:1] bt,
    input wire w,
    input wire x,
    input wire y,
    input wire z,

    input wire [1:26] trs,

    input wire [3:1] cmd_dm,
    input wire cmd_dupdn,
    input wire [4:1] cmd_ds,
    input wire [9:1] cmd_a,

    output reg hltx,
    output reg DIN,

    output wire busy,
    output reg [42:0] verify_stream,
    output reg verify_stream_sync
);

initial hltx = 1;
initial DIN = 0;

reg [1:26] cmd_data;

`ifdef CLOCKED
wire load_cmd = cmd_ready & (cmd[47:44] == `MSG_GROUP_LOAD);
wire verify_cmd = cmd_ready & (cmd[47:44] == `MSG_GROUP_VERIFY);

localparam IDLE = 0,
           START_LOAD = 1,
           START_VERIFY = 2,
           SEND_STO = 3,
           SEND_DATA = 4,
           SEND_CLA = 5,
           READ_DATA = 6;

reg [2:0] state = IDLE;
reg [2:0] next_state = IDLE;

assign busy = (state != IDLE);

always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        state <= IDLE;
    end else begin
        state <= next_state;
    end
end

always @(*) begin
    next_state = state;
    case (state)
        IDLE: begin
            if (load_cmd) next_state = START_LOAD;
            if (verify_cmd) next_state = START_VERIFY;
        end
        START_LOAD: begin
            if (pb & bt[6]) next_state = SEND_STO;
        end
        START_VERIFY: begin
            if (pb & bt[6]) next_state = SEND_CLA;
        end
        SEND_STO: begin
            if (pb & bt[1]) next_state = SEND_DATA;
        end
        SEND_DATA: begin
            if (pa & bt[14]) next_state = SEND_CLA;
        end
        SEND_CLA: begin
            if (pa & bt[13]) next_state = READ_DATA;
        end
        READ_DATA: begin
            if (pa & bt[1] & y) next_state = IDLE;
        end
    endcase
end

always @(*) begin
    DIN = 0;
    if ((state == SEND_STO) || (state == SEND_CLA)) begin
        if (pb & bt[7])  DIN = cmd_dupdn;
        if (pb & bt[8])  DIN = cmd_dm[1];
        if (pb & bt[9])  DIN = cmd_dm[2];
        if (pb & bt[10]) DIN = cmd_dm[3];
        if (pb & bt[11]) DIN = cmd_ds[1];
        if (pb & bt[12]) DIN = cmd_ds[2];
        if (pb & bt[13]) DIN = cmd_ds[3];
        if (pb & bt[14]) DIN = cmd_ds[4];
        if (pc & bt[9])  DIN = 1;
        if (pc & bt[10]) DIN = 1;
        if (pc & bt[11]) DIN = (state == SEND_CLA);
        if (pc & bt[12]) DIN = 1;
        if (pc & bt[13]) DIN = cmd_a[9];
        if (pc & bt[14]) DIN = cmd_a[1];
        if (pa & bt[1])  DIN = cmd_a[2];
        if (pa & bt[2])  DIN = cmd_a[3];
        if (pa & bt[3])  DIN = cmd_a[4];
        if (pa & bt[4])  DIN = cmd_a[5];
        if (pa & bt[5])  DIN = cmd_a[6];
        if (pa & bt[6])  DIN = cmd_a[7];
        if (pa & bt[7])  DIN = cmd_a[8];
    end else if (state == SEND_DATA) begin
        if (pb & bt[2])  DIN = cmd_data[26];
        if (pb & bt[3])  DIN = cmd_data[25];
        if (pb & bt[4])  DIN = cmd_data[24];
        if (pb & bt[5])  DIN = cmd_data[23];
        if (pb & bt[6])  DIN = cmd_data[22];
        if (pb & bt[7])  DIN = cmd_data[21];
        if (pb & bt[8])  DIN = cmd_data[20];
        if (pb & bt[9])  DIN = cmd_data[19];
        if (pb & bt[10]) DIN = cmd_data[18];
        if (pb & bt[11]) DIN = cmd_data[17];
        if (pb & bt[12]) DIN = cmd_data[16];
        if (pb & bt[13]) DIN = cmd_data[15];
        if (pb & bt[14]) DIN = cmd_data[14];
        if (pc & bt[1])  DIN = cmd_data[13];
        if (pc & bt[2])  DIN = cmd_data[12];
        if (pc & bt[3])  DIN = cmd_data[11];
        if (pc & bt[4])  DIN = cmd_data[10];
        if (pc & bt[5])  DIN = cmd_data[9];
        if (pc & bt[6])  DIN = cmd_data[8];
        if (pc & bt[7])  DIN = cmd_data[7];
        if (pc & bt[8])  DIN = cmd_data[6];
        if (pc & bt[9])  DIN = cmd_data[5];
        if (pc & bt[10])  DIN = cmd_data[4];
        if (pc & bt[11])  DIN = cmd_data[3];
        if (pc & bt[12])  DIN = cmd_data[2];
        if (pc & bt[13])  DIN = cmd_data[1];
    end
end

wire verify_sync = (state == READ_DATA) & pa & bt[1] & x;
reg verify_sync_r;
assign verify_stream_sync = verify_sync & ~verify_sync_r;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        verify_sync_r <= 0;
    end else begin
        verify_sync_r <= verify_sync;
    end
end
assign verify_stream = {cmd_dm, cmd_dupdn, cmd_ds, cmd_a, trs};

always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        cmd_data <= 0;
    end else begin
        if (load_cmd | verify_cmd) begin
            cmd_data <= cmd[25:0];
        end
    end
end

`endif


endmodule
`default_nettype wire
