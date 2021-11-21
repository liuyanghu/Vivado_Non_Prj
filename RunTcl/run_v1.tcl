# run_v1.tcl
set device             xc7k70t
set package            fbg676
set speed              -1
set part               $device$package$speed
set top                wave_gen
set srcDir             ./Sources
set SynOutputDir       ./SynOutputDir
set ImplOutputDir      ./ImplOutputDir
set synDirective       default
set optDirective       Default
set placeDirective     Default
set physOptDirectiveAp Default
set routeDirective     Default
set physOptDirectiveAr Default

set_param general.maxThreads 6

source run_read_src_v1.tcl
source run_synth_ip_v1.tcl
source run_synth_v1.tcl
source run_impl_v1.tcl
source run_bitstream_v1.tcl






