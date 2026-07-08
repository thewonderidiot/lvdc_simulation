`timescale 1ns/1ps
`default_nettype none

module mem_parity_check(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire V1,
    input wire BRA1,
    input wire BRA1N,
    input wire BRA2,
    input wire BRA2N,
    input wire BRA3,
    input wire BRA3N,
    input wire BRA4,
    input wire BRA4N,
    input wire BRA5,
    input wire BRA5N,
    input wire BRA6,
    input wire BRA6N,
    input wire BRA7,
    input wire BRA7N,
    input wire BRA8,
    input wire BRA8N,
    input wire BRA9,
    input wire BRA9N,
    input wire BRA10,
    input wire BRA10N,
    input wire BRA11,
    input wire BRA11N,
    input wire BRA12,
    input wire BRA12N,
    input wire BRA13,
    input wire BRA13N,
    input wire BRA14,
    input wire BRA14N,
    input wire BRB1,
    input wire BRB1N,
    input wire BRB2,
    input wire BRB2N,
    input wire BRB3,
    input wire BRB3N,
    input wire BRB4,
    input wire BRB4N,
    input wire BRB5,
    input wire BRB5N,
    input wire BRB6,
    input wire BRB6N,
    input wire BRB7,
    input wire BRB7N,
    input wire BRB8,
    input wire BRB8N,
    input wire BRB9,
    input wire BRB9N,
    input wire BRB10,
    input wire BRB10N,
    input wire BRB11,
    input wire BRB11N,
    input wire BRB12,
    input wire BRB12N,
    input wire BRB13,
    input wire BRB13N,
    input wire BRB14,
    input wire BRB14N,
    output wire EAP,
    output wire EBP
);

wire PAE1;
wire PAE2;
wire PAE3;
wire PAE4;
wire PAE5;
wire PAE6N;
wire PAO1;
wire PAO2;
wire PAO3;
wire PAO4;
wire PAO5;
wire PAO6;
wire PAO7;
wire PAO8;
wire PAO9;
wire PAO10;
wire PAO11;
wire PAO12;
wire PBE1;
wire PBE2;
wire PBE3;
wire PBE4;
wire PBE5;
wire PBE6N;
wire PBO1;
wire PBO2;
wire PBO3;
wire PBO4;
wire PBO5;
wire PBO6;
wire PBO7;
wire PBO8;
wire PBO9;
wire PBO10;
wire PBO11;
wire PBO12;

wire na5b;
wire na5b_a5a;
wire na5b_a5b;
assign na5b = na5b_a5a | na5b_a5b;
wire na5e;
wire na5e_a5d;
wire na5e_a5e;
assign na5e = na5e_a5d | na5e_a5e;
wire na6a;
wire na6a_a10c;
wire na6a_a6a;
assign na6a = na6a_a10c | na6a_a6a;
wire na6b;
wire na6d;
wire na6d_a10f;
wire na6d_a6d;
assign na6d = na6d_a10f | na6d_a6d;
wire na6e;
wire na8a;
wire na8a_a8a;
wire na8a_a8b;
assign na8a = na8a_a8a | na8a_a8b;
wire na8d;
wire na8d_a8d;
wire na8d_a8e;
assign na8d = na8d_a8d | na8d_a8e;
wire na9a;
wire na9a_a9a;
wire na9a_a9b;
assign na9a = na9a_a9a | na9a_a9b;
wire na9d;
wire na9d_a9d;
wire na9d_a9e;
assign na9d = na9d_a9d | na9d_a9e;
wire na11a;
wire na11a_a10a;
wire na11a_a11a;
assign na11a = na11a_a10a | na11a_a11a;
wire na11b;
wire na11d;
wire na11d_a10d;
wire na11d_a11d;
assign na11d = na11d_a10d | na11d_a11d;
wire na11e;
wire na12a;
wire na12a_a12a;
wire na12a_a12b;
assign na12a = na12a_a12a | na12a_a12b;
wire na12d;
wire na12d_a12d;
wire na12d_a12e;
assign na12d = na12d_a12d | na12d_a12e;
wire na14a;
wire na14a_a14a;
wire na14a_a14b;
assign na14a = na14a_a14a | na14a_a14b;
wire na14d;
wire na14d_a14d;
wire na14d_a14e;
assign na14d = na14d_a14d | na14d_a14e;
wire na15a;
wire na15b;
wire na15b_a15b;
wire na15b_a29b;
assign na15b = na15b_a15b | na15b_a29b;
wire na15d;
wire na15e;
wire na15e_a15e;
wire na15e_a29d;
assign na15e = na15e_a15e | na15e_a29d;
wire na16a;
wire na16b;
wire na16b_a16b;
wire na16b_a30b;
assign na16b = na16b_a16b | na16b_a30b;
wire na16d;
wire na16e;
wire na16e_a16e;
wire na16e_a30d;
assign na16e = na16e_a16e | na16e_a30d;
wire na18a;
wire na18a_a10b;
wire na18a_a18a;
assign na18a = na18a_a10b | na18a_a18a;
wire na18b;
wire na18d;
wire na18d_a10e;
wire na18d_a18d;
assign na18d = na18d_a10e | na18d_a18d;
wire na18e;
wire na19a;
wire na19b;
wire na19b_a19b;
wire na19b_a33b;
assign na19b = na19b_a19b | na19b_a33b;
wire na19d;
wire na19e;
wire na19e_a19e;
wire na19e_a33d;
assign na19e = na19e_a19e | na19e_a33d;
wire na20a;
wire na20a_a13a;
wire na20a_a20a;
assign na20a = na20a_a13a | na20a_a20a;
wire na20b;
wire na20d;
wire na20d_a13c;
wire na20d_a20d;
assign na20d = na20d_a13c | na20d_a20d;
wire na20e;
wire na21a;
wire na21a_a13b;
wire na21a_a21a;
assign na21a = na21a_a13b | na21a_a21a;
wire na21b;
wire na21d;
wire na21d_a13d;
wire na21d_a21d;
assign na21d = na21d_a13d | na21d_a21d;
wire na21e;
wire na22a;
wire na22a_a29a;
wire na22a_a22a;
assign na22a = na22a_a29a | na22a_a22a;
wire na22b;
wire na22d;
wire na22d_a29c;
wire na22d_a22d;
assign na22d = na22d_a29c | na22d_a22d;
wire na22e;
wire na23a;
wire na23b;
wire na23b_a23b;
wire na23b_a30a;
assign na23b = na23b_a23b | na23b_a30a;
wire na23d;
wire na23e;
wire na23e_a23e;
wire na23e_a30c;
assign na23e = na23e_a23e | na23e_a30c;
wire na26a;
wire na26b;
wire na26b_a26b;
wire na26b_a33a;
assign na26b = na26b_a26b | na26b_a33a;
wire na26d;
wire na26e;
wire na26e_a26e;
wire na26e_a33c;
assign na26e = na26e_a26e | na26e_a33c;
wire na27a;
wire na27b;
wire na27b_a27b;
wire na27b_a34a;
assign na27b = na27b_a27b | na27b_a34a;
wire na27d;
wire na27e;
wire na27e_a27e;
wire na27e_a34c;
assign na27e = na27e_a27e | na27e_a34c;
wire na28a;
wire na28b;
wire na28d;
wire na28e;
wire na35a;
wire na35b;
wire na35b_a34b;
wire na35b_a35b;
assign na35b = na35b_a34b | na35b_a35b;
wire na35d;
wire na35e;
wire na35e_a34d;
wire na35e_a35e;
assign na35e = na35e_a34d | na35e_a35e;

// 10-54
and a29a(na22a_a29a, V1, BRA1, BRA2);
and a22a(na22a_a22a, na22b, BRA2N);
and a22b(na22b, V1, BRA1N);
inv a22c(PAO1, na22a, SIM_CLK, SIM_RST);

and a15a(na15a, V1, BRA3N);
and a15b(na15b_a15b, na15a, BRA4N);
and a29b(na15b_a29b, V1, BRA3, BRA4);
inv a15c(PAO2, na15b, SIM_CLK, SIM_RST);

and a8a(na8a_a8a, V1, PAO1);
and a8b(na8a_a8b, V1, PAO2);
inv a8c(PAE1, na8a, SIM_CLK, SIM_RST);

and a10a(na11a_a10a, V1, PAE1);
and a11a(na11a_a11a, V1, na11b, PAO2);
and a11b(na11b, PAO1);
inv a11c(PAO8, na11a, SIM_CLK, SIM_RST);

and a23a(na23a, V1, BRA5);
and a23b(na23b_a23b, na23a, BRA6);
and a30a(na23b_a30a, V1, BRA5N, BRA6N);
inv a23c(PAO3, na23b, SIM_CLK, SIM_RST);

and a16a(na16a, V1, BRA7);
and a16b(na16b_a16b, na16a, BRA8);
and a30b(na16b_a30b, V1, BRA8N, BRA7N);
inv a16c(PAO4, na16b, SIM_CLK, SIM_RST);

and a9a(na9a_a9a, V1, PAO3);
and a9b(na9a_a9b, V1, PAO4);
inv a9c(PAE2, na9a, SIM_CLK, SIM_RST);

and a10b(na18a_a10b, V1, PAE2);
and a18a(na18a_a18a, V1, na18b, PAO4);
and a18b(na18b, PAO3);
inv a18c(PAO9, na18a, SIM_CLK, SIM_RST);

and a26a(na26a, V1, BRA9);
and a26b(na26b_a26b, na26a, BRA10);
and a33a(na26b_a33a, V1, BRA9N, BRA10N);
inv a26c(PAO5, na26b, SIM_CLK, SIM_RST);

and a19a(na19a, V1, BRA11);
and a19b(na19b_a19b, na19a, BRA12);
and a33b(na19b_a33b, V1, BRA11N, BRA12N);
inv a19c(PAO6, na19b, SIM_CLK, SIM_RST);

and a5a(na5b_a5a, V1, PAO5);
and a5b(na5b_a5b, V1, PAO6);
inv a5c(PAE3, na5b, SIM_CLK, SIM_RST);

and a10c(na6a_a10c, V1, PAE3);
and a6a(na6a_a6a, V1, na6b, PAO6);
and a6b(na6b, PAO5);
inv a6c(PAO10, na6a, SIM_CLK, SIM_RST);

and a27a(na27a, V1, BRA13);
and a27b(na27b_a27b, na27a, BRA14);
and a34a(na27b_a34a, V1, BRA13N, BRA14N);
inv a27c(PAO7, na27b, SIM_CLK, SIM_RST);

// 10-55
and a12a(na12a_a12a, V1, PAO8);
and a12b(na12a_a12b, V1, PAO9);
inv a12c(PAE4, na12a, SIM_CLK, SIM_RST);

and a13a(na20a_a13a, V1, PAE4);
and a20a(na20a_a20a, V1, na20b, PAO9);
and a20b(na20b, PAO8);
inv a20c(PAO11, na20a, SIM_CLK, SIM_RST);

and a14a(na14a_a14a, V1, PAO10);
and a14b(na14a_a14b, V1, PAO7);
inv a14c(PAE5, na14a, SIM_CLK, SIM_RST);

and a13b(na21a_a13b, V1, PAE5);
and a21a(na21a_a21a, V1, na21b, PAO10);
and a21b(na21b, PAO7);
inv a21c(PAO12, na21a, SIM_CLK, SIM_RST);

and a28a(na28a, V1, na28b, PAO12);
and a28b(na28b, PAO11);
inv a28c(PAE6N, na28a, SIM_CLK, SIM_RST);

and a34b(na35b_a34b, V1, PAO11, PAE6N);
and a35a(na35a, PAE6N);
and a35b(na35b_a35b, V1, na35a, PAO12);
inv a35c(EAP, na35b, SIM_CLK, SIM_RST);

// 10-56
and a29c(na22d_a29c, V1, BRB1, BRB2);
and a22d(na22d_a22d, na22e, BRB2N);
and a22e(na22e, V1, BRB1N);
inv a22f(PBO1, na22d, SIM_CLK, SIM_RST);

and a15d(na15d, V1, BRB3N);
and a15e(na15e_a15e, na15d, BRB4N);
and a29d(na15e_a29d, V1, BRB3, BRB4);
inv a15f(PBO2, na15e, SIM_CLK, SIM_RST);

and a8d(na8d_a8d, V1, PBO1);
and a8e(na8d_a8e, V1, PBO2);
inv a8f(PBE1, na8d, SIM_CLK, SIM_RST);

and a10d(na11d_a10d, V1, PBE1);
and a11d(na11d_a11d, na11e, PBO2);
and a11e(na11e, PBO1);
inv a11f(PBO8, na11d, SIM_CLK, SIM_RST);

and a23d(na23d, V1, BRB5);
and a23e(na23e_a23e, na23d, BRB6);
and a30c(na23e_a30c, V1, BRB5N, BRB6N);
inv a23f(PBO3, na23e, SIM_CLK, SIM_RST);

and a16d(na16d, V1, BRB7);
and a16e(na16e_a16e, na16d, BRB8);
and a30d(na16e_a30d, V1, BRB8N, BRB7N);
inv a16f(PBO4, na16e, SIM_CLK, SIM_RST);

and a9d(na9d_a9d, V1, PBO3);
and a9e(na9d_a9e, V1, PBO4);
inv a9f(PBE2, na9d, SIM_CLK, SIM_RST);

and a10e(na18d_a10e, V1, PBE2);
and a18d(na18d_a18d, V1, na18e, PBO4);
and a18e(na18e, PBO3);
inv a18f(PBO9, na18d, SIM_CLK, SIM_RST);

and a26d(na26d, V1, BRB9);
and a26e(na26e_a26e, na26d, BRB10);
and a33c(na26e_a33c, V1, BRB9N, BRB10N);
inv a26f(PBO5, na26e, SIM_CLK, SIM_RST);

and a19d(na19d, V1, BRB11);
and a19e(na19e_a19e, na19d, BRB12);
and a33d(na19e_a33d, V1, BRB11N, BRB12N);
inv a19f(PBO6, na19e, SIM_CLK, SIM_RST);

and a5d(na5e_a5d, V1, PBO5);
and a5e(na5e_a5e, V1, PBO6);
inv a5f(PBE3, na5e, SIM_CLK, SIM_RST);

and a10f(na6d_a10f, V1, PBE3);
and a6d(na6d_a6d, V1, na6e, PBO6);
and a6e(na6e, PBO5);
inv a6f(PBO10, na6d, SIM_CLK, SIM_RST);

and a27d(na27d, V1, BRB13);
and a27e(na27e_a27e, na27d, BRB14);
and a34c(na27e_a34c, V1, BRB13N, BRB14N);
inv a27f(PBO7, na27e, SIM_CLK, SIM_RST);

// 10-57
and a12d(na12d_a12d, V1, PBO8);
and a12e(na12d_a12e, V1, PBO9);
inv a12f(PBE4, na12d, SIM_CLK, SIM_RST);

and a13c(na20d_a13c, V1, PBE4);
and a20d(na20d_a20d, V1, na20e, PBO9);
and a20e(na20e, PBO8);
inv a20f(PBO11, na20d, SIM_CLK, SIM_RST);

and a14d(na14d_a14d, V1, PBO10);
and a14e(na14d_a14e, V1, PBO7);
inv a14f(PBE5, na14d, SIM_CLK, SIM_RST);

and a13d(na21d_a13d, V1, PBE5);
and a21d(na21d_a21d, V1, na21e, PBO10);
and a21e(na21e, PBO7);
inv a21f(PBO12, na21d, SIM_CLK, SIM_RST);

and a28d(na28d, V1, na28e, PBO12);
and a28e(na28e, PBO11);
inv a28f(PBE6N, na28d, SIM_CLK, SIM_RST);

and a34d(na35e_a34d, V1, PBO11, PBE6N);
and a35d(na35d, PBE6N);
and a35e(na35e_a35e, V1, na35d, PBO12);
inv a35f(EBP, na35e, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
