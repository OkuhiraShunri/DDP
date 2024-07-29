`timescale 1ps/1ps
module CX2 (
    input Send_in, Ack_in, MR, cpy, exb,
    output Ack_out, Send_out, CP, feb
);
localparam GROUND = 1'b0;

wire CF1S_out, CP1, CF2A_out, CF2S_out, CP2;
wire nor1_out, nor2_out, nand1_out, nand2_out, or1_out, or2_out, and1_out, and2_out;
wire DL_cpy, DL_exb;
reg DL1S;

CF CF1 (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(CF1S_out), .Ack_in(and2_out), .CP(CP1));
CF CF2 (.Send_in(nand1_out), .Ack_out(CF2A_out), .MR(MR), .Send_out(CF2S_out), .Ack_in(Ack_in), .CP(CP2));

//////////////assign #100 q = DL1S;
assign nor1_out = ~(CP2 | nor2_out);
assign nor2_out = ~(CP1 | nor1_out);
assign nand1_out = ~(DL_cpy & DL_exb & ~CF1S_out);
assign nand2_out = ~(DL_exb & ~CF1S_out);
assign or1_out = DL_exb | CF1S_out;
assign or2_out = CF2A_out | Ack_in;
assign and1_out = nand2_out & CF2S_out;
assign and2_out = or1_out & ~DL1S & Ack_in;

assign Send_out = and1_out;
assign CP = CP1;
assign feb = nor2_out;

assign DL_cpy = (CP1)? cpy: DL_cpy;
assign DL_exb = (CP1)? exb: DL_exb;


/* DL1Sの処理 */
always @(posedge MR or negedge or2_out or negedge CP2) begin
    if (MR) begin
        DL1S <= 1'b0;
    end
    else if (~or2_out) begin
        DL1S <= 1'b1;
    end
    else if (~CP2) begin
        DL1S <= GROUND;
    end
end

endmodule