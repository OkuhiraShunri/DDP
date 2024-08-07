module CM(
    input Send_in_a, Send_in_b, Ack_in, MR, 
    output Ack_out_a, Ack_out_b, Send_out, CP_a, CP_b, AEB
);
//wire  c_ack_in;  
wire ga, gb, cp_a, cp_b, ack_out_a, ack_out_b, send_out_a, send_in_b;
CJ cj_a(.Send_in(Send_in_a), .Ack_in(Ack_in), .MR(MR), .G(ga), .Z_1(~cp_b), .Ack_out(ack_out_a), .Send_out(send_out_a), .CP(cp_a));
CJ cj_b(.Send_in(Send_in_b), .Ack_in(Ack_in), .MR(MR), .G(gb), .Z_1(~cp_a), .Ack_out(ack_out_b), .Send_out(send_out_b), .CP(cp_b));
ARB arb(.ARB_Send_in_a(Send_in_a), .ARB_Ack_out_a(ack_out_a), .ARB_Send_in_b(Send_in_b), .ARB_Ack_out_b(ack_out_b), .ARB_Za(~cp_a), .ARB_Zb(~cp_b), .MR(MR), .ARB_Ga(ga), .ARB_Gb(gb));
//C c(.Send_in(nor1), .Ack_in(c_ack_in), .MR(MR), .Ack_out(ack_in), .Send_out(c_send_out), .CP(c_cp));
wire nor1, nor2, nor3;
assign nor1 = ~(send_out_a | send_out_b);
assign nor2 = ~(cp_a | nor3);
assign nor3 = ~(cp_b | nor2 | MR);//MRに否定つけるとAEBの波形がおかしくなる

//output
assign Send_out = nor1;
assign Ack_out_a = ack_out_a;
assign Ack_out_b = ack_out_b;
assign AEB = nor2;
assign CP_a = cp_a;
assign CP_b = cp_b;
endmodule