`include "common_macro.vh"
module MMCAM_Stage (
    input Send_in, Ack_in, MR,
    input [`MMCAM_PACKET_SIZE] PACKET_IN,
    output Send_out, Ack_out, DEL, WR_E,
    output [`MMRAM_ADDR_SIZE] ADDR,
    output [`MMCAM_PACKET_SIZE] PACKET_OUT
);
/////////////////reg [18:0] ENTRY[0:MMRAM_SIZE-1];    この方法ではアドレスの計算が複雑になるため厳しい...??
/////////////////すべて完成後にfor文で行えないのか検討してみる
wire CP, MachingFlag;
wire [`MMCAM_ENTRY_SIZE] color_gen_dest_LR;
wire [`MMCAM_EFV_SIZE] EN, FIRE, VALID;

C C2 (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), .CP(CP));

assign MachingFlag = PACKET_IN[`MMCAM_PACKET_MF];
assign color_gen_dest_LR = PACKET_IN[`MMCAM_PACKET_CGDL];
assign PACKET_OUT = (CP)? PACKET_IN: PACKET_OUT;


MMCAM_AM_OR_MA AM_OR_MA (.MR(MR), .CP(CP), .MachingFlag(MachingFlag), .FIRE(FIRE), .VALID(VALID), .WR_E(WR_E), .DEL(DEL), .ADDR(ADDR), .EN(EN));

MMCAM_ENTRY_FD EF0 (.EN(EN[0]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[0]), .VALID(VALID[0]));
MMCAM_ENTRY_FD EF1 (.EN(EN[1]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[1]), .VALID(VALID[1]));
MMCAM_ENTRY_FD EF2 (.EN(EN[2]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[2]), .VALID(VALID[2]));
MMCAM_ENTRY_FD EF3 (.EN(EN[3]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[3]), .VALID(VALID[3]));
MMCAM_ENTRY_FD EF4 (.EN(EN[4]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[4]), .VALID(VALID[4]));
MMCAM_ENTRY_FD EF5 (.EN(EN[5]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[5]), .VALID(VALID[5]));
MMCAM_ENTRY_FD EF6 (.EN(EN[6]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[6]), .VALID(VALID[6]));
MMCAM_ENTRY_FD EF7 (.EN(EN[7]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[7]), .VALID(VALID[7]));
MMCAM_ENTRY_FD EF8 (.EN(EN[8]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[8]), .VALID(VALID[8]));
MMCAM_ENTRY_FD EF9 (.EN(EN[9]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[9]), .VALID(VALID[9]));
MMCAM_ENTRY_FD EF10 (.EN(EN[10]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[10]), .VALID(VALID[10]));
MMCAM_ENTRY_FD EF11 (.EN(EN[11]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[11]), .VALID(VALID[11]));
MMCAM_ENTRY_FD EF12 (.EN(EN[12]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[12]), .VALID(VALID[12]));
MMCAM_ENTRY_FD EF13 (.EN(EN[13]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[13]), .VALID(VALID[13]));
MMCAM_ENTRY_FD EF14 (.EN(EN[14]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[14]), .VALID(VALID[14]));
MMCAM_ENTRY_FD EF15 (.EN(EN[15]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[15]), .VALID(VALID[15]));
MMCAM_ENTRY_FD EF16 (.EN(EN[16]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[16]), .VALID(VALID[16]));
MMCAM_ENTRY_FD EF17 (.EN(EN[17]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[17]), .VALID(VALID[17]));
MMCAM_ENTRY_FD EF18 (.EN(EN[18]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[18]), .VALID(VALID[18]));
MMCAM_ENTRY_FD EF19 (.EN(EN[19]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[19]), .VALID(VALID[19]));
MMCAM_ENTRY_FD EF20 (.EN(EN[20]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[20]), .VALID(VALID[20]));
MMCAM_ENTRY_FD EF21 (.EN(EN[21]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[21]), .VALID(VALID[21]));
MMCAM_ENTRY_FD EF22 (.EN(EN[22]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[22]), .VALID(VALID[22]));
MMCAM_ENTRY_FD EF23 (.EN(EN[23]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[23]), .VALID(VALID[23]));
MMCAM_ENTRY_FD EF24 (.EN(EN[24]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[24]), .VALID(VALID[24]));
MMCAM_ENTRY_FD EF25 (.EN(EN[25]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[25]), .VALID(VALID[25]));
MMCAM_ENTRY_FD EF26 (.EN(EN[26]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[26]), .VALID(VALID[26]));
MMCAM_ENTRY_FD EF27 (.EN(EN[27]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[27]), .VALID(VALID[27]));
MMCAM_ENTRY_FD EF28 (.EN(EN[28]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[28]), .VALID(VALID[28]));
MMCAM_ENTRY_FD EF29 (.EN(EN[29]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[29]), .VALID(VALID[29]));
MMCAM_ENTRY_FD EF30 (.EN(EN[30]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[30]), .VALID(VALID[30]));
MMCAM_ENTRY_FD EF31 (.EN(EN[31]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[31]), .VALID(VALID[31]));
MMCAM_ENTRY_FD EF32 (.EN(EN[32]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[32]), .VALID(VALID[32]));
MMCAM_ENTRY_FD EF33 (.EN(EN[33]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[33]), .VALID(VALID[33]));
MMCAM_ENTRY_FD EF34 (.EN(EN[34]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[34]), .VALID(VALID[34]));
MMCAM_ENTRY_FD EF35 (.EN(EN[35]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[35]), .VALID(VALID[35]));
MMCAM_ENTRY_FD EF36 (.EN(EN[36]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[36]), .VALID(VALID[36]));
MMCAM_ENTRY_FD EF37 (.EN(EN[37]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[37]), .VALID(VALID[37]));
MMCAM_ENTRY_FD EF38 (.EN(EN[38]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[38]), .VALID(VALID[38]));
MMCAM_ENTRY_FD EF39 (.EN(EN[39]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[39]), .VALID(VALID[39]));
MMCAM_ENTRY_FD EF40 (.EN(EN[40]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[40]), .VALID(VALID[40]));
MMCAM_ENTRY_FD EF41 (.EN(EN[41]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[41]), .VALID(VALID[41]));
MMCAM_ENTRY_FD EF42 (.EN(EN[42]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[42]), .VALID(VALID[42]));
MMCAM_ENTRY_FD EF43 (.EN(EN[43]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[43]), .VALID(VALID[43]));
MMCAM_ENTRY_FD EF44 (.EN(EN[44]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[44]), .VALID(VALID[44]));
MMCAM_ENTRY_FD EF45 (.EN(EN[45]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[45]), .VALID(VALID[45]));
MMCAM_ENTRY_FD EF46 (.EN(EN[46]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[46]), .VALID(VALID[46]));
MMCAM_ENTRY_FD EF47 (.EN(EN[47]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[47]), .VALID(VALID[47]));
MMCAM_ENTRY_FD EF48 (.EN(EN[48]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[48]), .VALID(VALID[48]));
MMCAM_ENTRY_FD EF49 (.EN(EN[49]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[49]), .VALID(VALID[49]));
MMCAM_ENTRY_FD EF50 (.EN(EN[50]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[50]), .VALID(VALID[50]));
MMCAM_ENTRY_FD EF51 (.EN(EN[51]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[51]), .VALID(VALID[51]));
MMCAM_ENTRY_FD EF52 (.EN(EN[52]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[52]), .VALID(VALID[52]));
MMCAM_ENTRY_FD EF53 (.EN(EN[53]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[53]), .VALID(VALID[53]));
MMCAM_ENTRY_FD EF54 (.EN(EN[54]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[54]), .VALID(VALID[54]));
MMCAM_ENTRY_FD EF55 (.EN(EN[55]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[55]), .VALID(VALID[55]));
MMCAM_ENTRY_FD EF56 (.EN(EN[56]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[56]), .VALID(VALID[56]));
MMCAM_ENTRY_FD EF57 (.EN(EN[57]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[57]), .VALID(VALID[57]));
MMCAM_ENTRY_FD EF58 (.EN(EN[58]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[58]), .VALID(VALID[58]));
MMCAM_ENTRY_FD EF59 (.EN(EN[59]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[59]), .VALID(VALID[59]));
MMCAM_ENTRY_FD EF60 (.EN(EN[60]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[60]), .VALID(VALID[60]));
MMCAM_ENTRY_FD EF61 (.EN(EN[61]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[61]), .VALID(VALID[61]));
MMCAM_ENTRY_FD EF62 (.EN(EN[62]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[62]), .VALID(VALID[62]));
MMCAM_ENTRY_FD EF63 (.EN(EN[63]), .CP(CP), .MR(MR), .color_gen_dest_LR(color_gen_dest_LR), .FIRE(FIRE[63]), .VALID(VALID[63]));

endmodule