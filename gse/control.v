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

    output reg CST,
    output wire TE1
);

initial CST = 0;

wire control_cmd = (cmd_ready & cmd[47:40] == `MSGID_CONTROL);
wire advance_cmd = control_cmd & (cmd[39:32] == 'h01);
wire stop_cmd = control_cmd & (cmd[39:32] == 'h02);
reg cst_mode = 0;
assign TE1 = cst_mode;

wire nexm = {op, a[9:8]} == 'b111011;
wire nhop = op == 'b0000;

wire cst_allowed = cst_mode & ~nexm & ~nhop;

reg [4:1] cmd_op = 0;
reg [9:1] cmd_a = 0;
reg [8:1] cmd_ai3_ia = 0;
reg [3:1] cmd_im = 0;
reg cmd_dupin = 0;
reg [4:1] cmd_is = 0;
reg cmd_syl = 0;
reg [3:1] cmd_dm = 0;
reg cmd_dupdn = 0;
reg [4:1] cmd_ds = 0;

`ifdef CLOCKED

reg advance = 0;
wire addr_compare = ((im == cmd_im) && (dupin == cmd_dupin) && (is == cmd_is) && (syl == cmd_syl) && (ai3_ia == cmd_ai3_ia)) || advance;

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

reg stop = 0;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        stop <= 0;
    end else begin
        if (stop_cmd) stop <= 1;
        else if (CST) stop <= 0;
    end
end

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
`endif

`ifdef TARGET_FPGA
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        cst_mode <= 0;
        cmd_im <= 0;
        cmd_dupin <= 0;
        cmd_is <= 0;
        cmd_syl <= 0;
        cmd_ai3_ia <= 0;
    end else begin
        if (control_cmd) begin
            case (cmd[39:32])
                'h00: cst_mode <= cmd[0];
                'h03: begin
                    cmd_ai3_ia <= cmd[7:0];
                    cmd_is <= cmd[11:8];
                    cmd_syl <= cmd[12];
                    cmd_im <= cmd[18:16];
                    cmd_dupin <= cmd[20];
                end
            endcase
        end
    end
end
`endif

endmodule
`default_nettype wire
