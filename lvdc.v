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
wire w7;
wire y5;

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

// Modules
clock_drivers a1a3(
    .bop(bop),
    .cgpp(cgpp),
    .cgppn(cgppn),
    .cgqp(cgqp),
    .cgqpn(cgqpn),
    .cgrp(cgrp),
    .cgrpn(cgrpn),
    .w7(w7),
    .y5(y5)
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
    .pcn(pcn)
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

endmodule
`default_nettype wire
