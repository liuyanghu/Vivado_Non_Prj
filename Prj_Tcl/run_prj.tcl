# read prj property
source				[file join $tclDir run_set_env.tcl]

# other necessary settings
source 				[file join $tclDir prj_pre.tcl]

# read source code
source 				[file join $tclDir run_read_src.tcl]

# synth and impl
source 				[file join $tclDir run_synth_ip.tcl]
source 				[file join $tclDir run_synth.tcl]
source 				[file join $tclDir run_impl.tcl]
source 				[file join $tclDir run_bitstream.tcl]
