# run_bitstream.tcl
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 66 [current_design]
write_bitstream -verbose -force -bin_file [file join $ImplOutputDir $top.bit]



