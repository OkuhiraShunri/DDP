`timescale 1ns/100ps
module BTN_IN_SIM();
reg CLK, RST, Ack_out_DDP, Send_out_DDP;
reg [3:0] BIN;
wire [3:0] BOUT;
wire [1:0] LED;
BTN_IN BTN_IN(.CLK(CLK), .RST(RST), .Ack_out_DDP(Ack_out_DDP), .Send_out_DDP(Send_out_DDP), 
              .nBIN(BIN), .BOUT(BOUT), .LED(LED));
always  begin
    CLK = 0;
#4 CLK = 1;
#4;
end

initial begin
        RST = 1;
#200    RST = 0;
end

// initial begin
//     BIN = 0;
// #274; //wait
// repeat(100)begin
//     #0.1 BIN[0] = ~BIN[0];
// end

// #10 BIN[0] = 0;
// end

initial begin
    BIN = 0;
#275 BIN[0] = 1;
#100   BIN[0] = 0; 
end

initial begin
    Ack_out_DDP = 1;
    Send_out_DDP = 1;
end
endmodule