module PACKET_FETCH(
    input Send_in, RST,
    output [37:0] PACKET_OUT    
);

reg [37:0] PACKET [0:19];
integer i;
initial begin
    for (i = 0; i < 19; i = i + 1) begin
          PACKET[i] = 38'd0;
    end
    PACKET[0] = {3'b111, 8'b0, 7'd0, 1'b0, 1'b0, 1'b0, 1'b0, 16'd3};
    PACKET[1] = {3'b111, 8'b0, 7'd7, 1'b0, 1'b1, 1'b0, 1'b1, 16'd1};
    PACKET[2] = {3'b111, 8'b0, 7'd7, 1'b1, 1'b1, 1'b0, 1'b1, 16'd2};
    PACKET[3] = {3'b111, 8'b0, 7'd1, 1'b0, 1'b1, 1'b0, 1'b0, 16'd3};
end

reg [4:0] PC = 5'd0;
always @(posedge Send_in or posedge RST) begin
    if(RST)begin
        PC <= 5'd0;
    end
    else begin
        PC <= PC + 5'd1;
    end
end

reg [4:0] PC_2 = 5'd0;
always @(posedge Send_in or posedge RST) begin
    if(RST)begin
        PC_2 <= 5'd0;
    end
    else begin
        PC_2 <= PC;
    end
end
//PACKET_OUT = PACKET[PC]だと、たとえばPCが0のとき、すなわちPACKET_OUT = PACKET[0]の状態のときにSend_inが立ち上がると、PACKET[0]は出力されない。PC＋1も同時実行されるためPACKET[1]が出力される。
//PACKET_OUT = PACKET[0]のときにSend_inが立ち上がったらPACKET[0]を出力させたいし、PACKET_OUT = PACKET[1]のときにSend_inが立ち上がったらPACKET[1]を出力させたい。
//そのためにPC_2にインクリメント直前のPCの値をSend_inの立ち上がりに同期して読み込ませることで、PC=0のときPACKET[0], PC=1のときPACKET[1],,,と出力できた
assign PACKET_OUT = PACKET[PC_2]; 
endmodule