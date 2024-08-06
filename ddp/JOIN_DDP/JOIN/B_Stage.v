`include "macro.vh"
module B_Stage(
    input [37:0] PACKET_IN,
    input Send_in, Ack_in_a, Ack_in_b, MR, 
    output Send_out_a, Send_out_b, Ack_out,
    output [37:0] PACKET_OUT
);
wire BR;
assign BR = PACKET_IN[18];
CB cb(.CB_Send_in(Send_in), .CB_Ack_in_a(Ack_in_a), .CB_Ack_in_b(Ack_in_b), .MR(MR), .BR(BR), 
      .CB_Ack_out(Ack_out), .CB_Send_out_a(Send_out_a), .CB_Send_out_b(Send_out_b), .CB_CP(CP));

reg SubPS [0:63];
integer i;
initial begin
    for (i = 0; i < 64; i = i + 1) begin
            SubPS[i] = 0;
    end    
    //sim用に適当に値格納
    SubPS[1] = 1;
    SubPS[2] = 1;
end

//DLの更新
reg [37:0] DL;
always @(posedge CP or posedge MR) begin
    if(MR)begin
        DL <= 38'b0;
    end
    else begin
        DL <= PACKET_IN;
    end
end

//SubPSの読み出し
reg MF;
wire [6:0] dest;
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

endmodule