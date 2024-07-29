`include "common_macro.vh"
module FP_Stage (
    input Send_in, Ack_in, MR, DEL,
    input [`FP_PACKIN_SIZE] PACKET_IN,
    output Send_out, Ack_out, WRITE_EN, LOAD_FLG,
    output [`DATA_SIZE] WRITE_DATA, 
    output [`FP_PACKOUT_SIZE] PACKET_OUT
);
`include "common_param.vh"

wire CP;
wire [`FP_PACKIN_SIZE] DL;

/*********************************/
//////////////////////////////////////////////////////////colorからZまで，名前の先頭のFP_は必要ない?? 定数では使用するが...
wire LR, BR, MF, CPY, C, Z;
wire [`COLOR_SIZE] color;
wire [`OPC_SIZE] OPC;
wire [`DEST_SIZE] dest;
wire [`GEN_SIZE] gen;
wire [`DATA_SIZE] DataL, DataR, FlowData, DummyData;            // FlowData, DummyDataはshift, rotate演算に使用

assign {color, gen, dest, LR, BR, MF, CPY, OPC, C, Z, DataL, DataR} = DL;
/*********************************/

CE CE5 (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), .CP(CP), .exb(DEL));

assign DL = (CP)? PACKET_IN: DL;
assign {FlowData, DummyData, LOAD_FLG, WRITE_EN, WRITE_DATA, PACKET_OUT} = ALU(LR, BR, MF, CPY, C, Z, color, OPC, dest, gen, DataL, DataR);


/*** ※ 右辺にALU[...]を持ってくる場合は注意. このfunction文内のcase文は順次実行であり，begin-end内の処理も順次実行であるため， ***/
/*** 　 右辺にALU[...]を使用する場合，ALU[...]を更新後の位置に処理を記述する必要がある． ***/
function [`FP_ALU_SIZE] ALU;
    input LR, BR, MF, CPY, C, Z;
    input [`COLOR_SIZE] color;
    input [`OPC_SIZE] OPC;
    input [`DEST_SIZE] dest;
    input [`GEN_SIZE] gen;
    input [`DATA_SIZE] DataL, DataR;

    case (OPC)
        // operation codes (Arithmetic and logic operations)
        ADD:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    {ALU[`FP_ALU_C], ALU[`FP_ALU_RESULTDATA]} = DataL + DataR;       // Cフラグはcarry outの発生の有無を示す
                    ALU[`FP_ALU_Z] = ~|ALU[`FP_ALU_RESULTDATA];
                end

        ADDC:   begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    {ALU[`FP_ALU_C], ALU[`FP_ALU_RESULTDATA]} = DataL + DataR + C;   // Cフラグはcarry outの発生の有無を示す
                    ALU[`FP_ALU_Z] = ~|ALU[`FP_ALU_RESULTDATA];
                end

        SUB:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL - DataR;          // Cフラグはborrow outの発生の有無を示す
                    ALU[`FP_ALU_C] = (DataL < DataR)? 1'b1: 1'b0;
                    ALU[`FP_ALU_Z] = ~|ALU[`FP_ALU_RESULTDATA];
                end

        SUBC:   begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL - DataR - C;      // Cフラグはborrow outの発生の有無を示す
                    ALU[`FP_ALU_C] = (DataL < DataR)? 1'b1: 1'b0;
                    ALU[`FP_ALU_Z] = ~|ALU[`FP_ALU_RESULTDATA];
                end

        AND:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL & DataR;
                    ALU[`FP_ALU_C] = 1'b0;
                    ALU[`FP_ALU_Z] = ~|ALU[`FP_ALU_RESULTDATA];
                end

        OR:     begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL | DataR;
                    ALU[`FP_ALU_C] = 1'b0;
                    ALU[`FP_ALU_Z] = ~|ALU[`FP_ALU_RESULTDATA];
                end

        XOR:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL ^ DataR;
                    ALU[`FP_ALU_C] = 1'b0;
                    ALU[`FP_ALU_Z] = ~|ALU[`FP_ALU_RESULTDATA];
                end

        MUL:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    {ALU[`FP_ALU_FLOWDATA], ALU[`FP_ALU_RESULTDATA]} = DataL * DataR;
                    ALU[`FP_ALU_C] = |ALU[`FP_ALU_FLOWDATA] & ~&ALU[`FP_ALU_FLOWDATA];       // 全bitが0，もしくは全ビットが1のときのみC=1'b0となる
                    ALU[`FP_ALU_Z] = ~|ALU[`FP_ALU_RESULTDATA];
                end


        // operation codes (Shift instruction)
        SHL:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    {ALU[`FP_ALU_FLOWDATA], ALU[`FP_ALU_RESULTDATA]} = {`DATA_WIDTH'b0, DataL} << DataR[3:0];
                    ALU[`FP_ALU_C] = |ALU[`FP_ALU_FLOWDATA];
                    ALU[`FP_ALU_Z] = ~|ALU[`FP_ALU_RESULTDATA];
                end

        SHR:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    {ALU[`FP_ALU_RESULTDATA], ALU[`FP_ALU_FLOWDATA]} = {DataL, `DATA_WIDTH'b0} >> DataR[3:0];
                    ALU[`FP_ALU_C] = |ALU[`FP_ALU_FLOWDATA];
                    ALU[`FP_ALU_Z] = ~|ALU[`FP_ALU_RESULTDATA];
                end

        ROL:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    {ALU[`FP_ALU_FLOWDATA], ALU[`FP_ALU_RESULTDATA], ALU[`FP_ALU_DUMMYDATA]} = {`DATA_WIDTH'b0, {2{DataL}}} << DataR[3:0];
                    ALU[`FP_ALU_C] = |ALU[`FP_ALU_FLOWDATA];
                    ALU[`FP_ALU_Z] = ~|ALU[`FP_ALU_RESULTDATA];
                end

        ROR:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    {ALU[`FP_ALU_DUMMYDATA], ALU[`FP_ALU_RESULTDATA], ALU[`FP_ALU_FLOWDATA]} = {{2{DataL}}, `DATA_WIDTH'b0} >> DataR[3:0];
                    ALU[`FP_ALU_C] = |ALU[`FP_ALU_FLOWDATA];
                    ALU[`FP_ALU_Z] = ~|ALU[`FP_ALU_RESULTDATA];
                end


        // operation codes (Conditional branch instruction)
        BZ:     begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, (Z)? dest+`DEST_WIDTH'b1: dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL;          // データは左パケットのものを接続
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end

        BNZ:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, (Z)? dest: dest+`DEST_WIDTH'b1, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL;          // データは左パケットのものを接続
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end

        BC:     begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, (C)? dest+`DEST_WIDTH'b1: dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL;          // データは左パケットのものを接続
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end

        BNC:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, (C)? dest: dest+`DEST_WIDTH'b1, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL;          // データは左パケットのものを接続
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end

        BZL:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, (Z)? dest+`DEST_WIDTH'b1: dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL;          // データは左パケットのものを接続
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end     // bzと同じ処理

        BNZL:   begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, (Z)? dest: dest+`DEST_WIDTH'b1, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL;          // データは左パケットのものを接続
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end     // bnzと同じ処理


        // operation codes (Load and store instruction)
        LDM:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b1, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL + DataR;      // Dmemのアクセスするアドレスを計算
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end

        STM:    begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b1, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL + DataR;      // Dmemのアクセスするアドレスを計算
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end

        
        // operation codes (Identifier change instruction)
        CHGCOL: begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    // color = DataR[2:0]   --- colorのビット幅に合わせる
                    ALU[`FP_ALU_CGDLBMC] = {DataR[`COLOR_SIZE], gen, dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL;
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end

        ADDGEN: begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    // gen = $signed(gen) + $signed(DataR[7:0])   --- genのビット幅に合わせる
                    ALU[`FP_ALU_CGDLBMC] = {color, $signed(gen) + $signed(DataR[`GEN_SIZE]), dest, LR, BR, MF, CPY};   
                    ALU[`FP_ALU_RESULTDATA] = DataL;
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end

        DECGEN: begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    // gen = gen - 8'b1   --- genのビット幅に合わせる
                    ALU[`FP_ALU_CGDLBMC] = {color, gen - `GEN_WIDTH'b1, dest, LR, BR, MF, CPY};   
                    ALU[`FP_ALU_RESULTDATA] = DataL;
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end

        /*  CHGDESTに関しては未完成．そもそも，LOAD_FLGのように，MA_StageでCHGDEST命令だとわかるためのものが必要そう...
        // operation codes (Other instruction)
        CHGDEST:begin
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataR + C;
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end
        */

        default: // とりあえず現在のところは，定義されていない演算を行ったことがわかるように不定値を流すようにしておく
                ALU = {57{1'bx}};
        
                /*begin   // defaultでは，データ部にDataLを，それ以外はそのまま接続するようにする
                    {ALU[`FP_ALU_LOADFLG], ALU[`FP_ALU_WRITEEN], ALU[`FP_ALU_WRITEDATA]} = {1'b0, 1'b0, DataL};
                    ALU[`FP_ALU_CGDLBMC] = {color, gen, dest, LR, BR, MF, CPY};
                    ALU[`FP_ALU_RESULTDATA] = DataL;
                    ALU[`FP_ALU_C] = C;
                    ALU[`FP_ALU_Z] = Z;
                end*/
    endcase
endfunction
    
endmodule