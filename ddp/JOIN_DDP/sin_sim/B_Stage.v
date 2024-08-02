`include "common_macro.vh"
module B_Stage (
    input Send_in, Ack_in_a, Ack_in_b, MR, 
    input [`B_PACKIN_SIZE] PACKET_IN,
    output Send_out_a, Send_out_b, Ack_out,
    output [`B_PACKOUT_SIZE] PACKET_OUT
);

wire C8S_out, C8A_in, CP_C, CP_CB, BR;
wire [`B_PACKOUT_SIZE] BRANCH_OUT;
reg [`B_PACKIN_SIZE] DL_IN;
reg [`B_PACKOUT_SIZE] DL_OUT;

C C8 (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(C8S_out), .Ack_in(C8A_in), .CP(CP_C));
CB CB9 (.Send_in(C8S_out), .Ack_out(C8A_in), .MR(MR), .Send_out_a(Send_out_a), .Send_out_b(Send_out_b),
         .Ack_in_a(Ack_in_a), .Ack_in_b(Ack_in_b), .CP(CP_CB), .br(BR));


assign {BR, BRANCH_OUT} = {DL_IN[`B_PACKIN_BR], {DL_IN[`B_PACKIN_CGDL], DL_IN[`B_PACKIN_MCZD]}};
assign PACKET_OUT = DL_OUT;

/* DL_IN の更新処理 */
always @(posedge CP_C or posedge MR) begin
    if (MR) begin
        DL_IN <= `B_PACKIN_WIDTH'b0;
    end else begin
        DL_IN <= PACKET_IN;
    end
end

/* DL_OUT の更新処理 */
always @(posedge CP_CB or posedge MR) begin
    if (MR) begin
        DL_OUT <= `B_PACKOUT_WIDTH'b0;
    end else begin
        DL_OUT <= BRANCH_OUT;
    end
end
    
endmodule