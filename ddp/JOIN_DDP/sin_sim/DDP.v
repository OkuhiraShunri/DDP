`include "common_macro.vh"
module DDP (
    input Send_in, Ack_in, MR,
    input [`M_PACKET_SIZE] PACKET_IN,
    output Ack_out, Send_out, 
    output reg [`B_PACKOUT_SIZE] PACKET_OUT
);

wire CP;

/*****************モジュール間接続用wire******************/
wire Send1, Send2, Send3, Send4, Send5, Send6, Send7, Send8, Send9;
wire Ack1, Ack2, Ack3, Ack4, Ack5, Ack6, Ack7, Ack8, Ack9;

wire WR_E, CE1_DEL, CE2_DEL, WRITE_EN, LOAD_FLG;
wire [`MMRAM_ADDR_SIZE] ADDR;
wire [`DATA_SIZE] WRITE_DATA;


wire [`M_PACKET_SIZE] M_PACKOUT;
wire [`MMCAM_PACKET_SIZE] MMCAM_PACKOUT;
wire [`MMRAM_PACKOUT_SIZE] MMRAM_PACKOUT;
wire [`PS_PACKOUT_SIZE] PS_PACKOUT;
wire [`FP_PACKOUT_SIZE] FP_PACKOUT;
wire [`MA_PACKET_SIZE] MA_PACKOUT;
wire [`COPY_PACKOUT_SIZE] COPY_PACKOUT;
wire [`B_PACKOUT_SIZE] B_PACKOUT;
/*******************************************************/

M_Stage M_Stage (.Send_in_a(Send1), .Send_in_b(Send_in), .Ack_out_a(Ack1), .Ack_out_b(Ack_out), .MR(MR), .Send_out(Send2), .Ack_in(Ack2),
                    .PACKET_IN_EXTERNAL(PACKET_IN), .PACKET_IN_INTERNAL(B_PACKOUT), .PACKET_OUT(M_PACKOUT) );

MMCAM_Stage MMCAM_Stage (.Send_in(Send2), .Ack_out(Ack2), .MR(MR), .Send_out(Send3), .Ack_in(Ack3), 
                            .PACKET_IN(M_PACKOUT), .PACKET_OUT(MMCAM_PACKOUT), .WR_E(WR_E), .DEL(CE1_DEL), .ADDR(ADDR));

MMRAM_Stage MMRAM_Stage (.Send_in(Send3), .Ack_out(Ack3), .MR(MR), .Send_out(Send4), .Ack_in(Ack4), 
                           .WR_E(WR_E), .DEL(CE1_DEL), .ADDR(ADDR), .PACKET_IN(MMCAM_PACKOUT), .PACKET_OUT(MMRAM_PACKOUT));

PS_Stage PS_Stage (.Send_in(Send4), .Ack_out(Ack4), .MR(MR), .Send_out(Send5), .Ack_in(Ack5), 
                    .PACKET_IN(MMRAM_PACKOUT), .PACKET_OUT(PS_PACKOUT), .DEL(CE2_DEL));

FP_Stage FP_Stage (.Send_in(Send5), .Ack_out(Ack5), .MR(MR), .Send_out(Send6), .Ack_in(Ack6), .DEL(CE2_DEL),  
                    .PACKET_IN(PS_PACKOUT), .PACKET_OUT(FP_PACKOUT), .LOAD_FLG(LOAD_FLG), .WRITE_EN(WRITE_EN), .WRITE_DATA(WRITE_DATA));

MA_Stage MA_Stage (.Send_in(Send6), .Ack_out(Ack6), .MR(MR), .Send_out(Send7), .Ack_in(Ack7), 
                    .LOAD_FLG(LOAD_FLG), .WRITE_EN(WRITE_EN), .WRITE_DATA(WRITE_DATA), .PACKET_IN(FP_PACKOUT), .PACKET_OUT(MA_PACKOUT));

COPY_Stage COPY_Stage (.Send_in(Send7), .Ack_out(Ack7), .MR(MR), .Send_out(Send8), .Ack_in(Ack8), 
                        .PACKET_IN(MA_PACKOUT), .PACKET_OUT(COPY_PACKOUT));

B_Stage B_Stage (.Send_in(Send8), .Ack_out(Ack8), .MR(MR), .Send_out_a(Send9), .Send_out_b(Send1), .Ack_in_a(Ack9), .Ack_in_b(Ack1),
                    .PACKET_IN(COPY_PACKOUT), .PACKET_OUT(B_PACKOUT));

C C10 (.Send_in(Send9), .Ack_out(Ack9), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), .CP(CP));


/* PACKET_OUT の更新処理 */
always @(posedge MR or posedge CP) begin
    if (MR) begin
        PACKET_OUT <= `B_PACKOUT_WIDTH'd0;
    end else begin
        PACKET_OUT <= B_PACKOUT;
    end
end
    
endmodule