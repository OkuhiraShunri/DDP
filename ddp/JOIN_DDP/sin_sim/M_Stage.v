`include "common_macro.vh"
module M_Stage (
    input Send_in_a, Send_in_b, Ack_in, MR, 
    input [`M_PACKET_SIZE] PACKET_IN_EXTERNAL, PACKET_IN_INTERNAL,
    output Ack_out_a, Ack_out_b, Send_out,
    output [`M_PACKET_SIZE] PACKET_OUT
);

wire CP_EXTERNAL, CP_INTERNAL, SEL;
reg [`M_PACKET_SIZE] DL_IN, DL_EX;

CM CM1 (.Send_in_a(Send_in_a), .Send_in_b(Send_in_b), .Ack_out_a(Ack_out_a), .Ack_out_b(Ack_out_b),
            .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), .CP_a(CP_INTERNAL), .CP_b(CP_EXTERNAL), .aeb(SEL));

assign PACKET_OUT = (SEL)? DL_EX: DL_IN;

/* DL_IN の更新処理 */
always @(posedge MR or posedge CP_INTERNAL) begin
    if (MR) begin
        DL_IN <= `M_PACKET_WIDTH'b0;
    end else begin
        DL_IN <= PACKET_IN_INTERNAL;
    end
end

/* DL_EX の更新処理 */
always @(posedge MR or posedge CP_EXTERNAL) begin
    if (MR) begin
        DL_EX <= `M_PACKET_WIDTH'b0;
    end else begin
        DL_EX <= PACKET_IN_EXTERNAL;
    end
end
    
endmodule