module ARB(
    input ARB_Send_in_a, ARB_Ack_out_a, ARB_Send_in_b, ARB_Ack_out_b, ARB_Za, ARB_Zb, MR,
    output ARB_Ga, ARB_Gb
);
wire nand1_out, nand2_out, nand3_out, nand4_out, nand5_out, nand6_out, nand7_out, nand8_out;

assign nand1_out = ~(ARB_Ack_out_a & ARB_Send_in_a & nand2_out);
assign nand2_out = ~(nand1_out & ARB_Za & ~MR);

assign nand3_out = ~(ARB_Zb & nand4_out & ~MR);
assign nand4_out = ~(ARB_Ack_out_b & ARB_Send_in_b & nand3_out);

assign nand5_out = ~(nand2_out & nand6_out & ~MR);
assign nand6_out = ~(nand3_out & nand5_out);

assign nand7_out = ~(nand5_out & nand8_out);
assign nand8_out = ~(nand7_out & nand6_out & ~MR);

assign ARB_Ga = nand8_out;
assign ARB_Gb = nand7_out;
endmodule