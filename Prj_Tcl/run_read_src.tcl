# run_read_src.tcl

# ------------------------------------------------------------
# glob command cannot search recursively
# a proc that can match the .extension or pattern
source [file join $tclDir proc_findFiles.tcl]

# ------------------------------------------------------------
# Verilog Header files need to be claimed,otherwize vivado can not recognize them
# read_verilog cannot recognize Verilog Header files automatically
# Method 1:
read_verilog [findFiles [file join $srcDir rtl] *.v]
set_property file_type {Verilog Header} -quiet [get_files -quiet $HeaderFileSet]

# # Method 2:
# add_files -scan_for_includes [findFiles [file join $srcDir rtl] *.v]
# set_property file_type {Verilog Header} -quiet [get_files -quiet $HeaderFileSet]

# ------------------------------------------------------------
# read existed ips
read_ip [findFiles [file join $srcDir ips] *.xci]

#------------------------------------------------------------ 
# read xdc constrain files
read_xdc [findFiles [file join $srcDir cons] *.xdc]

