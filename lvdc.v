`timescale 1ns/1ps
`default_nettype none

module lvdc(
);

// Power rails
reg v1 = 1;
reg v4mod1 = 1;
reg v5 = 1;

// Backplane wires
wire a;
wire an;
wire av;
wire avn;
wire bo1;
wire bo1n;
wire bo2;
wire bo2n;
wire bo3;
wire bo3n;
wire bop;
wire cgpp;
wire cgppn;
wire cgqp;
wire cgqpn;
wire cgrp;
wire cgrpn;
wire dl31;
wire dl44;
wire g1;
wire g1n;
wire g1v;
wire g1vn;
wire g2;
wire g2n;
wire g2v;
wire g2vn;
wire g3;
wire g3n;
wire g3v;
wire g3vn;
wire g4;
wire g4n;
wire g4v;
wire g4vn;
wire g5;
wire g5n;
wire g5v;
wire g5vn;
wire g6;
wire g6n;
wire g6v;
wire g6vn;
wire g7;
wire g7n;
wire g7v;
wire g7vn;
wire pa;
wire pan;
wire pav;
wire pavn;
wire pb;
wire pbn;
wire pbv;
wire pbvn;
wire pc;
wire pcn;
wire pcv;
wire pcvn;
wire tbc;
wire tbcn;
wire tbcv;
wire tbcvn;
wire w1;
wire w7;
wire wn;
wire x3;
wire xn;
wire y5;
wire y7;
wire y8;
wire yn;
wire z2;
wire z3;
wire zn;

// TMR bypass for breadboard computer
assign av = a;
assign avn = an;
assign g1v = g1;
assign g1vn = g1n;
assign g2v = g2;
assign g2vn = g2n;
assign g3v = g3;
assign g3vn = g3n;
assign g4v = g4;
assign g4vn = g4n;
assign g5v = g5;
assign g5vn = g5n;
assign g6v = g6;
assign g6vn = g6n;
assign g7v = g7;
assign g7vn = g7n;
assign pav = pa;
assign pavn = pan;
assign pbv = pb;
assign pbvn = pbn;
assign pcv = pc;
assign pcvn = pcn;
assign tbcv = tbc;
assign tbcvn = tbcn;

// Modules
clock_drivers a1a3(
    .bop(bop),
    .cgpp(cgpp),
    .cgppn(cgppn),
    .cgqp(cgqp),
    .cgqpn(cgqpn),
    .cgrp(cgrp),
    .cgrpn(cgrpn),
    .w1(w1),
    .w7(w7),
    .wn(wn),
    .x3(x3),
    .xn(xn),
    .y5(y5),
    .y7(y7),
    .y8(y8),
    .yn(yn),
    .z2(z2),
    .z3(z3),
    .zn(zn)
);

delay_line a1a5(
    .v1(v1),
    .v5(v5),
    .bon(bo1n),
    .dl31(dl31),
    .dl44(dl44),
    .w7(w7),
    .wn(wn),
    .x3(x3),
    .xn(xn),
    .y8(y8),
    .yn(yn),
    .z2(z2),
    .zn(zn)
);

arithmetic a1a10(
    .v1(v1),
    .a1v(1'b0),
    .a2v(1'b0),
    .a5v(1'b0),
    .a6v(1'b0),
    .av(av),
    .avn(avn),
    .ai1v(1'b0),
    .ai3v(1'b0),
    .cstv(1'b0),
    .exmvn(1'b1),
    .g1v(g1v),
    .g1vn(g1vn),
    .g3vn(g3vn),
    .g4v(g4v),
    .g5v(g5v),
    .g5vn(g5vn),
    .g6vn(g6vn),
    .g7v(g7v),
    .g7vn(g7vn),
    .intv(1'b0),
    .hoyv(1'b0),
    .op1v(1'b0),
    .op1vn(1'b1),
    .op2v(1'b0),
    .op2vn(1'b1),
    .op3v(1'b0),
    .op3vn(1'b1),
    .op4v(1'b0),
    .op4vn(1'b1),
    .p3vn(1'b1),
    .pav(pav),
    .pavn(pavn),
    .pbv(pbv),
    .pcv(pcv),
    .q8v(1'b0),
    .shfv(1'b0),
    .tbcv(tbcv),
    .voyvn(1'b0),
    .w1(w1),
    .x3(x3),
    .y7(y7),
    .z3(z3),
    .zn(zn)
);

timing a1a13(
    .v1(v1),
    .v4mod1(v4mod1),

    .av(av),
    .avn(avn),
    .g1v(g1v),
    .g1vn(g1vn),
    .g2v(g2v),
    .g2vn(g2vn),
    .g3v(g3v),
    .g3vn(g3vn),
    .g4v(g4v),
    .g4vn(g4vn),
    .g5v(g5v),
    .g5vn(g5vn),
    .g6v(g6v),
    .g6vn(g6vn),
    .g7v(g7v),
    .g7vn(g7vn),
    .pav(pav),
    .pavn(pavn),
    .pbv(pbv),
    .pbvn(pbvn),
    .pcv(pcv),
    .pcvn(pcvn),
    .w7(w7),
    .y5(y5),

    .a(a),
    .an(an),
    .g1(g1),
    .g1n(g1n),
    .g2(g2),
    .g2n(g2n),
    .g3(g3),
    .g3n(g3n),
    .g4(g4),
    .g4n(g4n),
    .g5(g5),
    .g5n(g5n),
    .g6(g6),
    .g6n(g6n),
    .g7(g7),
    .g7n(g7n),
    .pa(pa),
    .pan(pan),
    .pb(pb),
    .pbn(pbn),
    .pc(pc),
    .pcn(pcn),
    .tbc(tbc),
    .tbcn(tbcn)
);

osc_buf a4a11(
    .bo1(bo1),
    .bo1n(bo1n),
    .bo2(bo2),
    .bo2n(bo2n),
    .bo3(bo3),
    .bo3n(bo3n)
);

clock_logic a4a12(
    .v1(v1),
    .v5(v5),
    .bo1(bo1),
    .bo2(bo2),
    .bo3(bo3),

    .a1pp(cgpp),
    .a1ppn(cgppn),
    .a1qp(cgqp),
    .a1qpn(cgqpn),
    .a1rp(cgrp),
    .a1rpn(cgrpn),
    .bo1p(bop)
);

buffer_register_12 a5a9(
    .v1(v1),
    .aNcbrvn(1'b0),
    .aNsbryv(1'b0),
    .aNsbrzv(1'b0),
    .aNtr1v(1'b0),
    .aNtr2v(1'b0),
    .aNtr3v(1'b0),
    .aNtr4v(1'b0),
    .aNtr5v(1'b0),
    .aNtr7v(1'b0),
    .aNtr8v(1'b0),
    .aNtr10v(1'b0),
    .aNtr11v(1'b0),
    .aNtr13v(1'b0),
    .mAsa1(1'b0),
    .mAsa2(1'b0),
    .mAsa3(1'b0),
    .mAsa4(1'b0),
    .mAsa5(1'b0),
    .mAsa7(1'b0),
    .mAsa8(1'b0),
    .mAsa10(1'b0),
    .mAsa11(1'b0),
    .mAsa13(1'b0),
    .mBsa1(1'b0),
    .mBsa2(1'b0),
    .mBsa3(1'b0),
    .mBsa4(1'b0),
    .mBsa5(1'b0),
    .mBsa7(1'b0),
    .mBsa8(1'b0),
    .mBsa10(1'b0),
    .mBsa11(1'b0),
    .mBsa13(1'b0),
    .mCsa1(1'b0),
    .mCsa2(1'b0),
    .mCsa3(1'b0),
    .mCsa4(1'b0),
    .mCsa5(1'b0),
    .mCsa7(1'b0),
    .mCsa8(1'b0),
    .mCsa10(1'b0),
    .mCsa11(1'b0),
    .mCsa13(1'b0),
    .mDsa1(1'b0),
    .mDsa2(1'b0),
    .mDsa3(1'b0),
    .mDsa4(1'b0),
    .mDsa5(1'b0),
    .mDsa7(1'b0),
    .mDsa8(1'b0),
    .mDsa10(1'b0),
    .mDsa11(1'b0),
    .mDsa13(1'b0)
);

buffer_register_12 a5a10(
    .v1(v1),
    .aNcbrvn(1'b0),
    .aNsbryv(1'b0),
    .aNsbrzv(1'b0),
    .aNtr1v(1'b0),
    .aNtr2v(1'b0),
    .aNtr3v(1'b0),
    .aNtr4v(1'b0),
    .aNtr5v(1'b0),
    .aNtr7v(1'b0),
    .aNtr8v(1'b0),
    .aNtr10v(1'b0),
    .aNtr11v(1'b0),
    .aNtr13v(1'b0),
    .mAsa1(1'b0),
    .mAsa2(1'b0),
    .mAsa3(1'b0),
    .mAsa4(1'b0),
    .mAsa5(1'b0),
    .mAsa7(1'b0),
    .mAsa8(1'b0),
    .mAsa10(1'b0),
    .mAsa11(1'b0),
    .mAsa13(1'b0),
    .mBsa1(1'b0),
    .mBsa2(1'b0),
    .mBsa3(1'b0),
    .mBsa4(1'b0),
    .mBsa5(1'b0),
    .mBsa7(1'b0),
    .mBsa8(1'b0),
    .mBsa10(1'b0),
    .mBsa11(1'b0),
    .mBsa13(1'b0),
    .mCsa1(1'b0),
    .mCsa2(1'b0),
    .mCsa3(1'b0),
    .mCsa4(1'b0),
    .mCsa5(1'b0),
    .mCsa7(1'b0),
    .mCsa8(1'b0),
    .mCsa10(1'b0),
    .mCsa11(1'b0),
    .mCsa13(1'b0),
    .mDsa1(1'b0),
    .mDsa2(1'b0),
    .mDsa3(1'b0),
    .mDsa4(1'b0),
    .mDsa5(1'b0),
    .mDsa7(1'b0),
    .mDsa8(1'b0),
    .mDsa10(1'b0),
    .mDsa11(1'b0),
    .mDsa13(1'b0)
);

buffer_register_3 a5a11(
    .v1(v1),
    .a1cbrvn(1'b0),
    .a2cbrvn(1'b0),
    .a1parv(1'b0),
    .a2parv(1'b0),
    .a1sbrxv(1'b0),
    .a2sbrxv(1'b0),
    .a1tr6v(1'b0),
    .a2tr6v(1'b0),
    .a1tr9v(1'b0),
    .a2tr9v(1'b0),
    .a1tr12v(1'b0),
    .a2tr12v(1'b0),
    .a1tr14v(1'b0),
    .a2tr14v(1'b0),
    .m0sa6(1'b0),
    .m0sa9(1'b0),
    .m0sa12(1'b0),
    .m0sa14(1'b0),
    .m1sa6(1'b0),
    .m1sa9(1'b0),
    .m1sa12(1'b0),
    .m1sa14(1'b0),
    .m2sa6(1'b0),
    .m2sa9(1'b0),
    .m2sa12(1'b0),
    .m2sa14(1'b0),
    .m3sa6(1'b0),
    .m3sa9(1'b0),
    .m3sa12(1'b0),
    .m3sa14(1'b0),
    .m4sa6(1'b0),
    .m4sa9(1'b0),
    .m4sa12(1'b0),
    .m4sa14(1'b0),
    .m5sa6(1'b0),
    .m5sa9(1'b0),
    .m5sa12(1'b0),
    .m5sa14(1'b0),
    .m6sa6(1'b0),
    .m6sa9(1'b0),
    .m6sa12(1'b0),
    .m6sa14(1'b0),
    .m7sa6(1'b0),
    .m7sa9(1'b0),
    .m7sa12(1'b0),
    .m7sa14(1'b0)
);

// TEMP TESTING
wire stp0;
assign stp0 = pav & g2v;
assign dl31 = 0; // ~(y8 & stp0);
assign dl44 = ~(w7 & stp0); // 0;

endmodule
`default_nettype wire
