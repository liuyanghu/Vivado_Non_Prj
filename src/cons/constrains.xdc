set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#####               create clock              #####
set_property -dict { PACKAGE_PIN W19    IOSTANDARD LVCMOS33 } [get_ports { clk_i }]; 
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk_i}];

set_property PACKAGE_PIN T6  [get_ports rst_i  ]
set_property PACKAGE_PIN P20  [get_ports rst_o  ]

set_property PACKAGE_PIN W16 [get_ports vld]
set_property PACKAGE_PIN U16 [get_ports dat_i[3]]
set_property PACKAGE_PIN T16 [get_ports dat_i[2]]
set_property PACKAGE_PIN T14 [get_ports dat_i[1]]
set_property PACKAGE_PIN T15 [get_ports dat_i[0]]

set_property PACKAGE_PIN N17 [get_ports dat_o[3]]
set_property PACKAGE_PIN P15 [get_ports dat_o[2]]
set_property PACKAGE_PIN T18 [get_ports dat_o[1]]
set_property PACKAGE_PIN P17 [get_ports dat_o[0]]


set_property IOSTANDARD LVCMOS15 [get_ports rst_i]
set_property IOSTANDARD LVCMOS33 [get_ports rst_o]

set_property IOSTANDARD LVCMOS33 [get_ports  vld   ]
set_property IOSTANDARD LVCMOS33 [get_ports dat_i[3]]
set_property IOSTANDARD LVCMOS33 [get_ports dat_i[2]]
set_property IOSTANDARD LVCMOS33 [get_ports dat_i[1]]
set_property IOSTANDARD LVCMOS33 [get_ports dat_i[0]]

set_property IOSTANDARD LVCMOS33 [get_ports dat_o[3]]
set_property IOSTANDARD LVCMOS33 [get_ports dat_o[2]]
set_property IOSTANDARD LVCMOS33 [get_ports dat_o[1]]
set_property IOSTANDARD LVCMOS33 [get_ports dat_o[0]]


#####         SPI Configurate Setting        #######
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design] 
set_property CONFIG_MODE SPIx4 [current_design] 
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]




