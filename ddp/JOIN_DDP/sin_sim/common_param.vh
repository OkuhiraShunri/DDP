// oparation_code.vh


/* operation codes */
// operation codes (Arithmetic and logic operations)
parameter ADD   = 6'b000_000;
parameter ADDC  = 6'b000_001;
parameter SUB   = 6'b000_010;
parameter SUBC  = 6'b000_011;
parameter AND   = 6'b000_100;
parameter OR    = 6'b000_101;
parameter XOR   = 6'b000_110;
parameter MUL   = 6'b000_111;

// operation codes (Shift instruction)
parameter SHL   = 6'b001_000;
parameter SHR   = 6'b001_001;
parameter ROL   = 6'b001_010;
parameter ROR   = 6'b001_011;

// operation codes (Conditional branch instruction)
parameter BZ    = 6'b010_000;
parameter BNZ   = 6'b010_001;
parameter BC    = 6'b010_010;
parameter BNC   = 6'b010_011;
parameter BZL   = 6'b011_000;
parameter BNZL  = 6'b011_000;

// operation codes (Load and store instruction)
parameter LDM   = 6'b100_000;
parameter STM   = 6'b100_001;

// operation codes (Packet erasing instructions)
parameter ABSORB = 6'b111_111;

// operation codes (Identifier change instruction)
parameter CHGCOL = 6'b101_001;
parameter ADDGEN = 6'b101_010;
parameter DECGEN = 6'b101_100;

// operation codes (Other instruction)
parameter CHGDEST = 6'b110_000;

// End of common_param.vh