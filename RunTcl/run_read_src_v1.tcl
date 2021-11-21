# run_read_src_v1.tcl
# Read sources (RTL IP & constraints)
read_verilog  [glob $srcDir/hdl/*.v]
read_verilog  [glob $srcDir/hdl/*.vh]
read_ip       [glob $srcDir/ip/*.xcix]
read_xdc      [glob $srcDir/xdc/*.xdc]

