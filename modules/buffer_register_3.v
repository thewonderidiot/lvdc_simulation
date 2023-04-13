`timescale 1ns/1ps
`default_nettype none

module buffer_register_3(
    input wire V1,
    input wire A1CBRVN,
    input wire A2CBRVN,
    input wire A1PARV,
    input wire A2PARV,
    input wire A1SBRXV,
    input wire A2SBRXV,
    input wire A1TR6V,
    input wire A2TR6V,
    input wire A1TR9V,
    input wire A2TR9V,
    input wire A1TR12V,
    input wire A2TR12V,
    input wire M0SA6,
    input wire M0SA9,
    input wire M0SA12,
    input wire M0SA14,
    input wire M1SA6,
    input wire M1SA9,
    input wire M1SA12,
    input wire M1SA14,
    input wire M2SA6,
    input wire M2SA9,
    input wire M2SA12,
    input wire M2SA14,
    input wire M3SA6,
    input wire M3SA9,
    input wire M3SA12,
    input wire M3SA14,
    input wire M4SA6,
    input wire M4SA9,
    input wire M4SA12,
    input wire M4SA14,
    input wire M5SA6,
    input wire M5SA9,
    input wire M5SA12,
    input wire M5SA14,
    input wire M6SA6,
    input wire M6SA9,
    input wire M6SA12,
    input wire M6SA14,
    input wire M7SA6,
    input wire M7SA9,
    input wire M7SA12,
    input wire M7SA14,
    output wire BRA6,
    output wire BRA6N,
    output wire BRA9,
    output wire BRA9N,
    output wire BRA12,
    output wire BRA12N,
    output wire BRA14,
    output wire BRA14N,
    output wire BRB6,
    output wire BRB6N,
    output wire BRB9,
    output wire BRB9N,
    output wire BRB12,
    output wire BRB12N,
    output wire BRB14,
    output wire BRB14N
);

wire BRA14P;
wire BRB14P;

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
a a30a(.clk(M0SA6), .y(na29b));
a a30b(.clk(M2SA6), .y(na29b));
a a30c(.clk(M4SA6), .y(na29b));
a a23a(.clk(M6SA6), .y(na29b));
a a23b(.clk(V1), .a1(A1SBRXV), .y(na23b));
a a22a(.exp(na23b), .a1(A1TR6V), .y(na29b));
a a29a(.a1(A1CBRVN), .y(na29a));
a a29b(.clk(V1), .exp(na29a), .a1(BRA6), .y(na29b));
i a29c(.a(na29b), .y(BRA6N));
i #(0) a22c(.a(na22b), .y(BRA6));
a a22b(.clk(V1), .a1(BRA6N), .y(na22b));

a a23c(.clk(M0SA9), .y(na15b));
a a16a(.clk(M2SA9), .y(na15b));
a a16b(.clk(M4SA9), .y(na15b));
a a16c(.clk(M6SA9), .y(na15b));
a a9a(.clk(V1), .exp(na8a), .y(na15b));
a a8a(.a1(A1TR9V), .a2(A1SBRXV), .y(na8a));
a a15a(.a1(A1CBRVN), .y(na15a));
a a15b(.clk(V1), .exp(na15a), .a1(BRA9), .y(na15b));
i a15c(.a(na15b), .y(BRA9N));
i #(0) a8c(.a(na8b), .y(BRA9));
a a8b(.clk(V1), .a1(BRA9N), .y(na8b));

a a9b(.clk(M0SA14), .y(na10b));
a a9c(.clk(M2SA14), .y(na10b));
a a11a(.clk(M4SA14), .y(na10b));
a a11b(.clk(M6SA14), .y(na10b));
a a17a(.clk(V1), .a1(A1PARV), .y(na10b));
a a10a(.a1(A1CBRVN), .y(na10a));
a a10b(.clk(V1), .exp(na10a), .a1(BRA14), .y(na10b));
i a10c(.a(na10b), .y(BRA14N));
i #(0) a17c(.a(na17b), .y(BRA14));
a a17b(.clk(V1), .a1(BRA14N), .y(na17b));
i #(0) a18b(.a(na18a), .y(BRA14P));
a a18a(.clk(V1), .a1(BRA14N), .y(na18a));

// 10-137
a a34a(.clk(M0SA12), .y(na28b));
a a27a(.clk(M2SA12), .y(na28b));
a a27b(.clk(M4SA12), .y(na28b));
a a27c(.clk(M6SA12), .y(na28b));
a a34b(.clk(V1), .a1(A1TR12V), .y(na34b));
a a35a(.exp(na34b), .a1(A1SBRXV), .y(na28b));
a a28a(.a1(A1CBRVN), .y(na28a));
a a28b(.clk(V1), .exp(na28a), .a1(BRA12), .y(na28b));
i a28c(.a(na28b), .y(BRA12N));
i #(0) a35c(.a(na35b), .y(BRA12));
a a35b(.clk(V1), .a1(BRA12N), .y(na35b));

// 10-138
a a30d(.clk(M1SA6), .y(na29e));
a a30e(.clk(M3SA6), .y(na29e));
a a30f(.clk(M5SA6), .y(na29e));
a a23d(.clk(M7SA6), .y(na29e));
a a23e(.clk(V1), .a1(A2SBRXV), .y(na23e));
a a22d(.exp(na23e), .a1(A2TR6V), .y(na29e));
a a29d(.a1(A2CBRVN), .y(na29d));
a a29e(.clk(V1), .exp(na29d), .a1(BRB6), .y(na29e));
i a29f(.a(na29e), .y(BRB6N));
i #(0) a22f(.a(na22e), .y(BRB6));
a a22e(.clk(V1), .a1(BRB6N), .y(na22e));

a a23f(.clk(M1SA9), .y(na15e));
a a16d(.clk(M3SA9), .y(na15e));
a a16e(.clk(M5SA9), .y(na15e));
a a16f(.clk(M7SA9), .y(na15e));
a a9d(.clk(V1), .exp(na8d), .y(na15e));
a a8d(.a1(A2TR9V), .a2(A2SBRXV), .y(na8d));
a a15d(.a1(A2CBRVN), .y(na15d));
a a15e(.clk(V1), .exp(na15d), .a1(BRB9), .y(na15e));
i a15f(.a(na15e), .y(BRB9N));
i #(0) a8f(.a(na8e), .y(BRB9));
a a8e(.clk(V1), .a1(BRB9N), .y(na8e));

// 10-139
a a9e(.clk(M1SA14), .y(na10e));
a a9f(.clk(M3SA14), .y(na10e));
a a11c(.clk(M5SA14), .y(na10e));
a a11d(.clk(M7SA14), .y(na10e));
a a17d(.clk(V1), .a1(A2PARV), .y(na10e));
a a10d(.a1(A2CBRVN), .y(na10d));
a a10e(.clk(V1), .exp(na10d), .a1(BRB14), .y(na10e));
i a10f(.a(na10e), .y(BRB14N));
i #(0) a17f(.a(na17e), .y(BRB14));
a a17e(.clk(V1), .a1(BRB14N), .y(na17e));
i #(0) a18d(.a(na18c), .y(BRB14P));
a a18c(.clk(V1), .a1(BRB14N), .y(na18c));

a a34c(.clk(M1SA12), .y(na28e));
a a27d(.clk(M3SA12), .y(na28e));
a a27e(.clk(M5SA12), .y(na28e));
a a27f(.clk(M7SA12), .y(na28e));
a a34d(.clk(V1), .a1(A2TR12V), .y(na34d));
a a35d(.exp(na34d), .a1(A2SBRXV), .y(na28e));
a a28d(.a1(A2CBRVN), .y(na28d));
a a28e(.clk(V1), .exp(na28d), .a1(BRB12), .y(na28e));
i a28f(.a(na28e), .y(BRB12N));
i #(0) a35f(.a(na35e), .y(BRB12));
a a35e(.clk(V1), .a1(BRB12N), .y(na35e));

endmodule
`default_nettype wire
