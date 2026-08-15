`timescale 1ns/1ps
`default_nettype none

`include "gse_defs.v"

module lvdc_registers(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire [47:0] cmd,
    input wire cmd_ready,

    input wire CST,

    input wire OP1V,
    input wire OP2V,
    input wire OP3V,
    input wire OP4V,

    input wire A1V,
    input wire A2V,
    input wire A3V,
    input wire A4V,
    input wire A5V,
    input wire A6V,
    input wire A7V,
    input wire A8V,
    input wire A9V,

    input wire BRA14P,
    input wire BRB14P,

    input wire AI3V,
    input wire HOPC1V,
    input wire MD7V,
    input wire MR1V,
    input wire PR0V,
    input wire TRSV,
    input wire C1RDN,
    input wire C2RDN,
    input wire C3RD,
    input wire C4RDV,

    input wire ADV,
    input wire pa,
    input wire pb,
    input wire pc,
    input wire [14:1] bt,
    input wire w,
    input wire x,
    input wire y,
    input wire z,

    output wire [4:1] op,
    output wire [9:1] a,
    output wire [8:1] ai3_ia,
    output wire [1:26] ai3_data,
    output wire [3:1] im,
    output wire dupin,
    output wire [4:1] is,
    output wire syl,
    output wire [3:1] dm,
    output wire dupdn,
    output wire [4:1] ds,

    output reg [39:0] reg_stream,
    output wire reg_stream_sync
);

wire [1:26] trs;
wire [1:26] md7;
wire [1:26] mr1;
wire [1:26] pr0;
wire [1:26] hopc1;
wire [1:13] rtc;
wire [1:13] mlc;
wire [1:13] ssc;
wire [1:26] ssmsr;

assign im = {ssmsr[25:26], ssmsr[1]};
assign dupin = ssmsr[2];
assign is = ssmsr[21:24];
assign syl = ssmsr[20];
assign dm = ssmsr[7:9];
assign dupdn = ssmsr[10];
assign ds = ssmsr[3:6];

reg [3:0] hist_idx = 0;

// Parallel registers
wire [4:1] OPV = {OP4V, OP3V, OP2V, OP1V};
parallel_register #(4) reg_op(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .in(OPV),
    .sync(pa & bt[12] & z & ~CST),
    .index(hist_idx),
    .out(op)
);

wire [9:1] AV = {A9V, A8V, A7V, A6V, A5V, A4V, A3V, A2V, A1V};
parallel_register #(9) reg_a(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .in({A9V, A8V, A7V, A6V, A5V, A4V, A3V, A2V, A1V}),
    .sync(pa & bt[14] & w & ADV & ~CST),
    .index(hist_idx),
    .out(a)
);

wire [2:1] inst_brp;
parallel_register #(2) reg_inst_brp(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .in({BRA14P, BRB14P}),
    .sync(pa & bt[12] & x & ~CST),
    .index(hist_idx),
    .out(inst_brp)
);

wire sto = (OPV == 'b1011);
wire [2:1] syl0_brp;
parallel_register #(2) reg_syl0_brp(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .in({BRA14P, BRB14P}),
    .sync((sto ? pc : pb) & bt[4] & x & ~CST),
    .index(hist_idx),
    .out(syl0_brp)
);

wire [2:1] syl1_brp;
parallel_register #(2) reg_syl1_brp(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .in({BRA14P, BRB14P}),
    .sync((sto ? pa : pc) & bt[4] & x & ~CST),
    .index(hist_idx),
    .out(syl1_brp)
);

// Multiply and divide counter
wire nmmh;
wire ndiv;
wire selph;
wire mrsync;
mult_div_counter mult_div_counter1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .pa(pa),
    .pb(pb),
    .pc(pc),
    .bt(bt),
    .z(z),
    .op(OPV),
    .nmmh(nmmh),
    .ndiv(ndiv),
    .selph(selph),
    .mrsync(mrsync)
);

// TRS
serial_register reg_trs(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .serial(TRSV),
    .clock(z),
    .sync(pa & bt[1] & w & ~ADV & ~CST),
    .index(hist_idx),
    .out(trs)
);

// AI3V
serial_register #(8) reg_ai3_ia(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .serial(AI3V),
    .clock(y),
    .sync(pa & bt[8] & z & ~CST),
    .index(hist_idx),
    .out(ai3_ia)
);

serial_register reg_ai3_data(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .serial(AI3V),
    .clock(y),
    .sync(pc & bt[14] & z & ~CST),
    .index(hist_idx),
    .out(ai3_data)
);

// MD7
serial_register reg_md7(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .serial(MD7V),
    .clock(y),
    .sync(selph & z & ((nmmh & bt[5]) | (ndiv & bt[2]))),
    .index(hist_idx),
    .out(md7)
);

// MR1
serial_register reg_mr1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .serial(MR1V),
    .clock(y),
    .sync(mrsync & z),
    .index(hist_idx),
    .out(mr1)
);

// PR0
serial_register reg_pr0(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .serial(PR0V),
    .clock(z),
    .sync(selph & w & ((nmmh & bt[1] & ~ADV) | (ndiv & bt[2] & ADV))),
    .index(hist_idx),
    .out(pr0)
);

// HOPC1
serial_register reg_hopc1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .serial(HOPC1V),
    .clock(z),
    .sync(pa & bt[1] & w & ~ADV & ~CST),
    .index(hist_idx),
    .out(hopc1)
);

//SP1
//SP2

//RTC
serial_register #(13) reg_rtc(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .serial(C4RDV),
    .clock(x),
    .sync(pa & bt[14] & y & ~CST),
    .index(hist_idx),
    .out(rtc)
);

//MLC
serial_register #(13) reg_mlc(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .serial(C3RD),
    .clock(w),
    .sync(pc & bt[3] & x & ~CST),
    .index(hist_idx),
    .out(mlc)
);

//SSC
serial_register #(13) reg_ssc(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .serial(~C2RDN),
    .clock(z),
    .sync(pc & bt[3] & w & ~ADV & ~CST),
    .index(hist_idx),
    .out(ssc)
);

wire hop = (OPV == 'b0000);
wire cds = (OPV == 'b1110) & ~A9V;

// SSMSR
serial_register reg_ssmsr(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .serial((hop | cds) ? TRSV : HOPC1V),
    .clock(z),
    .sync(pa & bt[1] & w & ~ADV & ~CST),
    .index(hist_idx),
    .out(ssmsr)
);


`ifdef CLOCKED
localparam NUM_REGISTERS = 10;
localparam FREQUENCY = 50;
localparam MAX_COUNT = (40960000 / NUM_REGISTERS / FREQUENCY);
localparam COUNTER_LEN = $clog2(MAX_COUNT);

reg [COUNTER_LEN-1:0] counter;
initial counter = 'd0;

reg [3:0] reg_idx;
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
        'd0:  reg_stream = {reg_idx, hist_idx, 6'b0, ssmsr};
        'd1:  reg_stream = {reg_idx, hist_idx, 4'b0, op, syl1_brp, syl0_brp, inst_brp, 1'b0, a, ai3_ia};
        'd2:  reg_stream = {reg_idx, hist_idx, 6'b0, trs};
        'd3:  reg_stream = {reg_idx, hist_idx, 6'b0, ai3_data};
        'd4:  reg_stream = {reg_idx, hist_idx, 6'b0, md7};
        'd5:  reg_stream = {reg_idx, hist_idx, 6'b0, mr1};
        'd6:  reg_stream = {reg_idx, hist_idx, 6'b0, pr0};
        'd7:  reg_stream = {reg_idx, hist_idx, 6'b0, hopc1};
        'd8:  reg_stream = {reg_idx, hist_idx, 19'b0, rtc};
        'd9:  reg_stream = {reg_idx, hist_idx, 3'b0, ssc, 3'b0, mlc};
    endcase
end

assign reg_stream_sync = counter == 0;
`endif

`ifdef TARGET_FPGA
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        hist_idx <= 'd0;
    end else begin
        if (cmd_ready & cmd[47:40] == `MSGID_REGISTERS) begin
            case (cmd[39:32])
                'h00: hist_idx <= cmd[3:0];
            endcase
        end
    end
end
`endif

endmodule
`default_nettype wire
