module COPY_Stage(
    input Send_in, Ack_in, MR,
    input [39:0] PACKET_IN,
    output Send_out, Ack_out,
    output [37:0] PACKET_OUT
);

wire EXB;
assign EXB = 1'b1;//EXBはつかわないので1のまま
wire CP, FEB;
CX2 cx2(.Send_in(Send_in), .Ack_in(Ack_in), .CPY(PACKET_IN[18]), .EXB(EXB), .MR(MR), .Ack_out(Ack_out), .Send_out(Send_out), .CP(CP), .FEB(FEB));

//DLの更新
reg [39:0] DL;
always @(posedge CP or posedge MR) begin
    if(MR)begin
        DL <= 40'b0;
    end
    else begin
        DL <= PACKET_IN;
    end
end


//mux1
wire [6:0] dest;
assign dest = DL[28:22];
wire [6:0] ADDER;
assign ADDER = dest + 7'b1;
wire [6:0] mux1;//mux1の出力はdestまたはdest+1
assign mux1 = FEB ? ADDER : dest;

//mux2 
wire mux2;//mux2の出力はLRフラグ
assign mux2 = FEB ? DL[20] : DL[21];//DL[20]はコピーしたパケットを次のノードへ入力する際に左右どちらにするか決めるもの。DL[21]はオリジナルパケットを次のノードへ入力する際に左右どちらにするか決めるもの。

//merge
assign PACKET_OUT = {DL[37:27], mux1, mux2, DL[19], DL[17:0]}; 

endmodule