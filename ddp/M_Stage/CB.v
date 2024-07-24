module CB(
    input CB_Send_in, CB_Ack_in_a, CB_Ack_in_b, MR, Br,
    output CB_Ack_out, CB_Send_out_a, CB_Send_out_b, CB_CP
);

reg DL = 1;
wire cf_ack_out, cf_send_out, cp;

C cf(.Send_in(CB_Send_in), .Ack_in(and_1), .MR(MR), .Ack_out(cf_ack_out), .Send_out(cf_send_out), .CP(cp));

always @(posedge cp) begin
    DL <= Br;
end

assign and_1 = CB_Ack_in_a & CB_Ack_in_b;

//output
assign CB_Send_out_a = ~(~cf_send_out & ~DL);
assign CB_Send_out_b = ~(~cf_send_out & DL);
assign CB_Ack_out = cf_ack_out;
assign CB_CP = cp;


endmodule