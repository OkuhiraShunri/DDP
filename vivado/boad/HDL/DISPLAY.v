(* dont_touch = "true" *)
`include "common_macro.vh"
module DISPLAY(
    input CLK, RST, 
    input [`B_PACKET_SIZE] PACKET_OUT,
    output reg [6:0] nHEX
);

//50Hz counter 
reg [25:0] cnt;
always @(posedge CLK)begin
    if(RST)
        cnt <= 26'b0;
    else if(en50hz) 
        cnt <= 26'b0;
    else
        cnt <= cnt + 26'b1;
end
wire en50hz = (cnt == 26'd);

wire TOUT = 0;
// この方法では，SWを下げRSTしてから使い始める必要がある．
always @ (posedge CLK or posedge RST)begin
    if (RST) begin
        TOUT <= 1'b0;
    end
    else begin
        /* SWのnegedgeもしくはposedgeでTOUTを反転 */
        TOUT <= (TINN | TINP) ^ TOUT;
    end
end
endmodule