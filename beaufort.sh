#!/bin/bash

# Evert Mouw, 2023-01-14

function Beaufort {
	# arg 1 = windspeed
	# arg 2 = units [ kmph | mps ]
	# outputs Beaufort scale
	W=$(echo $1 | cut -d. -f1)
	U="$2"
	case $U in
	kmph|Km/h)
		if   [[ $W -ge   0 && $W -lt   1 ]]; then echo  0; return
		elif [[ $W -ge   1 && $W -lt   6 ]]; then echo  1; return
		elif [[ $W -ge   6 && $W -lt  11 ]]; then echo  2; return
		elif [[ $W -ge  12 && $W -lt  19 ]]; then echo  3; return
		elif [[ $W -ge  20 && $W -lt  28 ]]; then echo  4; return
		elif [[ $W -ge  29 && $W -lt  38 ]]; then echo  5; return
		elif [[ $W -ge  39 && $W -lt  49 ]]; then echo  6; return
		elif [[ $W -ge  50 && $W -lt  61 ]]; then echo  7; return
		elif [[ $W -ge  62 && $W -lt  74 ]]; then echo  8; return
		elif [[ $W -ge  75 && $W -lt  88 ]]; then echo  9; return
		elif [[ $W -ge  89 && $W -lt 102 ]]; then echo 10; return
		elif [[ $W -ge 103 && $W -lt 117 ]]; then echo 11; return
		elif [[ $W -ge 117 ]];               then echo 12; return
		else echo "error"; return
		fi
		;;
	mps)
		echo "unimplemented: $2"
		return
		;;
	*)
		echo "error: unknown unit $2"
		return
		;;
	esac
}
