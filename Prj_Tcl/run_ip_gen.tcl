# source findFiles proc
source [file join $tclDir proc_findFiles.tcl]

# get all ip gen scripts
set ip_scripts [findFiles $srcDir/ip_scripts *.tcl]

# generate ips
foreach scrt $ip_scripts {
  source $scrt 
}