// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 13:58:44 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.gen/sources_1/ip/DMEM/DMEM_sim_netlist.v
// Design      : DMEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DMEM,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module DMEM
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
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
  (* C_INIT_FILE = "DMEM.mem" *) 
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
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  DMEM_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19936)
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
