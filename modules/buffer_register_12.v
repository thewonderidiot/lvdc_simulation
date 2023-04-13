`timescale 1ns/1ps
`default_nettype none

module buffer_register_12(
    input wire V1,
    input wire AnCBRVN,
    input wire AnSBRYV,
    input wire AnSBRZV,
    input wire AnTR1V,
    input wire AnTR2V,
    input wire AnTR3V,
    input wire AnTR4V,
    input wire AnTR5V,
    input wire AnTR7V,
    input wire AnTR8V,
    input wire AnTR10V,
    input wire AnTR11V,
    input wire AnTR13V,
    input wire MaSA1,
    input wire MaSA2,
    input wire MaSA3,
    input wire MaSA4,
    input wire MaSA5,
    input wire MaSA7,
    input wire MaSA8,
    input wire MaSA10,
    input wire MaSA11,
    input wire MaSA13,
    input wire MbSA1,
    input wire MbSA2,
    input wire MbSA3,
    input wire MbSA4,
    input wire MbSA5,
    input wire MbSA7,
    input wire MbSA8,
    input wire MbSA10,
    input wire MbSA11,
    input wire MbSA13,
    input wire McSA1,
    input wire McSA2,
    input wire McSA3,
    input wire McSA4,
    input wire McSA5,
    input wire McSA7,
    input wire McSA8,
    input wire McSA10,
    input wire McSA11,
    input wire McSA13,
    input wire MdSA1,
    input wire MdSA2,
    input wire MdSA3,
    input wire MdSA4,
    input wire MdSA5,
    input wire MdSA7,
    input wire MdSA8,
    input wire MdSA10,
    input wire MdSA11,
    input wire MdSA13,
    output wire BRx1,
    output wire BRx1N,
    output wire BRx2,
    output wire BRx2N,
    output wire BRx3,
    output wire BRx3N,
    output wire BRx4,
    output wire BRx4N,
    output wire BRx5,
    output wire BRx5N,
    output wire BRx7,
    output wire BRx7N,
    output wire BRx8,
    output wire BRx8N,
    output wire BRx10,
    output wire BRx10N,
    output wire BRx11,
    output wire BRx11N,
    output wire BRx13,
    output wire BRx13N
);

wire na8a;
wire na8b;
wire na8d;
wire na8e;
wire na10a;
wor na10b;
wire na10d;
wor na10e;
wire na11c;
wire na11f;
wire na13a;
wire na13d;
wire na14b;
wire na14e;
wire na15a;
wor na15b;
wire na15d;
wor na15e;
wire na17b;
wire na17e;
wire na21a;
wor na21b;
wire na21d;
wor na21e;
wire na22b;
wire na22e;
wire na23b;
wire na23e;
wire na27b;
wire na27e;
wire na28b;
wire na28e;
wire na29a;
wor na29b;
wire na29d;
wor na29e;
wire na35a;
wor na35b;
wire na35d;
wor na35e;

// 10-128, 10-132
a a30a(.clk(MaSA1), .y(na29b));
a a30b(.clk(MbSA1), .y(na29b));
a a30c(.clk(McSA1), .y(na29b));
a a23a(.clk(MdSA1), .y(na29b));
a a23b(.clk(V1), .a1(AnSBRZV), .y(na23b));
a a22a(.exp(na23b), .a1(AnTR1V), .y(na29b));
a a29a(.a1(AnCBRVN), .y(na29a));
a a29b(.clk(V1), .exp(na29a), .a1(BRx1), .y(na29b));
i a29c(.a(na29b), .y(BRx1N));
i #(0) a22c(.a(na22b), .y(BRx1));
a a22b(.clk(V1), .a1(BRx1N), .y(na22b));

a a23c(.clk(MaSA2), .y(na15b));
a a16a(.clk(MbSA2), .y(na15b));
a a16b(.clk(McSA2), .y(na15b));
a a16c(.clk(MdSA2), .y(na15b));
a a9a(.clk(V1), .exp(na8a), .y(na15b));
a a8a(.a1(AnTR2V), .a2(AnSBRZV), .y(na8a));
a a15a(.a1(AnCBRVN), .y(na15a));
a a15b(.clk(V1), .exp(na15a), .a1(BRx2), .y(na15b));
i a15c(.a(na15b), .y(BRx2N));
i #(0) a8c(.a(na8b), .y(BRx2));
a a8b(.clk(V1), .a1(BRx2N), .y(na8b));

a a9b(.clk(MaSA4), .y(na10b));
a a9c(.clk(MbSA4), .y(na10b));
a a11a(.clk(McSA4), .y(na10b));
a a11b(.clk(MdSA4), .y(na10b));
a a11c(.clk(V1), .a1(AnTR4V), .y(na11c));
a a17a(.exp(na11c), .a1(AnSBRZV), .y(na10b));
a a10a(.a1(AnCBRVN), .y(na10a));
a a10b(.clk(V1), .exp(na10a), .a1(BRx4), .y(na10b));
i a10c(.a(na10b), .y(BRx4N));
i #(0) a17c(.a(na17b), .y(BRx4));
a a17b(.clk(V1), .a1(BRx4N), .y(na17b));

// 10-129, 10-133
a a34a(.clk(MaSA7), .y(na35b));
a a34b(.clk(MbSA7), .y(na35b));
a a34c(.clk(McSA7), .y(na35b));
a a27a(.clk(MdSA7), .y(na35b));
a a27b(.clk(V1), .a1(AnTR7V), .y(na27b));
a a28a(.exp(na27b), .a1(AnSBRZV), .y(na35b));
a a35a(.a1(AnCBRVN), .y(na35a));
a a35b(.clk(V1), .exp(na35a), .a1(BRx7), .y(na35b));
i a35c(.a(na35b), .y(BRx7N));
i #(0) a28c(.a(na28b), .y(BRx7));
a a28b(.clk(V1), .a1(BRx7N), .y(na28b));

a a27c(.clk(MaSA10), .y(na21b));
a a20a(.clk(MbSA10), .y(na21b));
a a20b(.clk(McSA10), .y(na21b));
a a20c(.clk(MdSA10), .y(na21b));
a a13a(.clk(V1), .a1(AnTR10V), .y(na13a));
a a14a(.exp(na13a), .a1(AnSBRZV), .y(na21b));
a a21a(.a1(AnCBRVN), .y(na21a));
a a21b(.clk(V1), .exp(na21a), .a1(BRx10), .y(na21b));
i a21c(.a(na21b), .y(BRx10N));
i #(0) a14c(.a(na14b), .y(BRx10));
a a14b(.clk(V1), .a1(BRx10N), .y(na14b));

// 10-130, 10-134
a a30d(.clk(MaSA3), .y(na29e));
a a30e(.clk(MbSA3), .y(na29e));
a a30f(.clk(McSA3), .y(na29e));
a a23d(.clk(MdSA3), .y(na29e));
a a23e(.clk(V1), .a1(AnSBRYV), .y(na23e));
a a22d(.exp(na23e), .a1(AnTR3V), .y(na29e));
a a29d(.a1(AnCBRVN), .y(na29d));
a a29e(.clk(V1), .exp(na29d), .a1(BRx3), .y(na29e));
i a29f(.a(na29e), .y(BRx3N));
i #(0) a22f(.a(na22e), .y(BRx3));
a a22e(.clk(V1), .a1(BRx3N), .y(na22e));

a a23f(.clk(MaSA5), .y(na15e));
a a16d(.clk(MbSA5), .y(na15e));
a a16e(.clk(McSA5), .y(na15e));
a a16f(.clk(MdSA5), .y(na15e));
a a9d(.clk(V1), .exp(na8d), .y(na15e));
a a8d(.a1(AnTR5V), .a2(AnSBRYV), .y(na8d));
a a15d(.a1(AnCBRVN), .y(na15d));
a a15e(.clk(V1), .exp(na15d), .a1(BRx5), .y(na15e));
i a15f(.a(na15e), .y(BRx5N));
i #(0) a8f(.a(na8e), .y(BRx5));
a a8e(.clk(V1), .a1(BRx5N), .y(na8e));

a a9e(.clk(MaSA8), .y(na10e));
a afe(.clk(MbSA8), .y(na10e));
a a11d(.clk(McSA8), .y(na10e));
a a11e(.clk(MdSA8), .y(na10e));
a a11f(.clk(V1), .a1(AnTR8V), .y(na11f));
a a17d(.exp(na11f), .a1(AnSBRYV), .y(na10e));
a a10d(.a1(AnCBRVN), .y(na10d));
a a10e(.clk(V1), .exp(na10d), .a1(BRx8), .y(na10e));
i a10f(.a(na10e), .y(BRx8N));
i #(0) a17f(.a(na17e), .y(BRx8));
a a17e(.clk(V1), .a1(BRx8N), .y(na17e));

// 10-131, 10-135
a a34d(.clk(MaSA11), .y(na35e));
a a34e(.clk(MbSA11), .y(na35e));
a a34f(.clk(McSA11), .y(na35e));
a a27d(.clk(MdSA11), .y(na35e));
a a27e(.clk(V1), .a1(AnTR11V), .y(na27e));
a a28d(.exp(na27e), .a1(AnSBRYV), .y(na35e));
a a35d(.a1(AnCBRVN), .y(na35d));
a a35e(.clk(V1), .exp(na35d), .a1(BRx11), .y(na35e));
i a35f(.a(na35e), .y(BRx11N));
i #(0) a28f(.a(na28e), .y(BRx11));
a a28e(.clk(V1), .a1(BRx11N), .y(na28e));

a a27f(.clk(MaSA13), .y(na21e));
a a20d(.clk(MbSA13), .y(na21e));
a a20e(.clk(McSA13), .y(na21e));
a a20f(.clk(MdSA13), .y(na21e));
a a13d(.clk(V1), .a1(AnTR13V), .y(na13d));
a a14d(.exp(na13d), .a1(AnSBRYV), .y(na21e));
a a21d(.a1(AnCBRVN), .y(na21d));
a a21e(.clk(V1), .exp(na21d), .a1(BRx13), .y(na21e));
i a21f(.a(na21e), .y(BRx13N));
i #(0) a14f(.a(na14e), .y(BRx13));
a a14e(.clk(V1), .a1(BRx13N), .y(na14e));

endmodule
`default_nettype wire
