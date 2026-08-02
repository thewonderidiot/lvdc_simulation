`timescale 1ns/1ps
`default_nettype none

module lvdc_registers(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire OP1V,
    input wire OP2V,
    input wire OP3V,
    input wire OP4V,

    input wire AI3V,
    input wire HOPC1V,
    input wire MD7V,
    input wire MR1V,
    input wire PR0V,
    input wire TRSV,

    input wire pa,
    input wire pb,
    input wire pc,
    input wire [14:1] bt,
    input wire w,
    input wire x,
    input wire y,
    input wire z,

    output wire [26:1] acc,
    output wire [2:1] dsm,
    output wire [26:1] dv,
    output wire [26:1] hopc,
    output wire [8:1] ic,
    output wire [26:1] md,
    output wire [24:1] mr,
    output wire [26:1] mem,
    output wire [26:1] pq,
    output wire [24:1] pr,
    output wire [26:1] rm,
    output wire [26:1] qt
);

// Multiply and divide detectors
wire mult_active;
op_active #(.OPCODE('b0001), .CYCLES(5)) op_active_mult(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .op({OP4V, 1'b0, OP2V, OP1V}),
    .clk_start(pb & bt[2] & z),
    .clk_end(pa & bt[2] & z),
    .active(mult_active)
);

wire div_active;
op_active #(.OPCODE('b0011), .CYCLES(9)) op_active_div(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .op({OP4V, OP3V, OP2V, OP1V}),
    .clk_start(pb & bt[2] & z),
    .clk_end(pb & bt[5] & y),
    .active(div_active)
);

// AI3V - accumulator and instruction counter
wire [1:26] ai3v_window;
window #(26) win_ai3v(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .line(AI3V),
    .clock(y),
    .out(ai3v_window)
);

register #(26) reg_acc(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .window(ai3v_window),
    .clock(pc & bt[14] & z),
    .out(acc)
);

register #(8) reg_ic(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .window(ai3v_window[1:8]),
    .clock(pa & bt[8] & z),
    .out(ic)
);

// HOPC1V -- hop constant generator and DSM bits
wire [1:26] hopc1v_window;
window #(26) win_hopc1v(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .line(HOPC1V),
    .clock(z),
    .out(hopc1v_window)
);

register #(26) reg_hopc(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .window(hopc1v_window),
    .clock(pa & bt[1] & w),
    .out(hopc)
);

register #(2) reg_dsm(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .window(hopc1v_window[1:2]),
    .clock(pb & bt[1] & w),
    .out(dsm)
);

// TRSV -- memory data
wire [1:26] trsv_window;
window #(26) win_trsv(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .line(TRSV),
    .clock(z),
    .out(trsv_window)
);

register #(26) reg_mem(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .window(trsv_window),
    .clock(pa & bt[1] & w),
    .out(mem)
);

// MD7V -- multiplicand and divisor
wire [1:26] md7v_window;
window #(26) win_md7v(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .line(MD7V),
    .clock(y),
    .out(md7v_window)
);

wire md_clk;
clock_counter #(.PERIOD(28), .DELAY(31)) count_md(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .enable(mult_active),
    .clock_in(z),
    .clock_out(md_clk)
);

register #(26) reg_md(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .window(md7v_window),
    .clock(md_clk),
    .out(md)
);

wire dv_clk;
clock_counter #(.PERIOD(28), .DELAY(28)) count_dv(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .enable(div_active),
    .clock_in(z),
    .clock_out(dv_clk)
);

register #(26) reg_dv(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .window(md7v_window),
    .clock(dv_clk),
    .out(dv)
);

// MR1
wire [1:26] mr1v_window;
window #(26) win_mr1v(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .line(MR1V),
    .clock(y),
    .out(mr1v_window)
);

wire mr_clk;
clock_counter #(.PERIOD(24), .DELAY(26)) count_mr(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .enable(mult_active),
    .clock_in(z),
    .clock_out(mr_clk)
);

register #(24) reg_mr(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .window(mr1v_window[1:24]),
    .clock(mr_clk),
    .out(mr)
);

wire qt_clk;
clock_counter #(.PERIOD(30), .DELAY(30)) count_qt(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .enable(div_active),
    .clock_in(z),
    .clock_out(qt_clk)
);

register #(26) reg_qt(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .window(mr1v_window),
    .clock(qt_clk),
    .out(qt)
);

register #(26) reg_pq(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .window(mr1v_window),
    .clock(pc & bt[12] & z),
    .out(pq)
);

// PR0
wire [1:26] pr0v_window;
window #(26) win_pr0v(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .line(PR0V),
    .clock(z),
    .out(pr0v_window)
);

wire pr_clk;
clock_counter #(.PERIOD(28), .DELAY(55)) count_pr(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .enable(mult_active),
    .clock_in(w),
    .clock_out(pr_clk)
);

register #(24) reg_pr(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .window(pr0v_window[1:24]),
    .clock(pr_clk),
    .out(pr)
);

wire rm_clk;
clock_counter #(.PERIOD(28), .DELAY(56)) count_rm(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .enable(div_active),
    .clock_in(w),
    .clock_out(rm_clk)
);

register #(26) reg_rm(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .window(pr0v_window),
    .clock(rm_clk),
    .out(rm)
);

endmodule
`default_nettype wire
