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

    output reg hltx,
    output reg DIN
);

initial hltx = 0;
initial DIN = 0;

reg [3:1] cmd_dm;
reg cmd_dupdn;
reg [4:1] cmd_ds;
reg [9:1] cmd_a;
reg [26:1] cmd_word;

`ifdef CLOCKED
wire load_cmd = cmd_ready & (cmd[47:44] == `MSG_GROUP_LOAD);
wire verify_cmd = cmd_ready & (cmd[47:44] == `MSG_GROUP_VERIFY);

always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        cmd_dm <= 0;
        cmd_dupdn <= 0;
        cmd_ds <= 0;
        cmd_a <= 0;
        cmd_word <= 0;
    end else begin
        if (load_cmd | verify_cmd) begin
            cmd_dm <= cmd[42:40];
            cmd_dupdn <= cmd[39];
            cmd_ds <= cmd[38:35];
            cmd_a <= cmd[34:26];
            cmd_word <= cmd[25:0];
        end
    end
end

`else
initial begin
    #2000000 hltx = 1;
    @(posedge pb);
    @(posedge pb);
    @(posedge pb);
    @(posedge pb);
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);         // Duplex, DM2, DS16
    @(posedge w) DIN = 1; // B-7-X  Data sim/dup
    @(posedge w) DIN = 0; // B-8-X  DM1
    @(posedge w) DIN = 0; // B-9-X  DM2
    @(posedge w) DIN = 0; // B-10-X DM3
    @(posedge w) DIN = 1; // B-11-X DS1
    @(posedge w) DIN = 1; // B-12-X DS2
    @(posedge w) DIN = 1; // B-13-X DS3
    @(posedge w) DIN = 1; // B-14-X DS4
    @(posedge w) DIN = 0; // done
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);         // CLA 0101
    @(posedge w) DIN = 1; // C-9-X  OP1
    @(posedge w) DIN = 1; // C-10-X OP2
    @(posedge w) DIN = 1; // C-11-X OP3
    @(posedge w) DIN = 1; // C-12-X OP4
    @(posedge w) DIN = 1; // C-13-X A9
    @(posedge w) DIN = 1; // C-14-X A1
    @(posedge w) DIN = 1; // A-1-X  A2
    @(posedge w) DIN = 1; // A-2-X  A3
    @(posedge w) DIN = 1; // A-3-X  A4
    @(posedge w) DIN = 0; // A-4-X  A5
    @(posedge w) DIN = 0; // A-5-X  A6
    @(posedge w) DIN = 0; // A-6-X  A7
    @(posedge w) DIN = 0; // A-7-X  A8
    @(posedge w) DIN = 0; // done
    @(posedge w);
    @(posedge pb);
    @(posedge pb);
    @(posedge pb);
    @(posedge pb);
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);         // Duplex, DM2, DS16
    @(posedge w) DIN = 1; // B-7-X  Data sim/dup
    @(posedge w) DIN = 0; // B-8-X  DM1
    @(posedge w) DIN = 1; // B-9-X  DM2
    @(posedge w) DIN = 0; // B-10-X DM3
    @(posedge w) DIN = 0; // B-11-X DS1
    @(posedge w) DIN = 1; // B-12-X DS2
    @(posedge w) DIN = 1; // B-13-X DS3
    @(posedge w) DIN = 1; // B-14-X DS4
    @(posedge w) DIN = 0; // done
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);
    @(posedge w);         // STO 0101
    @(posedge w) DIN = 1; // C-9-X  OP1
    @(posedge w) DIN = 1; // C-10-X OP2
    @(posedge w) DIN = 0; // C-11-X OP3
    @(posedge w) DIN = 1; // C-12-X OP4
    @(posedge w) DIN = 0; // C-13-X A9
    @(posedge w) DIN = 1; // C-14-X A1
    @(posedge w) DIN = 0; // A-1-X  A2
    @(posedge w) DIN = 0; // A-2-X  A3
    @(posedge w) DIN = 0; // A-3-X  A4
    @(posedge w) DIN = 0; // A-4-X  A5
    @(posedge w) DIN = 0; // A-5-X  A6
    @(posedge w) DIN = 1; // A-6-X  A7
    @(posedge w) DIN = 0; // A-7-X  A8
    @(posedge w) DIN = 0; // done
    @(posedge w) DIN = 0;
    @(posedge w) DIN = 0;
    @(posedge w) DIN = 0;
    @(posedge w) DIN = 0;
    @(posedge w) DIN = 0;
    @(posedge w) DIN = 0;
    @(posedge w) DIN = 0;
    @(posedge w) DIN = 0; // B-2-X  D26
    @(posedge w) DIN = 0; // B-3-X  D25
    @(posedge w) DIN = 0; // B-4-X  D24
    @(posedge w) DIN = 0; // B-5-X  D23
    @(posedge w) DIN = 0; // B-6-X  D22
    @(posedge w) DIN = 0; // B-7-X  D21
    @(posedge w) DIN = 0; // B-8-X  D20
    @(posedge w) DIN = 0; // B-9-X  D19
    @(posedge w) DIN = 0; // B-10-X D18
    @(posedge w) DIN = 0; // B-11-X D17
    @(posedge w) DIN = 0; // B-12-X D16
    @(posedge w) DIN = 0; // B-13-X D15
    @(posedge w) DIN = 0; // B-14-X D14
    @(posedge w) DIN = 0; // C-1-X  D13
    @(posedge w) DIN = 0; // C-2-X  D12
    @(posedge w) DIN = 1; // C-3-X  D11
    @(posedge w) DIN = 1; // C-4-X  D10
    @(posedge w) DIN = 1; // C-5-X  D9
    @(posedge w) DIN = 1; // C-6-X  D8
    @(posedge w) DIN = 0; // C-7-X  D7
    @(posedge w) DIN = 0; // C-8-X  D6
    @(posedge w) DIN = 0; // C-9-X  D5
    @(posedge w) DIN = 0; // C-10-X D4
    @(posedge w) DIN = 0; // C-11-X D3
    @(posedge w) DIN = 0; // C-12-X D2
    @(posedge w) DIN = 1; // C-13-X D1
    @(posedge w) DIN = 0;
    #1200000 $finish;
end
`endif


endmodule
`default_nettype wire
