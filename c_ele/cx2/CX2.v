module CX2(
    input Send_in, Ack_in, CPY, EXB, MR,
    output Ack_out, Send_out, CP, FEB
);

reg DL_cpy = 0;
reg DL_exb = 1;
reg DL1S = 0;
wire cf1_cp, cf1_send_out, cf1_ack_out;
wire cf2_cp, cf2_ack_out, cf2_send_out;
wire nand1_out, nand2_out, or1_out, or2_out, and1_out, and2_out, nor1_out, nor2_out;

assign nand1_out = ~(~cf1_send_out & DL_exb & DL_cpy);
assign nand2_out = ~(~cf1_send_out & DL_exb);

assign or1_out = (DL_exb |cf1_send_out); 
assign or2_out = (cf2_ack_out | Ack_in);

assign and1_out = (nand2_out & cf2_send_out);
assign and2_out = (or1_out & ~DL1S & Ack_in);

assign nor1_out = ~(cf2_cp | nor2_out);
assign nor2_out = ~(cf1_cp | nor1_out);


CF cf1(.Send_in(Send_in), .Ack_in(and2_out), .MR(MR), .Ack_out(cf1_ack_out), .Send_out(cf1_send_out), .CP(cf1_cp));
CF cf2(.Send_in(nand1_out), .Ack_in(Ack_in), .MR(MR), .Ack_out(cf2_ack_out), .Send_out(cf2_send_out), .CP(cf2_cp));

//
always @(posedge MR or posedge cf1_cp) begin
    if (MR) begin
        DL_cpy <= 1'b0;
        DL_exb <= 1'b1;
    end
    else begin
        DL_cpy <= CPY;
        DL_exb <= EXB;
    end
end

/* DL1S の更新処理 */
localparam GROUND = 1'b0;
always @(posedge MR or negedge or2_out or negedge cf2_cp) begin
    if (MR) begin
        DL1S <= 1'b0;
    end
    else if (~or2_out) begin//or2_outの立下り
        DL1S <= 1'b1;
    end
    else if (~cf2_cp) begin//cf2_cpの立下り
        DL1S <= GROUND;
    end
    // else if(or2_out) begin
    //     DL1S <= 1'b0;
    // end
end

//output
assign Ack_out = cf1_ack_out;
assign Send_out = and1_out;
assign CP = cf1_cp;
assign FEB = nor2_out;

endmodule