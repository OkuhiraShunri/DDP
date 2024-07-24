`include "common_macro.vh"
module MMCAM_ENTRY_FD (
    input EN, CP, MR,
    input [`MMCAM_ENTRY_SIZE] color_gen_dest_LR,
    output FIRE,
    output reg VALID
);
reg [`MMCAM_ENTRY_SIZE] ENTRY;

/* ENTRY, VALID の更新処理 */
always @(posedge MR or posedge CP) begin
   if (MR) begin
        ENTRY <= `MMCAM_ENTRY_WIDTH'b0;
        VALID <= 1'b0;
   end 
   else if (CP & EN) begin
        ENTRY <= color_gen_dest_LR;
        VALID <= 1'b1;
   end else if (FIRE) begin
        VALID <= 1'b0;
   end
end

//////////////************VALIDの初期化は必要．VALIDとENのお互いがお互いを頼っていて不定値のデッドロック状態...?************////////////////
// ただし，wireにinitial文を適用することはできない．そのため，MMCAM_AM_OR_MAにて，EN[0]をdefaultで（valid==1'bxのとき）1にしておく必要がある．
//assign VALID = (CP & EN)? 1'b1: (FIRE)? 1'b0: VALID;
assign FIRE = ((color_gen_dest_LR[`MMCAM_ENTRY_CGD] == ENTRY[`MMCAM_ENTRY_CGD]) &&
                 (color_gen_dest_LR[`MMCAM_ENTRY_LR] != ENTRY[`MMCAM_ENTRY_LR]) && VALID == 1'b1)? 1'b1: 1'b0;

endmodule