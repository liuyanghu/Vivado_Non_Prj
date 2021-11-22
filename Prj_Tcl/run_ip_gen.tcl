# source findFiles proc
source [file join $tclDir proc_findFiles.tcl]

# get all ip gen scripts
set ip_scripts [findFiles $srcDir/ip_scripts *.tcl]

# It is necessary to open/create a prj first,otherwise Command can not be executed
# -in_memory means it is temporary
create_project -in_memory -part $part

# generate ips
foreach scrt $ip_scripts {
  source $scrt 
}

# # synth ip(optional)
# synth_ip [get_ips]

# close temporary project
close_project