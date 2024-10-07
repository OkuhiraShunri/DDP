(* dont_touch = "true" *)
`include "macro.vh"
module JOIN_DDP(
    input MR, Send_in, Ack_in,
    input [37:0] PACKET_IN,
    output Send_out, Ack_out,
    output [37:0] PACKET_OUT
);

(* dont_touch = "true" *) wire [`M_PACKET_SIZE-1:0] M_PACKET_OUT;
(* dont_touch = "true" *) wire [`MMRAM_PACKET_SIZE-1:0] MMCAM_PACKET_OUT;
(* dont_touch = "true" *) wire [`PS_PACKET_SIZE-1:0] MMRAM_PACKET_OUT;
(* dont_touch = "true" *) wire [`FP_PACKET_SIZE-1:0] PS_PACKET_OUT;
(* dont_touch = "true" *) wire [`MA_PACKET_SIZE-1:0] FP_PACKET_OUT;
(* dont_touch = "true" *) wire [`COPY_PACKET_SIZE-1:0] MA_PACKET_OUT;
(* dont_touch = "true" *) wire [`B_PACKET_SIZE-1:0] COPY_PACKET_OUT;
(* dont_touch = "true" *) wire [`M_PACKET_SIZE-1:0] B_PACKET_OUT;

(* dont_touch = "true" *) wire CP;
(* dont_touch = "true" *) wire C_Ack_out;
(* dont_touch = "true" *) wire M_Send_out, M_Ack_out;
(* dont_touch = "true" *) wire MMCAM_Send_out, MMCAM_Ack_out;
(* dont_touch = "true" *) wire MMRAM_Send_out, MMRAM_Ack_out;
(* dont_touch = "true" *) wire PS_Send_out, PS_Ack_out;
(* dont_touch = "true" *) wire FP_Send_out, FP_Ack_out;
(* dont_touch = "true" *) wire MA_Send_out, MA_Ack_out;
(* dont_touch = "true" *) wire COPY_Send_out, COPY_Ack_out;
(* dont_touch = "true" *) wire B_Send_out_EXTERNAL, B_Send_out_INTERNAL, B_Ack_out;
(* dont_touch = "true" *) wire [5:0] ADDR;


M_Stage M(.MR(MR), .Send_in_EX(Send_in), .Send_in_IN(B_Send_out_INTERNAL), .Ack_in(MMCAM_Ack_out), .PACKET_IN_EXTERNAL(PACKET_IN), 
          .PACKET_IN_INTERNAL(B_PACKET_OUT), .Ack_out_EX(Ack_out), .Ack_out_IN(M_Ack_out_IN), .Send_out(M_Send_out), .PACKET_OUT(M_PACKET_OUT));

MMCAM_Stage MMCAM(.MR(MR), .Send_in(M_Send_out), .Ack_in(MMRAM_Ack_out), .PACKET_IN(M_PACKET_OUT), .PACKET_OUT(MMCAM_PACKET_OUT), 
                  .WR_E(WR_E), .DEL(DEL), .Ack_out(MMCAM_Ack_out), .Send_out(MMCAM_Send_out), .ADDR(ADDR));

MMRAM_Stage MMRAM(.WR_E(WR_E), .DEL(DEL), .MR(MR), .Send_in(MMCAM_Send_out), .Ack_in(PS_Ack_out), .ADDR(ADDR), 
                  .PACKET_IN(MMCAM_PACKET_OUT), .PACKET_OUT(MMRAM_PACKET_OUT), .Send_out(MMRAM_Send_out), .Ack_out(MMRAM_Ack_out));

PS_Stage PS(.Send_in(MMRAM_Send_out), .Ack_in(FP_Ack_out), .MR(MR), .PACKET_IN(MMRAM_PACKET_OUT), 
            .PACKET_OUT(PS_PACKET_OUT), .DEL(PS_DEL), .Send_out(PS_Send_out), .Ack_out(PS_Ack_out));

FP_Stage FP(.PACKET_IN(PS_PACKET_OUT), .DEL(PS_DEL), .Send_in(PS_Send_out), .Ack_in(MA_Ack_out), .MR(MR), 
            .WRITE_DATA(WRITE_DATA), .PACKET_OUT(FP_PACKET_OUT), .WRITE_EN(WRITE_EN), .LOAD_FLG(LOAD_FLG), .Send_out(FP_Send_out), .Ack_out(FP_Ack_out));

MA_Stage MA(.WRITE_EN(WRITE_EN), .LOAD_FLG(LOAD_FLG), .Send_in(FP_Send_out), .Ack_in(COPY_Ack_out), .MR(MR), 
            .WRITE_DATA(WRITE_DATA), .PACKET_IN(FP_PACKET_OUT), .PACKET_OUT(MA_PACKET_OUT), .Send_out(MA_Send_out), .Ack_out(MA_Ack_out));

COPY_Stage COPY(.Send_in(MA_Send_out), .Ack_in(B_Ack_out), .MR(MR), .PACKET_IN(MA_PACKET_OUT), .PACKET_OUT(COPY_PACKET_OUT),
                .Send_out(COPY_Send_out), .Ack_out(COPY_Ack_out));

B_Stage B(.PACKET_IN(COPY_PACKET_OUT), .Send_in(COPY_Send_out), .Ack_in_a(M_Ack_out_IN), .Ack_in_b(C_Ack_out), .MR(MR), .PACKET_OUT(B_PACKET_OUT),
          .Send_out_a(B_Send_out_INTERNAL), .Send_out_b(B_Send_out_EXTERNAL), .Ack_out(B_Ack_out));

C c(.Send_in(B_Send_out_EXTERNAL), .Ack_in(Ack_in), .MR(MR), .Ack_out(C_Ack_out), .Send_out(Send_out), .CP(CP));

(* dont_touch = "true" *) reg [37:0] DL;
always @(posedge CP or posedge MR) begin
    if(MR)begin
        DL <= 38'b0;
    end
    else begin
        DL <= B_PACKET_OUT;
    end
end

assign PACKET_OUT = DL;
endmodule