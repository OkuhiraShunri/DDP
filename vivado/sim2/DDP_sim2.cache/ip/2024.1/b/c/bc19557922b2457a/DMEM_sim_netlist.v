// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct  7 17:13:46 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DMEM_sim_netlist.v
// Design      : DMEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DMEM,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.51805 mW" *) 
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
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18656)
`pragma protect data_block
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
g6bCAoJlfJFBy3DfC94S+BM=
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
