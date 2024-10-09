(* dont_touch = "true" *)
`include "common_macro.vh"
module MMRAM_Stage(
    input WR_E, DEL, MR, Send_in, Ack_in,
    input [5:0] ADDR,
    input [37:0] PACKET_IN,
    output [51:0] PACKET_OUT,
    output Send_out, Ack_out
);

// (* dont_touch = "true" *) reg [19:0] RAM[0:63];
// (* dont_touch = "true" *) reg [15:0] CST_MEM[0:63];
// integer i;
// initial begin
//     for (i = 0; i < 64; i = i + 1) begin//RAM初期化
//             RAM[i] = 20'd0;
//     end
//     for (i = 0; i < 64; i = i + 1) begin//CST_MEM初期化
//             CST_MEM[i] = i + 1;
//     end
//     // CST_MEM[10] = 0;
//     // CST_MEM[11] = 1;
//     // CST_MEM[13] = 0;
//     // CST_MEM[14] = 1;
//     // CST_MEM[50] = 0;
//     // CST_MEM[51] = 1;
//     // CST_MEM[60] = 0;
//     CST_MEM[10] = 0;
//     CST_MEM[11] = 1;
//     CST_MEM[12] = 0;
//     CST_MEM[14] = 1;
//     CST_MEM[15] = 0;
//     CST_MEM[17] = 0;
//     CST_MEM[50] = 0;
//     CST_MEM[51] = 1;
//     CST_MEM[60] = 0;
//     CST_MEM[61] = 0;
// end
(* dont_touch = "true" *) wire CP;
(* dont_touch = "true" *) CE ce(.CE_Send_in(Send_in), .CE_Ack_in(Ack_in), .MR(MR), .Exb(DEL), .CE_Ack_out(Ack_out), .CE_Send_out(Send_out), .CE_CP(CP));

//---DLとRAMの書き込み処理---
(* dont_touch = "true" *) reg [37:0] DL;
(* dont_touch = "true" *) wire [19:0] DATA_IN;
assign DATA_IN = PACKET_IN[19:0];
always @(posedge CP or posedge MR) begin
    if(MR)begin
        DL <= 38'b0;
    end
    else begin
        DL <= PACKET_IN;
    end
end

//---RAMの読み出し処理---
// (* dont_touch = "true" *) reg [19:0] DATA_OUT;
// always @(posedge CP or posedge MR) begin
//     if(MR)begin
//         DATA_OUT <= 20'b0;
//     end
//     else begin
//         DATA_OUT <= RAM[ADDR];
//     end
// end

//---CST_MEMの読み出し処理(書き込みはしない)---
// (* dont_touch = "true" *) wire [6:0] dest;
// (* dont_touch = "true" *) assign dest = PACKET_IN[26:20];
// (* dont_touch = "true" *) reg [15:0] CST_DATA;
// always @(posedge CP or posedge MR) begin
//     if(MR)begin
//         CST_DATA <= 16'b0;
//     end
//     else begin
//         CST_DATA <= CST_MEM[dest];
//     end
// end
(* dont_touch = "true" *) wire [19:0] DATA_OUT;
(* dont_touch = "true" *) wire [6:0] dest;
(* dont_touch = "true" *) assign dest = PACKET_IN[26:20];
(* dont_touch = "true" *) wire [15:0] CST_DATA;
MMRAM mmram(
    .clka(CP),    // input wire clka
    .wea(WR_E),      // input wire [0 : 0] wea
    .addra(ADDR),  // input wire [5 : 0] addra
    .dina(DATA_IN),    // input wire [19 : 0] dina
    .douta(DATA_OUT)  // output wire [19 : 0] douta
);

CMEM cmem (
  .clka(CP),    // input wire clka
  .addra(dest[5:0]),  // input wire [5 : 0] addra
  .douta(CST_DATA)  // output wire [15 : 0] douta
);


//merge1
(* dont_touch = "true" *) wire [53:0] MERGE1_OUT; 
assign MERGE1_OUT[31:0] = {DL[15:0], DATA_OUT[15:0]};    //DATA結合
assign MERGE1_OUT[34:32] = (DL[19])? DL[18:16] : DATA_OUT[18:16];//DLのLRフラグが1(右)ならDLのCとZをMERGEに反映。逆にLRフラグが0(左)なら待ち合わせパケットのCとZをMERGEに反映。
assign MERGE1_OUT[35] = DL[19];  //LR
assign MERGE1_OUT[53:36] = DL[37:20];//color_gen_dest

//merge2
(* dont_touch = "true" *) wire [53:0] MERGE2_OUT;
assign MERGE2_OUT = {DL, CST_DATA};

//mux
(* dont_touch = "true" *) wire [53:0] MUX_OUT;
(* dont_touch = "true" *) wire MF;
assign MF = DL[18];
assign MUX_OUT = MF ? MERGE1_OUT : MERGE2_OUT; 

//output
assign PACKET_OUT = (MUX_OUT[`MMRAM_MUXOUT_LR])? {MUX_OUT[`MMRAM_MUXOUT_CGD], MUX_OUT[`MMRAM_MUXOUT_CZ], MUX_OUT[`MMRAM_MUXOUT_LWRDATA], MUX_OUT[`MMRAM_MUXOUT_UPRDATA]}: //LWRDATAはたぶん、RAMやCST_MEMからよんだデータでUPRDATAはDLからのデータ
                                                 {MUX_OUT[`MMRAM_MUXOUT_CGD], MUX_OUT[`MMRAM_MUXOUT_CZDD]};

endmodule