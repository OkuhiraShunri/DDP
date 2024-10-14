// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 15:16:04 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.gen/sources_1/ip/PS/PS_sim_netlist.v
// Design      : PS
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PS,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module PS
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [16:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [16:0]douta;
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
  wire [16:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [16:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.751199 mW" *) 
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
  (* C_INIT_FILE = "PS.mem" *) 
  (* C_INIT_FILE_NAME = "PS.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "20" *) 
  (* C_READ_DEPTH_B = "20" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "17" *) 
  (* C_READ_WIDTH_B = "17" *) 
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
  (* C_WRITE_WIDTH_A = "17" *) 
  (* C_WRITE_WIDTH_B = "17" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  PS_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[16:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[16:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19200)
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
