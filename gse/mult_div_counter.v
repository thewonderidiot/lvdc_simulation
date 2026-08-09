`timescale 1ns/1ps
`default_nettype none

module mult_div_counter(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire pa,
    input wire pb,
    input wire pc,
    input wire [14:1] bt,
    input wire z,

    input wire [4:1] op,

    output reg nmmh,
    output reg ndiv,
    output wire selph,
    output wire mrsync
);

wire gmmh = pb & ({op[4], op[2], op[1]} == 'b001);
wire gdiv = pb & (op == 'b0011);

initial nmmh = 0;
initial ndiv = 0;

wire mmhd = nmmh | ndiv;

reg phase = 0;
reg [3:0] count = 0;
assign selph = (count > 0) & phase;

reg mmrph = 0;
always @(*) begin
    case (count)
        'd0: mmrph = pc & bt[14];
        'd1: mmrph = pb & bt[10];
        'd2: mmrph = pa & bt[6];
        'd3: mmrph = pc & bt[2];
        'd4: mmrph = pa & bt[12];
        'd5: mmrph = pc & bt[8];
        'd6: mmrph = (pb & bt[4]) | (pc & bt[14]);
        default: mmrph = 0;
    endcase
end

reg dmrph = 0;
always @(*) begin
    case (count)
        'd0,'d7:  dmrph = pb & bt[2];
        'd1,'d8:  dmrph = pa & bt[4];
        'd2,'d9:  dmrph = pc & bt[6];
        'd3,'d10: dmrph = pb & bt[8];
        'd4,'d11: dmrph = pa & bt[10];
        'd5,'d12: dmrph = pc & bt[12];
        'd6:      dmrph = pb & bt[14];
        default:  dmrph = 0;
    endcase
end

wire mgmr = nmmh & mmrph;
wire dgmr = ndiv & dmrph;
wire pqmr = (~nmmh & ~ndiv) & (pc & bt[12]);
assign mrsync = mgmr | dgmr | pqmr;

`ifdef CLOCKED
wire bt14z = bt[14] & z;
reg bt14z_r;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        bt14z_r <= 0;
        phase <= 0;
        count <= 0;
    end else begin
        bt14z_r <= bt14z;
        if (gmmh | gdiv) begin
            phase <= 1;
            count <= 0;
        end else if (bt14z_r & ~bt14z) begin
            phase <= ~phase;
            if (~phase) count <= count + 1;
        end
    end
end

reg gmmh_r = 0;
reg gdiv_r = 0;
always @(posedge SIM_CLK or negedge SIM_RST) begin
    if (~SIM_RST) begin
        nmmh <= 0;
        ndiv <= 0;
        gmmh_r <= 0;
        gdiv_r <= 0;
    end else begin
        gdiv_r <= gdiv;
        gmmh_r <= gmmh;

        if (~gmmh_r & gmmh) nmmh <= 1;
        else if (bt14z_r & ~bt14z & (count == 'd7)) nmmh <= 0;

        if (~gdiv_r & gdiv) ndiv <= 1;
        else if (bt14z_r & ~bt14z & (count == 'd12)) ndiv <= 0;
    end
end

`else
always @(posedge (pb & gmmh)) begin
    nmmh <= 'b1;
end

always @(posedge (pb & gdiv)) begin
    ndiv <= 'b1;
end

always @(negedge (bt[14] & z)) begin
    phase <= ~phase;
    if (~phase) count <= count + 1;
    if (count == 'd7) nmmh <= 0;
    if (count == 'd12) ndiv <= 0;
end

always @(posedge mmhd) begin
    phase <= 1;
    count <= 0;
end
`endif

endmodule
`default_nettype wire
