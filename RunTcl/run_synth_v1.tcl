# run_synth_v1.tcl
# Run synthesis top module  
synth_design -top $top -part $part -directive default
# store static netlist as checkpoint
write_checkpoint -force $SynOutputDir/post_synth
report_timing_summary -file $SynOutputDir/post_synth_timing_summary.rpt
report_utilization -file $SynOutputDir/post_synth_util.rpt



