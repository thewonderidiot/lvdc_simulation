`timescale 1ns/1ps
`default_nettype none

`include "gse_defs.v"

module control(
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

    input wire [4:1] op,
    input wire [9:1] a,
    input wire [8:1] ai3_ia,
    input wire [1:26] ai3_data,
    input wire [3:1] im,
    input wire dupin,
    input wire [4:1] is,
    input wire syl,
    input wire [3:1] dm,
    input wire dupdn,
    input wire [4:1] ds,

    input wire verify_sync,

    output reg CST,
    output wire TE1,
    output reg hltx,

    output reg [3:1] cmd_dm,
    output reg cmd_dupdn,
    output reg [4:1] cmd_ds,
    output reg [9:1] cmd_a,

    output wire display_update,
    output wire display_reset,

    output reg [39:0] control_stream,
    output wire control_stream_sync
);

initial CST = 0;
initial hltx = 1;

wire control_cmd = (cmd_ready & cmd[47:40] == `MSGID_CONTROL);
wire advance_cmd = control_cmd & (cmd[39:32] == `CONTROL_CMD_ADVANCE);
wire stop_cmd = control_cmd & (cmd[39:32] == `CONTROL_CMD_STOP);
wire restart_cmd = control_cmd & (cmd[39:32] == `CONTROL_CMD_RESTART);
wire display_reset_cmd = control_cmd & (cmd[39:32] == `CONTROL_CMD_DISPLAY_RESET);
wire load_cmd = cmd_ready & (cmd[47:44] == `MSG_GROUP_LOAD);
wire verify_cmd = cmd_ready & (cmd[47:44] == `MSG_GROUP_VERIFY);

assign display_reset = display_reset_cmd;

reg cst_mode = 0;
assign TE1 = cst_mode;

reg restart_mode = 0;
reg compare_mode = 0;
reg [1:0] display_mode = 0;

wire nexm = {op, a[9:8]} == 'b111011;
wire nhop = op == 'b0000;

wire cst_allowed = cst_mode & ~nexm & ~nhop;

reg [4:1] cmd_op = 0;
reg [8:1] cmd_ai3_ia = 0;
reg [3:1] cmd_im = 0;
reg cmd_dupin = 0;
reg [4:1] cmd_is = 0;
reg cmd_syl = 0;
initial cmd_dm = 0;
initial cmd_dupdn = 0;
initial cmd_ds = 0;
initial cmd_a = 0;

`ifdef CLOCKED

// Address Compare
reg advance = 0;
wire inst_compare = ~compare_mode && (im == cmd_im) && (dupin == cmd_dupin) && (is == cmd_is) && (syl == cmd_syl) && (ai3_ia == cmd_ai3_ia);
wire data_compare = compare_mode && (dm == cmd_dm) && (dupdn == cmd_dupdn) && (ds == cmd_ds) && (op == cmd_op) && (a == cmd_a);

reg addr_compare = 0;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        addr_compare <= 0;
    end else begin
        if (pb & bt[1] & y) addr_compare <= inst_compare || data_compare || advance;
        if (verify_sync) addr_compare <= 1;
        if (pc & bt[4]) addr_compare <= 0;
    end
end

// Display Updates
reg display_locked = 0;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        display_locked <= 0;
    end else begin
        if (addr_compare & display_mode[0]) display_locked <= 1;
        else if (display_reset_cmd) display_locked <= 0;
        else if (display_mode != 'b01) display_locked <= 0;
    end
end

assign display_update = (display_mode == 0) || (addr_compare & ~display_locked);

// Advance
reg advance_pend = 0;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        advance_pend <= 0;
    end else begin
        if (advance_cmd & CST) advance_pend <= 1;
        else if (advance) advance_pend <= 0;
    end
end

always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        advance <= 0;
    end else begin
        if (advance_pend & pc & bt[9]) advance <= 1;
        else if (advance & cst_allowed & pc & bt[8]) advance <= 0;
        else if (~cst_mode) advance <= 0;
    end
end

// Stop
reg stop = 0;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        stop <= 0;
    end else begin
        if (stop_cmd) stop <= 1;
        else if (CST) stop <= 0;
    end
end

// CST control
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        CST <= 1'b0;
    end else begin
        if (cst_allowed && (stop || (addr_compare & pc & bt[2]))) begin
            CST <= 1;
        end
        if (advance & pc & bt[10]) begin
            CST <= 0;
        end
        if (~cst_mode & pc & bt[10]) begin
            CST <= 0;
        end
    end
end

// Restart control
wire hop0 = {op, im, dupin, is, syl, ai3_ia, dm, dupdn, ds, a} == 0;
reg restart = 0;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        restart <= 0;
    end else begin
        if ((restart_cmd & ~restart_mode) | (addr_compare & restart_mode)) restart <= 1;
        if (hop0) restart <= 0;
    end
end

// Boot sequencing
reg [13:0] boot_count;
reg [13:0] next_boot_count;
initial boot_count = 14'o37777;

always @(*) begin
    if (boot_count > 14'o0) begin
        next_boot_count = boot_count - 14'o1;
    end else begin
        next_boot_count = 14'o0;
    end
end

always @(posedge SIM_CLK) begin
    if (~SIM_RST) begin
        boot_count <= 14'o37777;
    end else begin
        boot_count <= next_boot_count;
    end
end

always @(*) begin
    hltx = (boot_count > 14'o0) || restart;
end
`else
initial begin
    #100000 hltx = 0;
end
`endif

`ifdef TARGET_FPGA
// Commands and telemetry
localparam NUM_REGISTERS = 3;
localparam FREQUENCY = 50;
localparam MAX_COUNT = (40960000 / NUM_REGISTERS / FREQUENCY);
localparam COUNTER_LEN = $clog2(MAX_COUNT);

reg [COUNTER_LEN-1:0] counter;
initial counter = 'd0;

reg [7:0] reg_idx;
initial reg_idx = 'd0;

// Round-robin register streaming
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
        'd0:  control_stream = {reg_idx, 26'b0, display_mode, compare_mode, restart_mode, CST, cst_mode};
        'd1:  control_stream = {reg_idx, 11'b0, cmd_dupin, 1'b0, cmd_im, 3'b0, cmd_syl, cmd_is, cmd_ai3_ia};
        'd2:  control_stream = {reg_idx, 4'b0, cmd_op, cmd_dupdn, cmd_dm, cmd_ds, 7'b0, cmd_a};
    endcase
end

assign control_stream_sync = counter == 0;

always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        cst_mode <= 0;
        cmd_im <= 0;
        cmd_dupin <= 0;
        cmd_is <= 0;
        cmd_syl <= 0;
        cmd_ai3_ia <= 0;
        restart_mode <= 0;
        compare_mode <= 0;
        display_mode <= 0;
    end else begin
        if (control_cmd) begin
            case (cmd[39:32])
                `CONTROL_CMD_SET_CST_MODE: cst_mode <= cmd[0];
                `CONTROL_CMD_SET_CMD_INS_ADDR: begin
                    cmd_ai3_ia <= cmd[7:0];
                    cmd_is <= cmd[11:8];
                    cmd_syl <= cmd[12];
                    cmd_im <= cmd[18:16];
                    cmd_dupin <= cmd[20];
                end
                `CONTROL_CMD_SET_CMD_DATA_ADDR: begin
                    cmd_a <= cmd[8:0];
                    cmd_ds <= cmd[19:16];
                    cmd_dm <= cmd[22:20];
                    cmd_dupdn <= cmd[23];
                    cmd_op <= cmd[27:24];
                end
                `CONTROL_CMD_SET_RESTART_MODE: restart_mode <= cmd[0];
                `CONTROL_CMD_SET_COMPARE_MODE: compare_mode <= cmd[0];
                `CONTROL_CMD_SET_DISPLAY_MODE: display_mode <= cmd[1:0];
            endcase
        end else if (load_cmd | verify_cmd) begin
            cmd_dm <= cmd[42:40];
            cmd_dupdn <= cmd[39];
            cmd_ds <= cmd[38:35];
            cmd_a <= cmd[34:26];
        end
    end
end
`endif

endmodule
`default_nettype wire
