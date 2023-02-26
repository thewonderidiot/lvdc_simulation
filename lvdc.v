`timescale 1ns/1ps
`default_nettype none

module lvdc(
);

// Power rails
reg v1 = 1;
reg v5 = 1;

// Backplane wires
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

// Modules
a1a3_clock_drivers a1a3(
    .bop(bop),
    .cgpp(cgpp),
    .cgppn(cgppn),
    .cgqp(cgqp),
    .cgqpn(cgqpn),
    .cgrp(cgrp),
    .cgrpn(cgrpn)
);

a4a11_osc_buf a4a11(
    .bo1(bo1),
    .bo1n(bo1n),
    .bo2(bo2),
    .bo2n(bo2n),
    .bo3(bo3),
    .bo3n(bo3n)
);

a4a12_clock_logic a4a12(
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
