// common_macro.vh

/*** 各メモリのサイズ（以下，WIDTHはビット幅，HEIGHTは格納できるデータ数を表している）***/
`define CMEM_WIDTH              16
`define MMRAM_WIDTH             20
`define DMEM_WIDTH              16
`define PS_WIDTH                17
//`define ENTRY_WIDTH             19
`define CMEM_HEIGHT             64
`define MMRAM_HEIGHT            64
`define DMEM_HEIGHT             1024
`define PS_HEIGHT               20
/**********************************************************************************/

`define CMEM_WIDTH_SIZE         `CMEM_WIDTH-1:0
`define MMRAM_WIDTH_SIZE        `MMRAM_WIDTH-1:0
`define DMEM_WIDTH_SIZE         `DMEM_WIDTH-1:0
`define PS_WIDTH_SIZE           `PS_WIDTH-1:0
`define CMEM_HEIGHT_SIZE        0:`CMEM_HEIGHT-1
`define MMRAM_HEIGHT_SIZE       0:`MMRAM_HEIGHT-1
`define DMEM_HEIGHT_SIZE        0:`DMEM_HEIGHT-1
`define PS_HEIGHT_SIZE          0:`PS_HEIGHT-1


/* 値を変えたいときに変えるべきマクロを最低限にとどめる．変えるべきマクロの値は，上の方にまとめる */

/*** パケットを構成する各フィールドのビット幅（以下，WIDTHはビット幅，SIZEはビット幅指定を表している）***/
`define COLOR_WIDTH             3
`define GEN_WIDTH               8
`define DEST_WIDTH              7
`define LR_WIDTH                1              
`define BR_WIDTH                1              
`define MF_WIDTH                1        
`define CPY_WIDTH               1              
`define OPC_WIDTH               6
`define C_WIDTH                 1              
`define Z_WIDTH                 1              
`define DATA_WIDTH              16
/************************************************************************************************/

`define COLOR_SIZE              `COLOR_WIDTH-1:0
`define GEN_SIZE                `GEN_WIDTH-1:0
`define DEST_SIZE               `DEST_WIDTH-1:0
`define OPC_SIZE                `OPC_WIDTH-1:0
`define DATA_SIZE               `DATA_WIDTH-1:0



// 各ステージにおけるパケットを構成する各フィールドのビット指定（基本的に使用するのは，"StageName_VariableName_FieldName_SIZE"）
// （WIDTHやSIZE以外で終了しているマクロは，ある変数の中の特定のフィールドを表している）
//`define CGD_WIDTH               (`COLOR_WIDTH + `GEN_WIDTH + `DEST_WIDTH)
//`define LMCZD_WIDTH             (`LR_WIDTH + `MF_WIDTH + `C_WIDTH + `Z_WIDTH + `DATA_WIDTH)
`define MMRAM_ADDR_WIDTH        6
`define MMRAM_ADDR_SIZE         `MMRAM_ADDR_WIDTH-1:0

// 1. M_Stage
`define M_PACKET_WIDTH          38                          // (`CGD_WIDTH + `LMCZD_WIDTH)
`define M_PACKET_SIZE           `M_PACKET_WIDTH-1:0

// 2. MMCAM_Stage
// MMCAM_Stage
`define MMCAM_PACKET_WIDTH      38                          // (`CGD_WIDTH + `LMCZD_WIDTH)
`define MMCAM_PACKET_SIZE       `MMCAM_PACKET_WIDTH-1:0
`define MMCAM_EFV_WIDTH         `MMRAM_HEIGHT
`define MMCAM_EFV_SIZE          `MMCAM_EFV_WIDTH-1:0
`define MMCAM_PACKET_CGDL       37:19
`define MMCAM_PACKET_MF         18

// MMCAM_ENTRY_FD
`define MMCAM_ENTRY_WIDTH       19                          // (`CGD_WIDTH + `LR_WIDTH)
`define MMCAM_ENTRY_SIZE        `MMCAM_ENTRY_WIDTH-1:0
`define MMCAM_ENTRY_CGD         18:1
`define MMCAM_ENTRY_LR          1:0

// MMCAM_AM_OR_MA
`define MMCAM_MA_WIDTH          8                           // (2 + `MMCAM_ADDR_WIDTH)
`define MMCAM_MA_SIZE           `MMCAM_MA_WIDTH-1:0
`define MMCAM_AM_WIDTH          70                          // (`MMCAM_ADDR_WIDTH + `MMCAM_EFV_WIDTH)
`define MMCAM_AM_SIZE           `MMCAM_AM_WIDTH-1:0

// 3.MMRAM_Stage
`define MMRAM_PACKIN_WIDTH      38                          // (`CGD_WIDTH + `LMCZD_WIDTH)
`define MMRAM_PACKIN_SIZE       `MMRAM_PACKIN_WIDTH-1:0
`define MMRAM_PACKOUT_WIDTH     52                          // (`CGD_WIDTH + `C_WIDTH + `Z_WIDTH + `DATA_WIDTH + `DATA_WIDTH)
`define MMRAM_PACKOUT_SIZE      `MMRAM_PACKOUT_WIDTH-1:0
`define MMRAM_DATAIO_WIDTH      20                          // `LMCZD_WIDTH
`define MMRAM_DATAIO_SIZE       `MMRAM_DATAIO_WIDTH-1:0
`define MMRAM_MERGEOUT_WIDTH    54                          // (`CGD_WIDTH + `LMCZD_WIDTH + `DATA_WIDTH)
`define MMRAM_MERGEOUT_SIZE     `MMRAM_MERGEOUT_WIDTH-1:0

`define MMRAM_PACKIN_MF         18
`define MMRAM_PACKIN_LR         19
`define MMRAM_PACKIN_LMCZD      19:0
`define MMRAM_PACKIN_CGDLM      37:18
`define MMRAM_PACKIN_DEST       26:20
`define MMRAM_PACKIN_CZ         17:16
`define MMRAM_DATAOUT_CZ        17:16
`define MMRAM_PACKIN_DATA       15:0
`define MMRAM_DATAOUT_DATA      15:0
`define MMRAM_MUXOUT_LR         35
`define MMRAM_MUXOUT_CGD        53:36
`define MMRAM_MUXOUT_CZ         33:32
`define MMRAM_MUXOUT_CZ         33:32
`define MMRAM_MUXOUT_UPRDATA    31:16       // UPPERDATA
`define MMRAM_MUXOUT_LWRDATA    15:0        // LWRDATA
`define MMRAM_MUXOUT_CZDD       33:0

// 4.PS_Stage
`define PS_PACKIN_WIDTH         52                          // (`CGD_WIDTH + `C_WIDTH + `Z_WIDTH + `DATA_WIDTH + `DATA_WIDTH)
`define PS_PACKIN_SIZE          `PS_PACKIN_WIDTH-1:0
`define PS_PACKOUT_WIDTH        62                          // (`CGD_WIDTH + `BR_WIDTH + `CPY_WIDTH + `OPC_WIDTH + `LMCZD_WIDTH + `DATA_WIDTH)
`define PS_PACKOUT_SIZE         `PS_PACKOUT_WIDTH-1:0

`define PS_PACKIN_CG            51:41
`define PS_PACKIN_DEST          40:34
`define PS_PACKIN_CZDD          33:0
`define PS_PACKOUT_OPC          39:34

// 5.FP_Stage
`define FP_PACKIN_WIDTH         62                          // (`CGD_WIDTH + `BR_WIDTH + `CPY_WIDTH + `OPC_WIDTH + `LMCZD_WIDTH + `DATA_WIDTH)
`define FP_PACKIN_SIZE          `FP_PACKIN_WIDTH-1:0
`define FP_PACKOUT_WIDTH        40                          // (`CGD_WIDTH + `BR_WIDTH + `CPY_WIDTH + `LMCZD_WIDTH)
`define FP_PACKOUT_SIZE         `FP_PACKOUT_WIDTH-1:0
`define FP_ALU_WIDTH            90                          // (2*`DATA_WIDTH + 2 + `DATA_WIDTH + `FP_PACKOUT_WIDTH)
`define FP_ALU_SIZE             `FP_ALU_WIDTH-1:0

`define FP_ALU_FLOWDATA         89:74
`define FP_ALU_DUMMYDATA        73:58
`define FP_ALU_LOADFLG          57
`define FP_ALU_WRITEEN          56
`define FP_ALU_WRITEDATA        55:40
`define FP_ALU_CGDLBMC          39:18
`define FP_ALU_C                17
`define FP_ALU_Z                16
`define FP_ALU_RESULTDATA       15:0

// 6.MA_Stage
`define MA_PACKET_WIDTH         40                          // (`CGD_WIDTH + `BR_WIDTH + `CPY_WIDTH + `LMCZD_WIDTH)
`define MA_PACKET_SIZE          `MA_PACKET_WIDTH-1:0
`define MA_DL_SIZE              `MA_PACKET_WIDTH:0
`define MA_OTHERDATA_WIDTH      24                          // `MA_PACKET_WIDTH - `DATA_WIDTH
`define MA_OTHERDATA_SIZE       `MA_OTHERDATA_WIDTH-1:0

`define MA_PACKET_RESULTDATA    15:0
`define MA_PACKET_OTHERDATA     39:16
`define MA_DL_LOADFLG           0
`define MA_DL_PACKETOUT         40:1

// 7.COPY_Stage
`define COPY_PACKIN_WIDTH       40                          // (`CGD_WIDTH + `BR_WIDTH + `CPY_WIDTH + `LMCZD_WIDTH)
`define COPY_PACKIN_SIZE        `COPY_PACKIN_WIDTH-1:0
`define COPY_PACKOUT_WIDTH      39                          // (`CGD_WIDTH + `BR_WIDTH + `LMCZD_WIDTH)
`define COPY_PACKOUT_SIZE       `COPY_PACKOUT_WIDTH-1:0

`define COPY_PACKIN_CPY         18
`define COPY_PACKIN_CGDLBM      39:19
`define COPY_PACKIN_CZD         17:0
`define COPY_DL_DEST            27:21
`define COPY_DL_CG              38:28
`define COPY_DL_LBMCZD          20:0

// 8.B_Stage
`define B_PACKIN_WIDTH          39                          // (`CGD_WIDTH + `BR_WIDTH + `LMCZD_WIDTH)
`define B_PACKIN_SIZE           `B_PACKIN_WIDTH-1:0
`define B_PACKOUT_WIDTH         38                          // (`CGD_WIDTH + `LMCZD_WIDTH)
`define B_PACKOUT_SIZE          `B_PACKOUT_WIDTH-1:0

`define B_PACKIN_CGDL           38:20
`define B_PACKIN_BR             19
`define B_PACKIN_MCZD           18:0

// End of common_macro.vh