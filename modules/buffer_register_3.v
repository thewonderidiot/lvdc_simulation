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
and a30a(na29b, M0SA6);
and a30b(na29b, M2SA6);
and a30c(na29b, M4SA6);
and a23a(na29b, M6SA6);
and a23b(na23b, V1, A1SBRXV);
and a22a(na29b, na23b, A1TR6V);
and a29a(na29a, A1CBRVN);
and a29b(na29b, V1, na29a, BRA6);
inv a29c(BRA6N, na29b);
inv #(0) a22c(BRA6, na22b);
and a22b(na22b, V1, BRA6N);

and a23c(na15b, M0SA9);
and a16a(na15b, M2SA9);
and a16b(na15b, M4SA9);
and a16c(na15b, M6SA9);
and a9a(na15b, V1, na8a);
and a8a(na8a, A1TR9V, A1SBRXV);
and a15a(na15a, A1CBRVN);
and a15b(na15b, V1, na15a, BRA9);
inv a15c(BRA9N, na15b);
inv #(0) a8c(BRA9, na8b);
and a8b(na8b, V1, BRA9N);

and a9b(na10b, M0SA14);
and a9c(na10b, M2SA14);
and a11a(na10b, M4SA14);
and a11b(na10b, M6SA14);
and a17a(na10b, V1, A1PARV);
and a10a(na10a, A1CBRVN);
and a10b(na10b, V1, na10a, BRA14);
inv a10c(BRA14N, na10b);
inv #(0) a17c(BRA14, na17b);
and a17b(na17b, V1, BRA14N);
inv #(0) a18b(BRA14P, na18a);
and a18a(na18a, V1, BRA14N);

// 10-137
and a34a(na28b, M0SA12);
and a27a(na28b, M2SA12);
and a27b(na28b, M4SA12);
and a27c(na28b, M6SA12);
and a34b(na34b, V1, A1TR12V);
and a35a(na28b, na34b, A1SBRXV);
and a28a(na28a, A1CBRVN);
and a28b(na28b, V1, na28a, BRA12);
inv a28c(BRA12N, na28b);
inv #(0) a35c(BRA12, na35b);
and a35b(na35b, V1, BRA12N);

// 10-138
and a30d(na29e, M1SA6);
and a30e(na29e, M3SA6);
and a30f(na29e, M5SA6);
and a23d(na29e, M7SA6);
and a23e(na23e, V1, A2SBRXV);
and a22d(na29e, na23e, A2TR6V);
and a29d(na29d, A2CBRVN);
and a29e(na29e, V1, na29d, BRB6);
inv a29f(BRB6N, na29e);
inv #(0) a22f(BRB6, na22e);
and a22e(na22e, V1, BRB6N);

and a23f(na15e, M1SA9);
and a16d(na15e, M3SA9);
and a16e(na15e, M5SA9);
and a16f(na15e, M7SA9);
and a9d(na15e, V1, na8d);
and a8d(na8d, A2TR9V, A2SBRXV);
and a15d(na15d, A2CBRVN);
and a15e(na15e, V1, na15d, BRB9);
inv a15f(BRB9N, na15e);
inv #(0) a8f(BRB9, na8e);
and a8e(na8e, V1, BRB9N);

// 10-139
and a9e(na10e, M1SA14);
and a9f(na10e, M3SA14);
and a11c(na10e, M5SA14);
and a11d(na10e, M7SA14);
and a17d(na10e, V1, A2PARV);
and a10d(na10d, A2CBRVN);
and a10e(na10e, V1, na10d, BRB14);
inv a10f(BRB14N, na10e);
inv #(0) a17f(BRB14, na17e);
and a17e(na17e, V1, BRB14N);
inv #(0) a18d(BRB14P, na18c);
and a18c(na18c, V1, BRB14N);

and a34c(na28e, M1SA12);
and a27d(na28e, M3SA12);
and a27e(na28e, M5SA12);
and a27f(na28e, M7SA12);
and a34d(na34d, V1, A2TR12V);
and a35d(na28e, na34d, A2SBRXV);
and a28d(na28d, A2CBRVN);
and a28e(na28e, V1, na28d, BRB12);
inv a28f(BRB12N, na28e);
inv #(0) a35f(BRB12, na35e);
and a35e(na35e, V1, BRB12N);

endmodule
`default_nettype wire
