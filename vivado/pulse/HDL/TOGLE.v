module TOGLE(
    input CLK, RST, 
    output TOGLE
);

reg [25:0] cnt;
always @(posedge CLK)begin
    if(RST)
        cnt <= 26'b0;
    else if(en50hz) 
        cnt <= 26'b0;
    else
        cnt <= cnt + 26'b1;
end
wire en50hz = (cnt == 26'd10);

reg togle = 0;
always @(posedge en50hz) begin
    if(RST)begin
        togle <= 1'b0;
    end
    else if(togle)begin
        togle <= 1'b0;
    end
    else begin
        togle <= 1'b1;
    end
end

assign TOGLE = togle;
endmodule