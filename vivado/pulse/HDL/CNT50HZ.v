module CNT50HZ (
    input CLK, RST,
    output EN50HZ
);
reg [25:0] cnt;
always @(posedge CLK)begin
    if(RST)
        cnt <= 26'b0;
    else if(EN50HZ) 
        cnt <= 26'b0;
    else
        cnt <= cnt + 26'b1;
end
assign EN50HZ = (cnt == 26'd10);
//assign EN50HZ = 1'b1;
endmodule