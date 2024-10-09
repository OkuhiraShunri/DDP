// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 14:00:15 2024
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19872)
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
