(* dont_touch = "true" *)
module BTN_IN(
    input   CLK, RST, Ack_out_DDP, Send_out_DDP,
    input   [3:0]  nBIN,
    output  reg  [3:0] BOUT,
    output    [1:0] LED
);
(* dont_touch = "true" *) reg [21:0] cnt;

(* dont_touch = "true" *) wire en40hz = (cnt==22'd3125000-1);

always @(posedge CLK) begin
    if (RST)
        cnt = 22'b0;
    else if (en40hz)
        cnt = 22'b0;
    else
        cnt = cnt + 22'b1;
end

/* ボタン入力をFF2個で受ける*/
(* dont_touch = "true" *) reg [3:0] ff1, ff2;

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
(* dont_touch = "true" *) wire[3:0] tempP;
(* dont_touch = "true" *) wire[3:0] tempN;


/*念のためFFで受ける（？）*/
// always @( posedge CLK) begin
//     if(RST)
//         BOUT = 4'b1100;
//     else
//         BOUT = temp;
// end

assign tempP = ff1 & ~ff2 & {4{en40hz}};
assign tempN = ~ff1 & ff2 & {4{en40hz}};

(* dont_touch = "true" *) reg [3:0] up, down;    
always @(posedge CLK or posedge RST) begin
    if (RST) begin
        up <= 3'b0;
        down<= 3'b0;
    end
    else begin
        up <= tempP;
        down <= tempN;
    end
end

always @ (posedge CLK or posedge RST)begin
    if (RST) begin
        BOUT <= 4'b0;
    end
    else begin
        /* SWのnegedgeもしくはposedgeでTOUTを反転 */
        BOUT <= (down | up) ^ BOUT;
    end
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



assign LED[0] = Ack_out_DDP ? 0 : 1;
assign LED[1] = Send_out_DDP ? 0 : 1;

// always @(negedge Ack_out_DDP) begin
//     if(RST)begin
//         LED[0] = 1'b0; 
//     end
//     else if(Ack_out_DDP)begin
//         LED[0] = 1'b0;
//     end 
//     else begin
//         LED[0] = 1'b1;
//     end
// end

// always @(negedge Send_out_DDP) begin
//     if(RST)begin
//         LED[1] = 1'b0; 
//     end
//     else if(Send_out_DDP)begin
//         LED[1] = 1'b0;
//     end 
//     else begin
//         LED[1] = 1'b1;
//     end
// end
endmodule