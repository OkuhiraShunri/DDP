// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct  7 16:59:00 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MMRAM_sim_netlist.v
// Design      : MMRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MMRAM,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
