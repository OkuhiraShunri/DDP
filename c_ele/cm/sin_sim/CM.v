(* dont_touch = "true" *)
module CM(MR, Send_in_a, Send_in_b, Ack_in, Send_out, Ack_out_a, Ack_out_b, cp1, cp2, aeb);
    /*** port ***/
    input MR;
    input Send_in_a;
    input Send_in_b;
    input Ack_in;
    output Send_out;
    output Ack_out_a;
    output Ack_out_b;
    output cp1, cp2;
    output aeb;

    (* dont_touch = "true" *) wire CJ1_Send_out, CJ2_Send_out;

    (* dont_touch = "true" *) wire nand1_out, nand2_out, nand3_out, nand4_out;
    (* dont_touch = "true" *) wire nand5_out, nand6_out;
    (* dont_touch = "true" *) wire nand7_out, nand8_out;

    (* dont_touch = "true" *) wire nor1_out;
    (* dont_touch = "true" *) wire nor2_out, nor3_out;

    (* dont_touch = "true" *) wire cp1, cp2;
    (* dont_touch = "true" *) wire z1, z2;

    /*** circuit ***/
    assign nand1_out = ~(Send_in_a & Ack_out_a & nand2_out);
    assign nand2_out = ~(nand1_out & z1 & ~MR);
    assign nand3_out = ~(nand4_out & z2 & ~MR);
    assign nand4_out = ~(Send_in_b & Ack_out_b & nand3_out);

    assign nand5_out = ~(nand2_out & nand6_out & ~MR);
    assign nand6_out = ~(nand3_out & nand5_out);

    assign nand7_out = ~(nand5_out & nand8_out);
    assign nand8_out = ~(nand6_out & nand7_out & ~MR);

    assign nor1_out = ~(CJ1_Send_out | CJ2_Send_out);
    assign nor2_out = ~(~z1 | nor3_out);
    assign nor3_out = ~(~z2 | nor2_out | MR);

    assign z1 = ~cp1;
    assign z2 = ~cp2;

    assign Send_out = nor1_out;
    assign aeb = nor2_out;

    /*** module ***/
    CJ CJ1 (.Send_in(Send_in_a), .z(z2), .g(nand8_out), .Ack_out(Ack_out_a), .MR(MR), .Send_out(CJ1_Send_out), .Ack_in(Ack_in), .cp(cp1));
    CJ CJ2 (.Send_in(Send_in_b), .z(z1), .g(nand7_out), .Ack_out(Ack_out_b), .MR(MR), .Send_out(CJ2_Send_out), .Ack_in(Ack_in), .cp(cp2));
endmodule