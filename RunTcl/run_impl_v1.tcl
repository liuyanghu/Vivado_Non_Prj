# run_impl_v1.tcl
opt_design -directive $optDirective
write_checkpoint -force $ImplOutputDir/post_opt
report_timing_summary -file $ImplOutputDir/post_opt_timing_summary.rpt
report_utilization -file $ImplOutputDir/post_opt_util.rpt

place_design -directive $placeDirective
write_checkpoint -force $ImplOutputDir/post_place
report_timing_summary -file $ImplOutputDir/post_place_timing_summary.rpt
report_utilization -file $ImplOutputDir/post_place_util.rpt

phys_opt_design -directive $physOptDirectiveAp
write_checkpoint -force $ImplOutputDir/post_phys_opt_ap
report_timing_summary -file $ImplOutputDir/post_phys_opt_ap_timing_summary.rpt
report_utilization -file $ImplOutputDir/post_phys_opt_ap_util.rpt

route_design -directive $routeDirective
write_checkpoint -force $ImplOutputDir/post_route
report_timing_summary -file $ImplOutputDir/post_route_timing_summary.rpt
report_utilization -file $ImplOutputDir/post_route_util.rpt


