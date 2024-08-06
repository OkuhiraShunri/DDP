`timescale 1ns/1ns
module CM (
    input Send_in_a, Send_in_b, Ack_in, MR,
    output Ack_out_a, Ack_out_b, Send_out, CP_a, CP_b, aeb
);

wire nor1_out, nor2_out, nor3_out;
wire cop, cop1, ga, gb, z, z1;
wire nand1_out, nand2_out, nand3_out, nand4_out, nand5_out, nand6_out, nand7_out, nand8_out;

CJ CJ0 (.Send_in(Send_in_a), .Ack_out(Ack_out_a), .Send_out(cop), .Ack_in(Ack_in), .CP(CP_a), .g(ga), .z(z1), .MR(MR));
CJ CJ1 (.Send_in(Send_in_b), .Ack_out(Ack_out_b), .Send_out(cop1), .Ack_in(Ack_in), .CP(CP_b), .g(gb), .z(z), .MR(MR));

assign nor1_out = ~(cop | cop1);
assign nor2_out = ~(~z | nor3_out);
assign nor3_out = ~(~z1 | nor2_out | MR);
assign z = ~CP_a;
assign z1 = ~CP_b;

/* ARB (arbiter) */
assign nand1_out = ~(Send_in_a & Ack_out_a & nand2_out);
assign nand2_out = ~(z & ~MR & nand1_out);
assign nand3_out = ~(z1 & ~MR & nand4_out);
assign nand4_out = ~(Send_in_b & Ack_out_b & nand3_out);
assign nand5_out = ~(~MR & nand2_out & nand6_out);
assign nand6_out = ~(nand3_out & nand5_out);
assign nand7_out = ~(nand5_out & nand8_out);
assign nand8_out = ~(nand6_out & nand7_out);
assign ga = nand8_out;
assign gb = nand7_out;

assign Send_out = nor1_out;
assign aeb = nor2_out;
    
endmodule