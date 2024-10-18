/***** parameter for DDP *****/


/*** packet size and element length ***/
`define M_PACKET_SIZE       38
`define MMCAM_PACKET_SIZE   38
`define MMRAM_PACKET_SIZE   38
`define PS_PACKET_SIZE      52
`define FP_PACKET_SIZE      62
`define MA_PACKET_SIZE      40
`define COPY_PACKET_SIZE    40
`define B_PACKET_SIZE       38

`define color_LENGTH    3
`define gen_LENGTH      8
`define dest_LENGTH     7
`define LR_LENGTH       1
`define LR2_LENGTH      2
`define BR_LENGTH       1
`define MF_LENGTH       1
`define CPY_LENGTH      1
`define OPC_LENGTH      6
`define C_LENGTH        1
`define Z_LENGTH        1
`define Data_LENGTH     16

/*** other signal length ***/
//MMCAM
`define ADDR_LENGTH 6
`define color_gen_dest_LR_LENTGH 19
`define FIRE_LENGTH 64
`define VALID_LENGTH 64
`define EN_LENGTH 64
`define AM_LENGTH 70

//MMRAM
`define RAM_DATA_LENGTH 20
`define MMRAM_MERGE_LENGTH 54

//PS
`define PSData_LENGTH 17

//FP
`define ALU_LENGTH              58
`define ALU_WRITE_EN            57
`define ALU_WRITE_DATA          56:41
`define ALU_color_to_CPY        40:19
`define ALU_C                   18
`define ALU_Z                   17
`define ALU_PACKET_ResultData   16:1
`define ALU_LOAD_FLG            0

//MA
`define MA_MERGE_LENGTH 40
`define OTHER_DATA_LENGTH 24

/*** size of Memories ***/
`define ENTRY_WIDTH  19
`define ENTRY_DEPTH  20

`define MMRAM_WIDTH  20
`define MMRAM_DEPTH  20

`define DMEM_WIDTH  16
`define DMEM_DEPTH  20

`define CMEM_WIDTH  16
`define CMEM_DEPTH  20

`define PS_WIDTH  17
`define PS_DEPTH  128

`define SubPS_WIDTH  1
`define SubPS_DEPTH  64

`define IMEM_WIDTH  38
`define IMEM_DEPTH  64
`define IMEM_ADDR_LENGTH 6


//QB
`define QB_POINTER_SIZE 4



/*** operation codes ***/
//Arithmetic and logic operations
`define ADD     6'd0
`define ADDC    6'd1
`define SUB     6'd2
`define SUBC    6'd3
`define AND     6'd4
`define OR      6'd5
`define XOR     6'd6
`define MUL     6'd7

//Shift operations
`define SHL     6'd8
`define SHR     6'd9
`define ROL     6'd10
`define ROR     6'd11

//Conditional branch operations
`define BZ      6'd16
`define BNZ     6'd17
`define BC      6'd18
`define BNC     6'd19
`define BZL     6'd24
`define BNZL    6'd25

//Load and store operations
`define LDM     6'd32
`define STM     6'd33

//Erase packet operations
`define ABSORB  6'd63

//Change identifer operations
`define CHGCOL  6'd41
`define ADDGEN  6'd42
`define DECGEN  6'd44