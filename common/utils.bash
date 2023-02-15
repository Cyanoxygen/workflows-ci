#!/bin/bash
# Colors
# It is a shame that Win32 Consoles does not have ANSI Escape code support - until Windows 10.
tb="\033[1m"	# Bold text
cW="\033[37m"	# White color
ci="\033[36m"	# Color for INFO (cyan)
cw="\033[33m"	# Color for WARN (yellow)
ce="\033[31m"	# Color for ERR! (red)
cm="\033[0m"	# Everything become normal

# If output is not a terminal, we disable colors
if ! [ -t 1 ] ; then
	tb=
	cW=
	ci=
	cw=
	ce=
	cm=
fi

# Logging helpers
i() {
	echo -e "$tb[${ci}INFO${cW}]: $@$cm"
}

warn() {
	echo -e "$tb[${cw}WARN${cW}]: $@$cm"
}

e() {
	echo -e "$tb[${ce}ERR!${cW}]: $@$cm"
}

bail() {
	e "$@"
	exit 1
}	

