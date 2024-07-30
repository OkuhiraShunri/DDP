`timescale 1ns/1ns
module  FP(MR,Send_in,Ack_in,DEL,PACKET_IN,Send_out,Ack_out,WRITE_EN,WRITE_DATA,PACKET_OUT,LOAD_FLG);
    `include "common_param.vh"
    input   MR;
    input   Send_in;
    input   Ack_in;
    input   DEL;
    input   [61:0]  PACKET_IN;

    output  Send_out;
    output  Ack_out;
    output  WRITE_EN;
    output  [15:0]  WRITE_DATA;
    output  [39:0]  PACKET_OUT;
    output  LOAD_FLG;


    //信号宣言部
    wire    cp;
    wire    [29:0]  ALU_PACKET_IN;
    wire    [15:0]  DataL;
    wire    [15:0]  DataR;


    reg [61:0]  d;
    //CE素子
    
    CE  ce2(.MR(MR),.Send_in(Send_in),.Ack_in(Ack_in),.exb(DEL),.Send_out(Send_out),.Ack_out(Ack_out),.cp(cp));

    //DL
    
    always@(cp | MR) begin
        if(MR)
            d   <=  62'b0;
        else
            d   <=  PACKET_IN;
    end

    //ALU
    assign  ALU_PACKET_IN   =   d[61:32];
    assign  DataL           =   d[31:16];
    assign  DataR           =   d[15:0];

    function    [57:0]  ALU(input   [15:0]  DataL,DataR,input   [29:0]  ALU_PACKET_IN);
        case(ALU_PACKET_IN[7:2])
            //Arithmetic and logic operations
            //`ADD:
            6'b000000:
                begin
                    {ALU[17],ALU[15:0]} =   {1'b0,DataL} + {1'b0,DataR};
                    if({ALU[17],ALU[15:0]} == 17'b0) begin
                        ALU[16] =   1'b1;
                    end
                    else    begin
                        ALU[16] =   1'b0;
                    end
                end
            //`ADDC:
            6'b000001:
                begin
                    {ALU[17],ALU[15:0]} =   {1'b0,DataL} + {1'b0,DataR};
                    if({ALU[17],ALU[15:0]} == 17'b0) begin
                        ALU[16] =   1'b1;
                    end
                    else    begin
                        ALU[16] =   1'b0;
                    end
                end
            //`SUB:
            6'b000010:
                begin
                    {ALU[17],ALU[15:0]} =   {1'b0,DataL} - {1'b0,DataR};
                    if({ALU[17],ALU[15:0]} == 17'b0) begin
                        ALU[16] =   1'b1;
                    end
                    else    begin
                        ALU[16] =   1'b0;
                    end
                end
            //`SUBC:
            6'b000011:
                begin
                    {ALU[17],ALU[15:0]} =   {1'b0,DataL} - {1'b0,DataR};
                    if({ALU[17],ALU[15:0]} == 17'b0) begin
                        ALU[16] =   1'b1;
                    end
                    else    begin
                        ALU[16] =   1'b0;
                    end
                end
            //`AND:
            6'b000100:
                begin
                    ALU[17]     =   1'b0;
                    ALU[15:0]   =   (DataL  &   DataR);
                    if({ALU[17],ALU[15:0]} == 17'b0) begin
                        ALU[16] =   1'b1;
                    end
                    else    begin
                        ALU[16] =   1'b0;
                    end
                end
            //`OR:
            6'b000101:
                begin
                    ALU[17]     =   1'b0;
                    ALU[15:0]   =   (DataL  |   DataR);
                    if({ALU[17],ALU[15:0]} == 17'b0) begin
                        ALU[16] =   1'b1;
                    end
                    else    begin
                        ALU[16] =   1'b0;
                    end
                end
            //`XOR:
            6'b000110:
                begin
                    ALU[17]     =   1'b0;
                    ALU[15:0]   =   (DataL  ^   DataR);
                    if({ALU[17],ALU[15:0]} == 17'b0) begin
                        ALU[16] =   1'b1;
                    end
                    else    begin
                        ALU[16] =   1'b0;
                    end
                end
            //`MUL:
            6'b000111:
                begin
                end
            //Shift instruction
            //`SHL:
            6'b001000:
                begin
                    ALU[15:0]   =   DataL   <<      DataR[3:0];
                end
            //`SHR:
            6'b001001:
                begin
                    ALU[15:0]   =   DataL   >>      DataR[3:0];
                end
            //`ROL:
            6'b001010:
                begin
                    ALU[15:0]   =   DataL   <<<      DataR[3:0];
                end
            //`ROR:
            6'b001011:
                begin
                    ALU[15:0]   =   DataL   >>>      DataR[3:0];
                end
            
            //Conditional branch instruction
            //ALU_PACKET_IN[0]  =   Z;
            //ALU_PACKET_IN[1]  =   C;
            //ALU_PACKET_IN[]
            //ALU[21:20]        =   LR2;
            //ALU[57]           =   WRITE_EN;
            //ALU[56]           =   LOAD_FLG;
            //ALU[55:40]        =   WRITE_DATA;
            //`BZ:
            6'b010000:
                begin
                    if(ALU_PACKET_IN[0]) begin
                        ALU[28:22]  =   ALU_PACKET_IN[18:12]    +   7'd1;
                        ALU[21:20]  =   {ALU_PACKET_IN[10],ALU_PACKET_IN[11]};
                    end
                    else if((ALU_PACKET_IN[0] == 1'b0)) begin
                        ALU[28:22]  =   ALU_PACKET_IN[18:12];
                    end
                end
            //`BNZ:
            6'b010001:
                begin
                    if(ALU_PACKET_IN[0]) begin
                        ALU[28:22]  =   ALU_PACKET_IN[20:12];
                    end
                    else if((ALU_PACKET_IN[0] == 1'b0)) begin
                        ALU[28:22]  =   ALU_PACKET_IN[18:12]    +   7'd1;
                        ALU[21:20]  =   {ALU_PACKET_IN[10],ALU_PACKET_IN[11]};
                    end
                end
            //`BC:
            6'b010010:
                begin
                    if(ALU_PACKET_IN[1]) begin
                        ALU[28:22]  =   ALU_PACKET_IN[18:12]    +   7'd1;
                        ALU[21:20]  =   {ALU_PACKET_IN[10],ALU_PACKET_IN[11]};
                    end
                    else if((ALU_PACKET_IN[1] == 1'b0)) begin
                        ALU[28:22]  =   ALU_PACKET_IN[18:12];
                    end
                end
            //`BNC:
            6'b010011:
                begin
                    if(ALU_PACKET_IN[1]) begin
                        ALU[28:22]  =   ALU_PACKET_IN[18:12];
                    end
                    else if((ALU_PACKET_IN[1] == 1'b0)) begin
                        ALU[28:22]  =   ALU_PACKET_IN[18:12]    +   7'd1;
                        ALU[21:20]  =   {ALU_PACKET_IN[10],ALU_PACKET_IN[11]};
                    end
                end
            //`BZL:
            6'b011000:
                begin
                    if(ALU_PACKET_IN[11] == 1'b0)begin
                        if(ALU_PACKET_IN[0]) begin
                        ALU[28:22]  =   ALU_PACKET_IN[18:12]    +   7'd1;
                        ALU[21:20]  =   {ALU_PACKET_IN[10],ALU_PACKET_IN[11]};
                        end
                        else if((ALU_PACKET_IN[0] == 1'b0)) begin
                            ALU[28:22]  =   ALU_PACKET_IN[20:12];
                        end
                    end
                end
            //`BNZL:
            6'b011001:
                begin
                    if(ALU_PACKET_IN[11] == 1'b0)begin
                        if(ALU_PACKET_IN[0]) begin
                        ALU[28:22]  =   ALU_PACKET_IN[18:12];
                        end
                        else if((ALU_PACKET_IN[0] == 1'b0)) begin
                            ALU[28:22]  =   ALU_PACKET_IN[18:12]    +   7'd1;
                            ALU[21:20]  =   {ALU_PACKET_IN[10],ALU_PACKET_IN[11]};
                        end
                    end
                end
            //Load and store instruction
            //`LDM:
            6'b100000:
                begin
                    ALU[16]     =   ALU_PACKET_IN[0];
                    ALU[17]     =   ALU_PACKET_IN[1];
                    ALU[15:0]   =   DataL   +   DataR;
                    ALU[56]     =   1'b1;
                end
            //`STM:
            6'b100001:
                begin
                    ALU[16]     =   ALU_PACKET_IN[0];
                    ALU[17]     =   ALU_PACKET_IN[1];
                    ALU[55:40]  =   DataL;
                    ALU[15:0]   =   DataR;
                    ALU[57]     =   1'b1;
                end
            //Identifier change instruction
            //`CHGCOL:
            6'b101001:
                begin
                    ALU[39:37]  =   DataR[2:0];
                end
            //`ADDGEN:
            6'b101010:
                begin
                    ALU[36:29]  =   ALU_PACKET_IN[26:19]    +   $signed(DataR[7:0]);
                end
            //`DECGEN:
            6'b101110:
                begin
                    ALU[36:29]  =   ALU_PACKET_IN[26:19]    -   DataL[7:0];
                end   
            //other instruction
            //Packet erasing instructions
            //`ABSORB:
            6'b111111:
                begin
                    {ALU[57:18],ALU[15:0]}  =   56'b0;
                    ALU[17:16]  =   ALU_PACKET_IN[1:0];
                end
            default:
                ALU =   58'b0;
        endcase
    endfunction
endmodule