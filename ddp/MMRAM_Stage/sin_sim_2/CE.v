(* dont_touch = "true" *)
module CE(MR, exb, Send_in, Ack_in, Send_out, Ack_out, cp);
    /*** port ***/
    input MR;
    input exb;
    input Send_in;
    input Ack_in;
    output Send_out;
    output Ack_out;
    output cp;


    (* dont_touch = "true" *) wire CF_Send_out;
    (* dont_touch = "true" *) wire or1_out, or2_out;
    (* dont_touch = "true" *) wire and_out;

    (* dont_touch = "true" *) reg DL;

    always @(posedge cp or posedge MR) begin
        if (MR) begin
            DL <= 1'b0;
        end
        else begin
            DL <= exb;
        end
    end

    assign or1_out = (~DL | CF_Send_out);
    assign or2_out = (DL | CF_Send_out);
    assign and_out = (Ack_in & or2_out);

    //output
    assign Send_out = or1_out;


    CF c0(.MR(MR), .Send_in(Send_in), .Ack_in(and_out), .Send_out(CF_Send_out), .Ack_out(Ack_out), .cp(cp));
endmodule