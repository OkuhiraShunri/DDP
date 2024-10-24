## Zybo Z7 constraints file
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets -hierarchical];

##Clock signal
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { CLK }];
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { CLK }];

#Reset
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { RST }]; # BTN[3]

#LED_RGB (==LED[2:0])
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; # LED[0]
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; # LED[1]
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { LED_RGB[2] }]; # LED[2]

##Buttons
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { BIN[0] }];
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { BIN[1] }];
set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { BIN[2] }];
set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { BIN[3] }];

#Pmod JC
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { PIN_NUM[0] }];
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports { PIN_NUM[1] }];
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { PIN_NUM[2] }];
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { PIN_NUM[3] }];
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { PIN_NUM[4] }];
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { PIN_NUM[5] }];
set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { PIN_NUM[6] }];

set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { TOGLE }];