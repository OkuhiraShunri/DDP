(* dont_touch = "true" *)
//`include "macro.vh"
`include "common_macro.vh"
module ENTRY_FD(
    input EN, CP, MR,
    input [`CGDL_SIZE] COLOR_GEN_DEST_LR,
    output VALID, FIRE
);

(* dont_touch = "true" *) reg [`MMCAM_ENTRY_SIZE] ENTRY = `MMCAM_ENTRY_WIDTH'b0;
(* dont_touch = "true" *) reg VALID_reg = 0;
always @(posedge CP or posedge MR)begin
    if(MR)begin
        VALID_reg <= 0;
    end
    else if(EN)begin//書き込み許可
        ENTRY = COLOR_GEN_DEST_LR;//取り込む
        VALID_reg = 1;//待ち合わせ中
    end
    else if(FIRE)begin
        VALID_reg = 0;
    end
end

//output 
assign VALID = VALID_reg;
assign FIRE = (((ENTRY[18:1] == COLOR_GEN_DEST_LR[18:1]) && (ENTRY[0] != COLOR_GEN_DEST_LR[0])) && VALID) ? 1 : 0;//発火判定　組み合わせ回路
endmodule