module CE(
    input CE_Send_in, CE_Ack_in, MR, Exb,
    output CE_Ack_out, CE_Send_out, CE_CP
);
    wire cf_send_out, cf_ack_out, cp;
    reg DL = 1;//DLが1なら削除しないでそのまま次のC素子にSend_outする。　0なら削除する(Send_out出力しないようにする。)
    CF cf(.Send_in(CE_Send_in), .Ack_in(and_1), .MR(MR), .Ack_out(cf_ack_out), .Send_out(cf_send_out), .CP(cp));
    always @(posedge cp) begin
        DL <= Exb;
    end
    assign or_1 = ~DL | cf_send_out;
    assign or_2 = DL | cf_send_out; 
    assign and_1 = or_2 & CE_Ack_in;

    //output
    assign CE_Send_out = or_1;
    assign CE_Ack_out = cf_ack_out;
    assign CE_CP = cp;
endmodule