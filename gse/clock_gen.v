`timescale 1ns/1ps
`default_nettype none

module clock_gen(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire PBAVN,
    input wire W6,

    output reg pa,
    output reg pb,
    output reg pc,

    output reg [14:1] bt,

    output reg w,
    output reg x,
    output reg y,
    output reg z
);

initial pa = 0;
initial pb = 0;
initial pc = 0;
initial bt = 'o20000;
initial w = 0;
initial x = 0;
initial y = 0;
initial z = 0;

`ifdef TARGET_FPGA

localparam PHASE_CLOCKS = 1120;
localparam BIT_CLOCKS = 20;
localparam PHASE_CTR_LEN = $clog2(3 * PHASE_CLOCKS);
localparam BIT_CTR_LEN = $clog2(4 * BIT_CLOCKS);

reg pbavn_r;
reg w6_r;
reg [PHASE_CTR_LEN-1:0] phase_ctr;
reg [BIT_CTR_LEN-1:0] bit_ctr;

always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        phase_ctr <= 0;
        bit_ctr <= 0;
        bt <= 'o20000;
    end else begin
        pbavn_r <= PBAVN;
        w6_r <= W6;
        if (~w6_r & W6) begin
            bit_ctr <= 0;
            bt <= {bt[13:1], bt[14]};
        end else begin
            bit_ctr <= bit_ctr + 1;
        end

        if (pbavn_r & ~PBAVN) begin
            bt <= 'b1;
            phase_ctr <= 0;
        end else begin
            phase_ctr <= phase_ctr + 1;
        end
    end
end

always @(*) begin
    pb = phase_ctr < (PHASE_CLOCKS - 10);
    pc = (phase_ctr >= PHASE_CLOCKS) && (phase_ctr < (2*PHASE_CLOCKS - 10));
    pa = (phase_ctr >= 2*PHASE_CLOCKS) && (phase_ctr < (3*PHASE_CLOCKS - 10));
end

always @(*) begin
    w = bit_ctr < (BIT_CLOCKS - 1);
    x = (bit_ctr >= BIT_CLOCKS) && (bit_ctr < (2*BIT_CLOCKS - 1));
    y = (bit_ctr >= 2*BIT_CLOCKS) && (bit_ctr < (3*BIT_CLOCKS - 1));
    z = (bit_ctr >= 3*BIT_CLOCKS) && (bit_ctr < (4*BIT_CLOCKS - 1));
end


`else

localparam phase_delay = 27243.75;
localparam clock_delay = 388.28125;

always @(negedge PBAVN) begin
    pb <= 1;
    #phase_delay pb <= 0;
    #100 pc <= 1;
    #phase_delay pc <= 0;
    #100 pa <= 1;
    #phase_delay pa <= 0;
end

always @(posedge W6) begin
    #50 w <= 1;
    #clock_delay w <= 0;
    #100 x <= 1;
    #clock_delay x <= 0;
    #100 y <= 1;
    #clock_delay y <= 0;
    #100 z <= 1;
    #clock_delay z <= 0;
end

always @(posedge W6) begin
    bt <= {bt[13:1], bt[14]};
end
always @(posedge pb) begin
    bt <= 'b1;
end

`endif

endmodule
`default_nettype wire
