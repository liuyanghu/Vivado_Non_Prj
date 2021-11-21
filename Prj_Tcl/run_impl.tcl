# run_impl.tcl
opt_design -directive $optDirective
write_checkpoint -force [file join $ImplOutputDir post_opt]
report_timing_summary -file [file join $ImplOutputDir post_opt_timing_summary.rpt]
report_utilization -file [file join $ImplOutputDir post_opt_util.rpt]

place_design -directive $placeDirective
write_checkpoint -force [file join $ImplOutputDir post_place]
report_timing_summary -file [file join $ImplOutputDir post_place_timing_summary.rpt]
report_utilization -file [file join $ImplOutputDir post_place_util.rpt]

phys_opt_design -directive $physOptDirectiveAp
write_checkpoint -force [file join $ImplOutputDir post_phys_opt_ap]
report_timing_summary -file [file join $ImplOutputDir post_phys_opt_ap_timing_summary.rpt]
report_utilization -file [file join $ImplOutputDir post_phys_opt_ap_util.rpt]

route_design -directive $routeDirective
write_checkpoint -force [file join $ImplOutputDir post_route]
report_timing_summary -file [file join $ImplOutputDir post_route_timing_summary.rpt]
report_utilization -file [file join $ImplOutputDir post_route_util.rpt]


