// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct  7 16:59:00 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [19:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [19:0]douta;

  wire [5:0]addra;
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
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [19:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
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
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
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
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "20" *) 
  (* C_WRITE_WIDTH_B = "20" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  MMRAM_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19824)
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
