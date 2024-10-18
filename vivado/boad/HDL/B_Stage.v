(* dont_touch = "true" *)
`include "macro.vh"
`include "common_macro.vh"
module B_Stage(
    input [37:0] PACKET_IN,
    input Send_in, Ack_in_a, Ack_in_b, MR, 
    output Send_out_a, Send_out_b, Ack_out,
    output [37:0] PACKET_OUT
);
(* dont_touch = "true" *) wire BR;
assign BR = PACKET_IN[18];
(* dont_touch = "true" *) CB cb(.CB_Send_in(Send_in), .CB_Ack_in_a(Ack_in_a), .CB_Ack_in_b(Ack_in_b), .MR(MR), .BR(BR), 
      .CB_Ack_out(Ack_out), .CB_Send_out_a(Send_out_a), .CB_Send_out_b(Send_out_b), .CB_CP(CP));

(* dont_touch = "true" *) reg SubPS [`SubPS_HEIGHT_SIZE];
integer i;
initial begin
    for (i = 0; i < `SubPS_HEIGHT; i = i + 1) begin
            SubPS[i] = 0;
    end    
   
    SubPS[0] = 0;
    SubPS[1] = 0;
    SubPS[2] = 0;
    SubPS[3] = 1;
    SubPS[4] = 0;
    SubPS[5] = 0;
    SubPS[6] = 1;
    SubPS[7] = 0;
    SubPS[8] = 0;
    SubPS[9] = 0;
    SubPS[10] = 1;
    SubPS[11] = 1;
    SubPS[12] = 0;
    SubPS[13] = 0;
    SubPS[14] = 0;
    SubPS[15] = 1;
end

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
(* dont_touch = "true" *) reg MF;
(* dont_touch = "true" *) wire [6:0] dest;
assign dest = PACKET_IN[26:20];
always @(posedge CP or posedge MR) begin
    if(MR)begin
        // for (i = 0; i < 64; i = i + 1) begin
        //     SubPS[i] = 0;
        // end    
    end
    else begin
        MF <= SubPS[dest];
    end
end

//merge
assign PACKET_OUT = {DL[37:19], MF, DL[17:0]}; 
(* dont_touch = "true" *) wire [6:0] dest_B;
assign dest_B = PACKET_OUT[26:20];
endmodule