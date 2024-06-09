module CE(
    input Send_in, Ack_in, MR, Exb,
    output Ack_out, Send_out, CP
);
    wire cf_send_out, cf_ack_out, cp;
    reg DL = 1;//DLが1なら削除しないでそのまま次のC素子にSend_outする。　0ならする(Send_out出力しないようにする。)
    C cf(.Send_in(Send_in), .Ack_in(and_1), .MR(MR), .Ack_out(cf_ack_out), .Send_out(cf_send_out), .CP(cp));
    always @(posedge cp) begin
        DL <= Exb;
    end
    assign or_1 = ~DL | cf_send_out;
    assign or_2 = DL & cf_send_out; 
    assign and_1 = or_2 & Ack_in;

    //output
    assign Send_out = or_1;
    assign Ack_out = cf_ack_out;
    assign CP = cp;
endmodule