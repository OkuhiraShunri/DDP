(* dont_touch = "true" *)
`include "macro.vh"
module FP(MR, Send_in, Ack_in, DEL, PACKET_IN, Ack_out, Send_out, WRITE_EN, WRITE_DATA, PACKET_OUT, LOAD_FLG);
    /*** port ***/
    input MR;
    input Send_in, Ack_in; 
    input DEL;
    input [`FP_PACKET_SIZE-1:0] PACKET_IN;
    output Ack_out, Send_out;
    output WRITE_EN;
    output [`Data_LENGTH-1:0] WRITE_DATA;
    output [`MA_PACKET_SIZE-1:0] PACKET_OUT;
    output LOAD_FLG;

    /*** netlist ***/
    (* dont_touch = "true" *) reg [`FP_PACKET_SIZE-1:0] DL;
    (* dont_touch = "true" *) wire CP;
    (* dont_touch = "true" *) wire [`color_LENGTH-1:0]color;
    (* dont_touch = "true" *) wire [`gen_LENGTH-1:0] gen;
    (* dont_touch = "true" *) wire [`dest_LENGTH-1:0] dest;
    (* dont_touch = "true" *) wire [`LR2_LENGTH-1:0] LR2;
    (* dont_touch = "true" *) wire BR;
    (* dont_touch = "true" *) wire CPY;
    (* dont_touch = "true" *) wire [`OPC_LENGTH-1:0] OPC;
    (* dont_touch = "true" *) wire C;
    (* dont_touch = "true" *) wire Z;
    (* dont_touch = "true" *) wire [`Data_LENGTH-1:0] DataL, DataR;

    /*** circuit ***/
    always @(posedge CP, posedge MR) begin
        if (MR) begin
            DL <= `FP_PACKET_SIZE'b0;
        end else begin
            DL <= PACKET_IN;
        end
    end

    assign {DataL, DataR} = DL[31:0];
    assign {color, gen, dest, LR2, BR, CPY, OPC, C, Z} = DL[61:32];
    assign {WRITE_EN, WRITE_DATA, PACKET_OUT, LOAD_FLG} = ALU(color, gen, dest, LR2, BR, CPY, OPC, C, Z, DataL, DataR);

    function [`ALU_LENGTH-1:0] ALU;
        input [`color_LENGTH-1:0]color;
        input [`gen_LENGTH-1:0] gen;
        input [`dest_LENGTH-1:0] dest;
        input [`LR2_LENGTH-1:0] LR2;
        input BR;
        input CPY;
        input [`OPC_LENGTH-1:0]OPC;
        input C;
        input Z;
        input [`Data_LENGTH-1:0] DataL, DataR;

        reg [`Data_LENGTH-1:0] carry, result;

        case (OPC)
            `ADD:       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            {ALU[`ALU_C], ALU[`ALU_PACKET_ResultData]} = DataL + DataR;
                            ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
                        end
            `ADDC:      begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            {ALU[`ALU_C], ALU[`ALU_PACKET_ResultData]} = DataL + DataR + C;
                            ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
                        end
            `SUB:       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL - DataR;
                            ALU[`ALU_C] = (DataL < DataR)? 1'b1 : 1'b0;
                            ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
                        end
            `SUBC:      begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL - DataR - C;
                            ALU[`ALU_C] = (DataL < DataR)? 1'b1 : 1'b0;
                            ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
                        end
            `AND:       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL & DataR;
                            ALU[`ALU_C] = 1'b0;
                            ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
                        end
            `OR :       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL | DataR;
                            ALU[`ALU_C] = 1'b0;
                            ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
                        end
            `XOR:       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL ^ DataR;
                            ALU[`ALU_C] = 1'b0;
                            ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
                        end
            `MUL:       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL * DataR;
                            ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
                        end
            `SHL:       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL << DataR;
                            ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
                        end
            `SHR:       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL >> DataR;
                            ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
                        end
            `ROL:       begin
                            {carry, result} = (DataL << DataR);
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = carry | result;
                            ALU[`ALU_C] = 1'b0;
                            ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
                        end                
            `ROR:       begin
                            {carry, result} = (DataL >> DataR);
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = carry | result;
                            ALU[`ALU_C] = 1'b0;
                            ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
                        end
            `BZ:        begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, (Z)? dest+`dest_LENGTH'b1 : dest, (Z)?{LR2[0], LR2[1]} : {LR2[1], LR2[0]}, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL;
                            ALU[`ALU_C] = C;
                            ALU[`ALU_Z] = Z;
                        end
            `BNZ:       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, (Z)? dest : dest+`dest_LENGTH'b1, (Z)?{LR2[1], LR2[0]} : {LR2[0], LR2[1]}, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL;
                            ALU[`ALU_C] = C;
                            ALU[`ALU_Z] = Z;
                        end
            `BC:        begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, (C)? dest+`dest_LENGTH'b1 : dest, (C)?{LR2[0], LR2[1]} : {LR2[1], LR2[0]}, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL;
                            ALU[`ALU_C] = C;
                            ALU[`ALU_Z] = Z;
                        end
            `BNC:       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, (C)? dest : dest+`dest_LENGTH'b1, (C)?{LR2[1], LR2[0]} : {LR2[0], LR2[1]}, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL;
                            ALU[`ALU_C] = C;
                            ALU[`ALU_Z] = Z;
                        end
            `BZL:       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, (Z)? dest+`dest_LENGTH'b1 : dest, (Z)?{LR2[0], LR2[1]} : {LR2[1], LR2[0]}, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL;
                            ALU[`ALU_C] = C;
                            ALU[`ALU_Z] = Z;
                        end  
            `BNZL:      begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, (Z)? dest : dest+`dest_LENGTH'b1, (Z)?{LR2[1], LR2[0]} : {LR2[0], LR2[1]}, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL;
                            ALU[`ALU_C] = C;
                            ALU[`ALU_Z] = Z;
                        end
            `LDM:       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b1};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL + DataR;
                            ALU[`ALU_C] = C;
                            ALU[`ALU_Z] = Z;
                        end        
            `STM:       begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b1, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataR;
                            ALU[`ALU_C] = C;
                            ALU[`ALU_Z] = Z;
                        end

            `ABSORB:        ALU = `ALU_LENGTH'b0;
            `CHGCOL:    begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {DataR, gen, dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL;
                            ALU[`ALU_C] = C;
                            ALU[`ALU_Z] = Z;
                        end
            `ADDGEN:    begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, ($signed(gen) + $signed(DataR)), dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL;
                            ALU[`ALU_C] = C;
                            ALU[`ALU_Z] = Z;
                        end
            `DECGEN:    begin
                            {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                            ALU[`ALU_color_to_CPY] = {color, (gen - `gen_LENGTH'b1), dest, LR2, BR, CPY};
                            ALU[`ALU_PACKET_ResultData] = DataL;
                            ALU[`ALU_C] = C;
                            ALU[`ALU_Z] = Z;
                        end
            default:    ALU = {`ALU_LENGTH{1'bx}};
        endcase
    endfunction

    /*** module ***/
    CE ce(.MR(MR), .exb(DEL), .Send_in(Send_in), .Ack_in(Ack_in), .Send_out(Send_out), .Ack_out(Ack_out), .cp(CP));
endmodule