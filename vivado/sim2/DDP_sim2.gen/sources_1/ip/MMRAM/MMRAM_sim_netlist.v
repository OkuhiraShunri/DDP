// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 14:00:16 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.gen/sources_1/ip/MMRAM/MMRAM_sim_netlist.v
// Design      : MMRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MMRAM,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module MMRAM
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [19:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [19:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [19:0]dina;
  wire [19:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [19:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [19:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.03925 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "MMRAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "20" *) 
  (* C_READ_DEPTH_B = "20" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "20" *) 
  (* C_READ_WIDTH_B = "20" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "20" *) 
  (* C_WRITE_DEPTH_B = "20" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "20" *) 
  (* C_WRITE_WIDTH_B = "20" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  MMRAM_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[19:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[19:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19760)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
