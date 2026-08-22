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

    output wire hltx,
    output reg DIN,

    output wire busy,
    output wire verify_compare,
    output reg [39:0] loader_stream,
    output wire loader_stream_sync,
    output wire [42:0] verify_stream,
    output wire verify_stream_sync
);

initial DIN = 0;

reg mldd_mode = 0;
reg verify_only = 0;

assign hltx = mldd_mode;

reg [1:26] cmd_data;
wire syl0_parity = ^{cmd_data[14:26], 1'b1};
wire syl1_parity = ^{cmd_data[1:13], 1'b1};

`ifdef TARGET_FPGA
wire load_cmd = cmd_ready & (cmd[47:44] == `MSG_GROUP_LOAD);
wire verify_cmd = cmd_ready & (cmd[47:44] == `MSG_GROUP_VERIFY);
wire loader_cmd = cmd_ready & (cmd[47:40] == `MSGID_LOADER);

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
            if (load_cmd || (loader_cmd && ((cmd[39:32] == `LOADER_CMD_ADDRESS_COMPUTER) && ~verify_only))) next_state = START_LOAD;
            if (verify_cmd || (loader_cmd && ((cmd[39:32] == `LOADER_CMD_ADDRESS_COMPUTER) && verify_only))) next_state = START_VERIFY;
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

assign verify_compare = (state == READ_DATA);
wire verify_sync = verify_compare & pa & bt[1] & x;
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

// Commands and telemetry
localparam NUM_REGISTERS = 2;
localparam FREQUENCY = 50;
localparam MAX_COUNT = (40960000 / NUM_REGISTERS / FREQUENCY);
localparam COUNTER_LEN = $clog2(MAX_COUNT);

reg [COUNTER_LEN-1:0] counter;
initial counter = 'd0;

reg [7:0] reg_idx;
initial reg_idx = 'd0;

// Round-robin data streaming
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        counter <= 'd0;
        reg_idx <= 'd0;
    end else begin
        if (counter == MAX_COUNT - 1) begin
            counter <= 'd0;
            if (reg_idx == NUM_REGISTERS - 1) begin
                reg_idx = 0;
            end else begin
                reg_idx <= reg_idx + 1;
            end
        end else begin
            counter <= counter + 1;
        end
    end
end

always @(*) begin
    case (reg_idx)
        'd0: loader_stream = {reg_idx, 30'b0, verify_only, mldd_mode};
        'd1: loader_stream = {reg_idx, 4'b0, syl1_parity, syl0_parity, cmd_data};
    endcase
end

assign loader_stream_sync = counter == 0;

always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        mldd_mode <= 0;
        verify_only <= 0;
        cmd_data <= 0;
    end else begin
        if (load_cmd || verify_cmd) begin
            cmd_data <= cmd[25:0];
        end
        if (loader_cmd) begin
            case (cmd[39:32])
                `LOADER_CMD_SET_MODE: mldd_mode <= cmd[0];
                `LOADER_CMD_SET_CMD_DATA: cmd_data <= cmd[25:0];
                `LOADER_CMD_SET_VERIFY_ONLY: verify_only <= cmd[0];
            endcase
        end
    end
end

`endif


endmodule
`default_nettype wire
