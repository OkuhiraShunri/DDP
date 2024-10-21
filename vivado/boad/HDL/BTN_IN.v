module BTN_IN(
    input   CLK, RST, Ack_out_DDP, Send_out_DDP,
    input   [3:0]  nBIN,
    output  reg  [3:0] BOUT,
    output  [1:0] LED
);
reg [20:0] cnt;

wire en40hz = (cnt==1250000-1);

always @(posedge CLK) begin
    if (RST)
        cnt = 21'b0;
    else if (en40hz)
        cnt = 21'b0;
    else
        cnt = cnt + 21'b1;
end

/* ボタン入力をFF2個で受ける*/
reg [3:0] ff1, ff2;

always @(posedge CLK)begin
    if (RST) begin
        ff2 = 4'b0;
        ff1 = 4'b0;
    end
    else if (en40hz) begin
        ff2 = ff1;
        ff1 = nBIN;
    end
end
/*ボタンを押すと0なので立ち下りを検出*/
wire[3:0] temp = ~ff1 & ff2 & {4{en40hz}};


/*念のためFFで受ける（？）*/
always @( posedge CLK) begin
    if(RST)
        BOUT = 4'b0;
    else
        BOUT = temp;
end

// always @* begin
//     if(Send_out_DDP)begin
//         LED = 2'b01;
//     end
//     else if(Ack_out_DDP)begin
//         LED = 2'b10;
//     end
//     else begin
//         LED = 2'b00;
//     end
// end

always @(negedge Ack_out_DDP) begin
    if(RST)
end

endmodule