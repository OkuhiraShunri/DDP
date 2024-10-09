(* dont_touch = "true" *)
`include "macro.vh"
module B_Stage(
    input [37:0] PACKET_IN,
    input Send_in, Ack_in_a, Ack_in_b, MR, 
    output Send_out_a, Send_out_b, Ack_out,
    output [37:0] PACKET_OUT
);
(* dont_touch = "true" *) wire BR;
assign BR = PACKET_IN[18];
CB cb(.CB_Send_in(Send_in), .CB_Ack_in_a(Ack_in_a), .CB_Ack_in_b(Ack_in_b), .MR(MR), .BR(BR), 
      .CB_Ack_out(Ack_out), .CB_Send_out_a(Send_out_a), .CB_Send_out_b(Send_out_b), .CB_CP(CP));

// (* dont_touch = "true" *) reg SubPS [0:63];
// integer i;
// initial begin
//     for (i = 0; i < 64; i = i + 1) begin
//             SubPS[i] = 0;
//     end    
//     //sim用に値を格納
//     SubPS[1] = 1;
//     SubPS[2] = 1;
//     SubPS[3] = 1;
//     SubPS[4] = 1;
//     SubPS[5] = 0;
//     SubPS[6] = 0;
//     SubPS[7] = 1;
//     SubPS[8] = 0;
//     SubPS[9] = 0;
//     // SubPS[10] = 0;
//     // SubPS[11] = 0;
//     // SubPS[12] = 1;
//     // SubPS[13] = 0;
//     // SubPS[14] = 0;
//     // SubPS[15] = 1;
//     // SubPS[50] = 0;
//     // SubPS[51] = 0;
//     // SubPS[60] = 0;
//     // SubPS[61] = 1;
//     SubPS[10] = 0;
//     SubPS[11] = 0;
//     SubPS[12] = 0;
//     SubPS[13] = 1;
//     SubPS[14] = 0;
//     SubPS[15] = 0;
//     SubPS[16] = 1;
//     SubPS[17] = 0;
//     SubPS[18] = 1;
//     SubPS[50] = 0;
//     SubPS[51] = 0;
//     SubPS[60] = 0;
//     SubPS[61] = 0;
// end

//DLの更新
(* dont_touch = "true" *) reg [37:0] DL;
always @(posedge CP or posedge MR) begin
    if(MR)begin
        DL <= 38'b0;
    end
    else begin
        DL <= PACKET_IN;
    end
end

//SubPSの読み出し
// (* dont_touch = "true" *) reg MF;
// (* dont_touch = "true" *) wire [6:0] dest;
// assign dest = PACKET_IN[26:20];
// always @(posedge CP or posedge MR) begin
//     if(MR)begin
//         // for (i = 0; i < 64; i = i + 1) begin
//         //     SubPS[i] = 0;
//         // end    
//     end
//     else begin
//         MF <= SubPS[dest];
//     end
// end

(* dont_touch = "true" *) wire MF;
(* dont_touch = "true" *) wire [6:0] dest;
assign dest = PACKET_IN[26:20];
SubPS subps(
    .clka(CP),    // input wire clka
    .addra(dest[5:0]),  // input wire [5 : 0] addra
    .douta(MF)  // output wire [0 : 0] douta
);

//merge
assign PACKET_OUT = {DL[37:19], MF, DL[17:0]}; 

endmodule