`timescale 1ns/1ps
`default_nettype none

module address_decode_1(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire V1,
    input wire V4,
    input wire A1V,
    input wire A1DV,
    input wire A2V,
    input wire A2DV,
    input wire A3V,
    input wire A4V,
    input wire A5V,
    input wire A6V,
    input wire A7V,
    input wire A8V,
    input wire A8DV,
    input wire A8DVN,
    input wire A9V,
    input wire ADV,
    input wire ADVN,
    input wire AI3V,
    input wire G1DVN,
    input wire G3DVN,
    input wire G6DV,
    input wire G6DVN,
    input wire PAAV,
    input wire PABG1V,
    input wire PARSV,
    input wire PIOV,
    input wire PIODV,
    input wire TRSV,
    input wire W7,
    input wire X3,
    input wire Y3,
    input wire Z7,

    output wire A1D,
    output wire A2D,
    output wire A8D,
    output wire A8DN,
    output wire DINF,
    output wire PARS,
    output wire PIOD
);

wire A1DN;
wire A2DN;
wire A3D;
wire A3DN;
wire A4D;
wire A4DN;
wire A5D;
wire A5DN;
wire A6D;
wire A6DN;
wire A7D;
wire A7DN;
wire A9D;
wire A9DN;
wire DAINF;
wire DAINFN;
wire DARO;
wire DARON;
wire DINFN;
wire PIODN;

wire na1a;
wire na1a_a1a;
wire na1a_a1b;
assign na1a = na1a_a1a | na1a_a1b;
wire na2a;
wire na2b;
wire na2b_a2b;
wire na2b_a9a;
wire na2b_a32a;
assign na2b = na2b_a2b | na2b_a9a | na2b_a32a;
wire na3a;
wire na3a_a3a;
wire na3a_a3b;
assign na3a = na3a_a3a | na3a_a3b;
wire na4a;
wire na4b;
wire na4b_a4b;
wire na4b_a11a;
assign na4b = na4b_a4b | na4b_a11a;
wire na5a;
wire na5b;
wire na6a;
wire na6b;
wire na7a;
wire na7b;
wire na7b_a7b;
wire na7b_a14a;
assign na7b = na7b_a7b | na7b_a14a;
wire na8a;
wire na8b;
wire na8b_a8b;
wire na8b_a9b;
wire na8b_a32b;
assign na8b = na8b_a8b | na8b_a9b | na8b_a32b;
wire na10a;
wire na10b;
wire na10b_a10b;
wire na10b_a11b;
assign na10b = na10b_a10b | na10b_a11b;
wire na12a;
wire na12a_a12a;
wire na12a_a12b;
assign na12a = na12a_a12a | na12a_a12b;
wire na13a;
wire na13b;
wire na13b_a13b;
wire na13b_a14b;
assign na13b = na13b_a13b | na13b_a14b;
wire na15a;
wire na15b;
wire na16a;
wire na16b;
wire na16b_a9c;
wire na16b_a16b;
assign na16b = na16b_a9c | na16b_a16b;
wire na17a;
wire na17b;
wire na18a;
wire na18b;
wire na18b_a11c;
wire na18b_a18b;
assign na18b = na18b_a11c | na18b_a18b;
wire na19a;
wire na19b;
wire na20a;
wire na20b;
wire na21a;
wire na21b;
wire na21b_a14c;
wire na21b_a21b;
assign na21b = na21b_a14c | na21b_a21b;
wire na22a;
wire na22a_a22a;
wire na22a_a22b;
assign na22a = na22a_a22a | na22a_a22b;
wire na23a;
wire na23b;
wire na24a;
wire na24a_a24a;
wire na24a_a24b;
assign na24a = na24a_a24a | na24a_a24b;
wire na25a;
wire na25c;
wire na26b;
wire na26b_a25b;
wire na26b_a26a;
wire na26b_a26b;
assign na26b = na26b_a25b | na26b_a26a | na26b_a26b;
wire na27b;
wire na27b_a27a;
wire na27b_a27b;
assign na27b = na27b_a27a | na27b_a27b;
wire na28a;
wire na28a_a28a;
wire na28a_a28b;
assign na28a = na28a_a28a | na28a_a28b;
wire na29b;
wire na29b_a29a;
wire na29b_a29b;
assign na29b = na29b_a29a | na29b_a29b;
wire na30a;
wire na31b;
wire na31b_a31a;
wire na31b_a31b;
assign na31b = na31b_a31a | na31b_a31b;;
wire na30b;
wire na33a;
wire na33a_a33a;
wire na33a_a33b;
assign na33a = na33a_a33a | na33a_a33b;
wire na35a;
wire na35b;

// 10-18
and a9a(na2b_a9a, Y3, na2a, PIODV);
and a2a(na2a, A1V);
and a32a(na2b_a32a, W7, PAAV, G6DV, ADVN);
and a2b(na2b_a2b, V4, A1D);
inv a2c(A1DN, na2b, SIM_CLK, SIM_RST);
inv #(0) a3c(A1D, na3a, SIM_CLK, SIM_RST);
and a3a(na3a_a3a, V4, A1DN);
and a3b(na3a_a3b, X3, na23a, PAAV);
and a23a(na23a, G6DVN, G1DVN, ADV);

and a9b(na8b_a9b, Y3, na8a, A2V);
and a8a(na8a, PIODV);
and a32b(na8b_a32b, X3, PAAV, G6DV, ADVN);
and a8b(na8b_a8b, V4, A2D);
inv a8c(A2DN, na8b, SIM_CLK, SIM_RST);
inv #(0) a1c(A2D, na1a, SIM_CLK, SIM_RST);
and a1a(na1a_a1a, V4, A2DN);
and a1b(na1a_a1b, X3, na23b, X3, PAAV);
and a23b(na23b, G6DVN, G1DVN, ADV);

and a9c(na16b_a9c, Y3, na16a, PIODV);
and a16a(na16a, A3V);
and a15a(na15a, PARSV);
and a16b(na16b_a16b, V4, na15a, A3D);
inv a16c(A3DN, na16b, SIM_CLK, SIM_RST);
inv #(0) a15c(A3D, na15b, SIM_CLK, SIM_RST);
and a15b(na15b, V4, A3DN);

and a11a(na4b_a11a, Y3, na4a, PIODV);
and a4a(na4a, A4V);
and a5a(na5a, PARSV);
and a4b(na4b_a4b, V4, na5a, A4D);
inv a4c(A4DN, na4b, SIM_CLK, SIM_RST);
inv #(0) a5c(A4D, na5b, SIM_CLK, SIM_RST);
and a5b(na5b, V4, A4DN);

and a11b(na10b_a11b, Y3, na10a, A5V);
and a10a(na10a, PIODV);
and a17a(na17a, PARSV);
and a10b(na10b_a10b, V4, na17a, A5D);
inv a10c(A5DN, na10b, SIM_CLK, SIM_RST);
inv #(0) a17c(A5D, na17b, SIM_CLK, SIM_RST);
and a17b(na17b, V4, A5DN);

and a11c(na18b_a11c, Y3, na18a, PIODV);
and a18a(na18a, A6V);
and a19a(na19a, PARSV);
and a18b(na18b_a18b, V4, na19a, A6D);
inv a18c(A6DN, na18b, SIM_CLK, SIM_RST);
inv #(0) a19c(A6D, na19b, SIM_CLK, SIM_RST);
and a19b(na19b, V4, A6DN);

and a14a(na7b_a14a, Y3, na7a, PIODV);
and a7a(na7a, A7V);
and a6a(na6a, PARSV);
and a7b(na7b_a7b, V4, na6a, A7D);
inv a7c(A7DN, na7b, SIM_CLK, SIM_RST);
inv #(0) a6c(A7D, na6b, SIM_CLK, SIM_RST);
and a6b(na6b, V4, A7DN);

and a14b(na13b_a14b, Y3, na13a, A8V);
and a13a(na13a, PIODV);
and a13b(na13b_a13b, V4, A8D);
inv a13c(A8DN, na13b, SIM_CLK, SIM_RST);
inv #(0) a12c(A8D, na12a, SIM_CLK, SIM_RST);
and a12a(na12a_a12a, V4, A8DN);
and a12b(na12a_a12b, Y3, PABG1V);

and a14c(na21b_a14c, Y3, na21a, PIODV);
and a21a(na21a, A9V);
and a20a(na20a, PARSV);
and a21b(na21b_a21b, V4, na20a, A9D);
inv a21c(A9DN, na21b, SIM_CLK, SIM_RST);
inv #(0) a20c(A9D, na20b, SIM_CLK, SIM_RST);
and a20b(na20b, V4, A9DN);

// 10-19
and a30a(na30a, W7, ADV, PAAV, G6DVN, G1DVN);
and a29a(na29b_a29a, na30a, PIOV);
and a29b(na29b_a29b, V1, PIOD);
inv a29c(PIODN, na29b, SIM_CLK, SIM_RST);
inv #(0) a22c(PIOD, na22a, SIM_CLK, SIM_RST);
and a22a(na22a_a22a, V4, PIODN);
and a22b(na22a_a22b, X3, ADVN);

and a35a(na35a, PAAV, G6DV);
and a35b(na35b, V4, na35a, G3DVN);
inv #(0) a35c(PARS, na35b, SIM_CLK, SIM_RST);

and a25a(na25a, W7, AI3V);
and a25b(na26b_a25b, na25a, A8DVN);
and a25c(na25c, W7, TRSV);
and a26a(na26b_a26a, na25c, A8DV);
and a26b(na26b_a26b, V1, DAINF);
inv a26c(DAINFN, na26b, SIM_CLK, SIM_RST);
inv #(0) a33c(DAINF, na33a, SIM_CLK, SIM_RST);
and a33a(na33a_a33a, V1, DAINFN);
and a33b(na33a_a33b, Z7);

and a27a(na27b_a27a, Y3, DAINF);
and a27b(na27b_a27b, V4, DINF);
inv a27c(DINFN, na27b, SIM_CLK, SIM_RST);
inv #(0) a28c(DINF, na28a, SIM_CLK, SIM_RST);
and a28a(na28a_a28a, V4, DINFN);
and a28b(na28a_a28b, Y3, DAINFN);

and a30b(na30b, W7, A8DVN, ADVN, A1DV, A2DV);
and a31a(na31b_a31a, na30b, PIODV);
and a31b(na31b_a31b, V1, DARO);
inv a31c(DARON, na31b, SIM_CLK, SIM_RST);
inv #(0) a24c(DARO, na24a, SIM_CLK, SIM_RST);
and a24a(na24a_a24a, V1, DARON);
and a24b(na24a_a24b, Z7);

// 10-32
// FIXME
// 10-33
// FIXME

endmodule
`default_nettype wire
