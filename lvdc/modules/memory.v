`timescale 1ns/1ps
`default_nettype none

module memory(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire AnAX0VN,
    input wire AnAX1VN,
    input wire AnAX2VN,
    input wire AnAX3VN,
    input wire AnAX4VN,
    input wire AnAX5VN,
    input wire AnAX6VN,
    input wire AnAX7VN,
    input wire AnAX00VN,
    input wire AnAX10VN,
    input wire AnAX20VN,
    input wire AnAX30VN,
    input wire AnAX40VN,
    input wire AnAX50VN,
    input wire AnAX60VN,
    input wire AnAX70VN,
    input wire AnAY0VN,
    input wire AnAY1VN,
    input wire AnAY2VN,
    input wire AnAY3VN,
    input wire AnAY4VN,
    input wire AnAY5VN,
    input wire AnAY6VN,
    input wire AnAY7VN,
    input wire AnAY00VN,
    input wire AnAY10VN,
    input wire AnAY20VN,
    input wire AnAY30VN,
    input wire AnAY40VN,
    input wire AnAY50VN,
    input wire AnAY60VN,
    input wire AnAY70VN,
    input wire AnBROVa,
    input wire AnBROVb,
    input wire AnINHBSV,
    input wire AnRDMV,
    input wire AnRDMVN,
    input wire AnSYL0VN,
    input wire AnSYL1VN,
    input wire BRA1,
    input wire BRA2,
    input wire BRA3,
    input wire BRA4,
    input wire BRA5,
    input wire BRA6,
    input wire BRA7,
    input wire BRA8,
    input wire BRA9,
    input wire BRA10,
    input wire BRA11,
    input wire BRA12,
    input wire BRA13,
    input wire BRA14,
    input wire BRB1,
    input wire BRB2,
    input wire BRB3,
    input wire BRB4,
    input wire BRB5,
    input wire BRB6,
    input wire BRB7,
    input wire BRB8,
    input wire BRB9,
    input wire BRB10,
    input wire BRB11,
    input wire BRB12,
    input wire BRB13,
    input wire BRB14,
    input wire MmSYNCV,
    output wire EDmX,
    output wire EDmY,
    output wire MmSA1,
    output wire MmSA2,
    output wire MmSA3,
    output wire MmSA4,
    output wire MmSA5,
    output wire MmSA6,
    output wire MmSA7,
    output wire MmSA8,
    output wire MmSA9,
    output wire MmSA10,
    output wire MmSA11,
    output wire MmSA12,
    output wire MmSA13,
    output wire MmSA14
);

parameter mod = 0;

wire MmINH1;
wire MmINH2;
wire MmINH3;
wire MmINH4;
wire MmINH5;
wire MmINH6;
wire MmINH7;
wire MmINH8;
wire MmINH9;
wire MmINH10;
wire MmINH11;
wire MmINH12;
wire MmINH13;
wire MmINH14;
wire MmRDP1;
wire MmRDP2;
wire MmRDP3;
wire MmSTRP1;
wire MmSTRP2;
wire MmSTRP3;
wire MmSTROB;

// 10-154
mcd1 mcd1a(MmSTRP1, AnRDMVN, MmSYNCV, SIM_CLK, SIM_RST);
mcd2 #(2500) mcd2a(MmSTRP2, MmSTRP1, SIM_CLK, SIM_RST);
mcd2 #(1500) mcd2b(MmSTRP3, MmSTRP2, SIM_CLK, SIM_RST);

mcd1 mcd1b(MmRDP1, MmSYNCV, AnRDMV, SIM_CLK, SIM_RST);
mcd2 #(2500) mcd2c(MmRDP2, MmRDP1, SIM_CLK, SIM_RST);
mcd2 #(1500) mcd2d(MmRDP3, MmRDP2, SIM_CLK, SIM_RST);
vsg vsga(MmSTROB, MmRDP3, AnINHBSV, SIM_CLK, SIM_RST);

// Address decoding
reg [11:0] address;
always @(*) begin
    case ({AnAX7VN, AnAX6VN, AnAX5VN, AnAX4VN, AnAX3VN, AnAX2VN, AnAX1VN, AnAX0VN})
    8'b11111110: address[2:0] = 3'o0;
    8'b11111101: address[2:0] = 3'o1;
    8'b11111011: address[2:0] = 3'o2;
    8'b11110111: address[2:0] = 3'o3;
    8'b11101111: address[2:0] = 3'o4;
    8'b11011111: address[2:0] = 3'o5;
    8'b10111111: address[2:0] = 3'o6;
    8'b01111111: address[2:0] = 3'o7;
    default: address[2:0] = 3'o0;
    endcase
end

always @(*) begin
    case ({AnAY7VN, AnAY6VN, AnAY5VN, AnAY4VN, AnAY3VN, AnAY2VN, AnAY1VN, AnAY0VN})
    8'b11111110: address[5:3] = 3'o0;
    8'b11111101: address[5:3] = 3'o1;
    8'b11111011: address[5:3] = 3'o2;
    8'b11110111: address[5:3] = 3'o3;
    8'b11101111: address[5:3] = 3'o4;
    8'b11011111: address[5:3] = 3'o5;
    8'b10111111: address[5:3] = 3'o6;
    8'b01111111: address[5:3] = 3'o7;
    default: address[5:3] = 3'o0;
    endcase
end

always @(*) begin
    case ({AnAX70VN, AnAX60VN, AnAX50VN, AnAX40VN, AnAX30VN, AnAX20VN, AnAX10VN, AnAX00VN})
    8'b11111110: {address[11], address[7:6]} = 3'o0;
    8'b11111101: {address[11], address[7:6]} = 3'o1;
    8'b11111011: {address[11], address[7:6]} = 3'o2;
    8'b11110111: {address[11], address[7:6]} = 3'o3;
    8'b11101111: {address[11], address[7:6]} = 3'o4;
    8'b11011111: {address[11], address[7:6]} = 3'o5;
    8'b10111111: {address[11], address[7:6]} = 3'o6;
    8'b01111111: {address[11], address[7:6]} = 3'o7;
    default: {address[11], address[7:6]} = 3'o0;
    endcase
end

always @(*) begin
    case ({AnAY70VN, AnAY60VN, AnAY50VN, AnAY40VN, AnAY30VN, AnAY20VN, AnAY10VN, AnAY00VN})
    8'b11111110: address[10:8] = 3'o0;
    8'b11111101: address[10:8] = 3'o1;
    8'b11111011: address[10:8] = 3'o2;
    8'b11110111: address[10:8] = 3'o3;
    8'b11101111: address[10:8] = 3'o4;
    8'b11011111: address[10:8] = 3'o5;
    8'b10111111: address[10:8] = 3'o6;
    8'b01111111: address[10:8] = 3'o7;
    default: address[10:8] = 3'o0;
    endcase
end

// Data
reg [28:1] core[0:4095];
initial begin
    $readmemh($sformatf("core/module%0d.mem", mod), core);
end

// Inhibit
id id1(MmINH1, BRA1, AnBROVa, BRB1, AnBROVb, MmSTRP2);
id id2(MmINH2, BRA2, AnBROVa, BRB2, AnBROVb, MmSTRP2);
id id3(MmINH3, BRA3, AnBROVa, BRB3, AnBROVb, MmSTRP2);
id id4(MmINH4, BRA4, AnBROVa, BRB4, AnBROVb, MmSTRP2);
id id5(MmINH5, BRA5, AnBROVa, BRB5, AnBROVb, MmSTRP2);
id id6(MmINH6, BRA6, AnBROVa, BRB6, AnBROVb, MmSTRP2);
id id7(MmINH7, BRA7, AnBROVa, BRB7, AnBROVb, MmSTRP2);
id id8(MmINH8, BRA8, AnBROVa, BRB8, AnBROVb, MmSTRP2);
id id9(MmINH9, BRA9, AnBROVa, BRB9, AnBROVb, MmSTRP2);
id id10(MmINH10, BRA10, AnBROVa, BRB10, AnBROVb, MmSTRP2);
id id11(MmINH11, BRA11, AnBROVa, BRB11, AnBROVb, MmSTRP2);
id id12(MmINH12, BRA12, AnBROVa, BRB12, AnBROVb, MmSTRP2);
id id13(MmINH13, BRA13, AnBROVa, BRB13, AnBROVb, MmSTRP2);
id id14(MmINH14, BRA14, AnBROVa, BRB14, AnBROVb, MmSTRP2);

wire [14:1] inh;
assign inh = {MmINH1, MmINH2, MmINH3, MmINH4, MmINH5, MmINH6, MmINH7, MmINH8, MmINH9, MmINH10, MmINH11, MmINH12, MmINH13, MmINH14};

reg [28:1] data;
initial data = 28'b0;

`ifdef TARGET_FPGA
always @(posedge SIM_CLK) begin
    if (MmSTRP3) begin
        core[address] <= AnSYL0VN ? {data[28:15], inh} : {inh, data[14:1]};
    end
end
`else
always @(*) begin
    if (MmSTRP3) begin
        core[address] = AnSYL0VN ? {data[28:15], inh} : {inh, data[14:1]};
    end
end
`endif


// Sense
`ifdef TARGET_FPGA
always @(posedge SIM_CLK) begin
    data <= core[address];
end
`else
always @(*) begin
    data = core[address];
end
`endif

wire [14:1] syllable;
assign syllable = AnSYL0VN ? data[14:1] : data[28:15];

assign {MmSA1, MmSA2, MmSA3, MmSA4, MmSA5, MmSA6, MmSA7, MmSA8, MmSA9, MmSA10, MmSA11, MmSA12, MmSA13, MmSA14} = MmSTROB ? 14'b0 : syllable;

// Outputs
assign EDmX = MmRDP3 | MmSTRP3;
assign EDmY = MmRDP3 | MmSTRP3;

endmodule
`default_nettype wire
