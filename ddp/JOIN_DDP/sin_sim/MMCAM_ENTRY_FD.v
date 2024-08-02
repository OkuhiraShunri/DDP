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

assign FIRE = ((color_gen_dest_LR[`MMCAM_ENTRY_CGD] == ENTRY[`MMCAM_ENTRY_CGD]) &&
                 (color_gen_dest_LR[`MMCAM_ENTRY_LR] != ENTRY[`MMCAM_ENTRY_LR]) && VALID == 1'b1)? 1'b1: 1'b0;

endmodule