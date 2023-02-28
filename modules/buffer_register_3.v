`timescale 1ns/1ps
`default_nettype none

module buffer_register_3(
    input wire v1,
    input wire a1cbrvn,
    input wire a2cbrvn,
    input wire a1parv,
    input wire a2parv,
    input wire a1sbrxv,
    input wire a2sbrxv,
    input wire a1tr6v,
    input wire a2tr6v,
    input wire a1tr9v,
    input wire a2tr9v,
    input wire a1tr12v,
    input wire a2tr12v,
    input wire a1tr14v,
    input wire a2tr14v,
    input wire m0sa6,
    input wire m0sa9,
    input wire m0sa12,
    input wire m0sa14,
    input wire m1sa6,
    input wire m1sa9,
    input wire m1sa12,
    input wire m1sa14,
    input wire m2sa6,
    input wire m2sa9,
    input wire m2sa12,
    input wire m2sa14,
    input wire m3sa6,
    input wire m3sa9,
    input wire m3sa12,
    input wire m3sa14,
    input wire m4sa6,
    input wire m4sa9,
    input wire m4sa12,
    input wire m4sa14,
    input wire m5sa6,
    input wire m5sa9,
    input wire m5sa12,
    input wire m5sa14,
    input wire m6sa6,
    input wire m6sa9,
    input wire m6sa12,
    input wire m6sa14,
    input wire m7sa6,
    input wire m7sa9,
    input wire m7sa12,
    input wire m7sa14
);

wire bra6;
wire bra6n;
wire bra9;
wire bra9n;
wire bra12;
wire bra12n;
wire bra14;
wire bra14n;
wire bra14p;
wire brb6;
wire brb6n;
wire brb9;
wire brb9n;
wire brb12;
wire brb12n;
wire brb14;
wire brb14n;
wire brb14p;

wire na8a;
wire na8b;
wire na8d;
wire na8e;
wire na10a;
wor na10b;
wire na10d;
wor na10e;
wire na15a;
wor na15b;
wire na15d;
wor na15e;
wire na17b;
wire na17e;
wire na18a;
wire na18c;
wire na22b;
wire na22e;
wire na23b;
wire na23e;
wire na28a;
wor na28b;
wire na28d;
wor na28e;
wire na29a;
wor na29b;
wire na29d;
wor na29e;
wire na34b;
wire na34d;
wire na35b;
wire na35e;

// 10-136
a a30a(.clk(m0sa6), .y(na29b));
a a30b(.clk(m2sa6), .y(na29b));
a a30c(.clk(m4sa6), .y(na29b));
a a23a(.clk(m6sa6), .y(na29b));
a a23b(.clk(v1), .a1(a1sbrxv), .y(na23b));
a a22a(.exp(na23b), .a1(a1tr6v), .y(na29b));
a a29a(.a1(a1cbrvn), .y(na29a));
a a29b(.clk(v1), .exp(na29a), .a1(bra6), .y(na29b));
i a29c(.a(na29b), .y(bra6n));
i a22c(.a(na22b), .y(bra6));
a #(1) a22b(.clk(v1), .a1(bra6n), .y(na22b));

a a23c(.clk(m0sa9), .y(na15b));
a a16a(.clk(m2sa9), .y(na15b));
a a16b(.clk(m4sa9), .y(na15b));
a a16c(.clk(m6sa9), .y(na15b));
a a9a(.clk(v1), .exp(na8a), .y(na15b));
a a8a(.a1(a1tr9v), .a2(a1sbrxv), .y(na8a));
a a15a(.a1(a1cbrvn), .y(na15a));
a a15b(.clk(v1), .exp(na15a), .a1(bra9), .y(na15b));
i a15c(.a(na15b), .y(bra9n));
i a8c(.a(na8b), .y(bra9));
a #(1) a8b(.clk(v1), .a1(bra9n), .y(na8b));

a a9b(.clk(m0sa14), .y(na10b));
a a9c(.clk(m2sa14), .y(na10b));
a a11a(.clk(m4sa14), .y(na10b));
a a11b(.clk(m6sa14), .y(na10b));
a a17a(.clk(v1), .a1(a1parv), .y(na10b));
a a10a(.a1(a1cbrvn), .y(na10a));
a a10b(.clk(v1), .exp(na10a), .a1(bra14), .y(na10b));
i a10c(.a(na10b), .y(bra14n));
i a17c(.a(na17b), .y(bra14));
a #(1) a17b(.clk(v1), .a1(bra14n), .y(na17b));
i a18b(.a(na18a), .y(bra14p));
a #(1) a18a(.clk(v1), .a1(bra14n), .y(na18a));

// 10-137
a a34a(.clk(m0sa12), .y(na28b));
a a27a(.clk(m2sa12), .y(na28b));
a a27b(.clk(m4sa12), .y(na28b));
a a27c(.clk(m6sa12), .y(na28b));
a a34b(.clk(v1), .a1(a1tr12v), .y(na34b));
a a35a(.exp(na34b), .a1(a1sbrxv), .y(na28b));
a a28a(.a1(a1cbrvn), .y(na28a));
a a28b(.clk(v1), .exp(na28a), .a1(bra12), .y(na28b));
i a28c(.a(na28b), .y(bra12n));
i a35c(.a(na35b), .y(bra12));
a #(1) a35b(.clk(v1), .a1(bra12n), .y(na35b));

// 10-138
a a30d(.clk(m1sa6), .y(na29e));
a a30e(.clk(m3sa6), .y(na29e));
a a30f(.clk(m5sa6), .y(na29e));
a a23d(.clk(m7sa6), .y(na29e));
a a23e(.clk(v1), .a1(a2sbrxv), .y(na23e));
a a22d(.exp(na23e), .a1(a2tr6v), .y(na29e));
a a29d(.a1(a2cbrvn), .y(na29d));
a a29e(.clk(v1), .exp(na29d), .a1(brb6), .y(na29e));
i a29f(.a(na29e), .y(brb6n));
i a22f(.a(na22e), .y(brb6));
a #(1) a22e(.clk(v1), .a1(brb6n), .y(na22e));

a a23f(.clk(m1sa9), .y(na15e));
a a16d(.clk(m3sa9), .y(na15e));
a a16e(.clk(m5sa9), .y(na15e));
a a16f(.clk(m7sa9), .y(na15e));
a a9d(.clk(v1), .exp(na8d), .y(na15e));
a a8d(.a1(a2tr9v), .a2(a2sbrxv), .y(na8d));
a a15d(.a1(a2cbrvn), .y(na15d));
a a15e(.clk(v1), .exp(na15d), .a1(brb9), .y(na15e));
i a15f(.a(na15e), .y(brb9n));
i a8f(.a(na8e), .y(brb9));
a #(1) a8e(.clk(v1), .a1(brb9n), .y(na8e));

// 10-139
a a9e(.clk(m1sa14), .y(na10e));
a a9f(.clk(m3sa14), .y(na10e));
a a11c(.clk(m5sa14), .y(na10e));
a a11d(.clk(m7sa14), .y(na10e));
a a17d(.clk(v1), .a1(a2parv), .y(na10e));
a a10d(.a1(a2cbrvn), .y(na10d));
a a10e(.clk(v1), .exp(na10d), .a1(brb14), .y(na10e));
i a10f(.a(na10e), .y(brb14n));
i a17f(.a(na17e), .y(brb14));
a #(1) a17e(.clk(v1), .a1(brb14n), .y(na17e));
i a18d(.a(na18c), .y(brb14p));
a #(1) a18c(.clk(v1), .a1(brb14n), .y(na18c));

a a34c(.clk(m1sa12), .y(na28e));
a a27d(.clk(m3sa12), .y(na28e));
a a27e(.clk(m5sa12), .y(na28e));
a a27f(.clk(m7sa12), .y(na28e));
a a34d(.clk(v1), .a1(a2tr12v), .y(na34d));
a a35d(.exp(na34d), .a1(a2sbrxv), .y(na28e));
a a28d(.a1(a2cbrvn), .y(na28d));
a a28e(.clk(v1), .exp(na28d), .a1(brb12), .y(na28e));
i a28f(.a(na28e), .y(brb12n));
i a35f(.a(na35e), .y(brb12));
a #(1) a35e(.clk(v1), .a1(brb12n), .y(na35e));

endmodule
`default_nettype wire
