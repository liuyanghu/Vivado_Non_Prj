# Prj root directory
set Prj_Dir				{./}

# Prj Tcl scripts directory
set tclDir				[file join $Prj_Dir Prj_Tcl]

# source directory and scripts directory
set srcDir				[file join $Prj_Dir src]
set HeaderFileSet 		{system_defines.v}

# Prj top module name
set top                	system

# FPGA chip
set device             	xc7a100t
set package            	fgg484
set speed              	-2
set part             	$device$package$speed

# output directory			
set SynOutputDir       	[file join $Prj_Dir SynOutputDir]
set ImplOutputDir      	[file join $Prj_Dir ImplOutputDir]
file mkdir 				$SynOutputDir
file mkdir 				$ImplOutputDir

# Vivado run Directives
set synDirective       	Default
set optDirective       	Default
set placeDirective     	Default
set physOptDirectiveAp 	Default
set routeDirective     	Default
set physOptDirectiveAr 	Default

# Threads
set_param 				general.maxThreads 6