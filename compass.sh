#!/bin/bash

# Evert Mouw, 2023-01-14

function compassEmojiArrow {
	# arg 1 = degrees (0-360)
	# outputs emoji compass direction
	degrees="$1"
	if [[ $degrees -lt 0 || $degrees > 360 ]]; then
		echo "invalid: $degrees degrees"
		return
	fi

	declare -A directions
	directions[N]=0;
	directions[NNE]=23;
	directions[NE]=45;
	directions[ENE]=68;
	directions[E]=90;
	directions[ESE]=113;
	directions[SE]=135;
	directions[SSE]=158;
	directions[S]=180;
	directions[SSW]=203;
	directions[SW]=225;
	directions[WSW]=248;
	directions[W]=270;
	directions[WNW]=293;
	directions[NW]=315;
	directions[NNW]=338;

	if   [[ $degrees -gt ${directions[NNW]} && $degrees -le ${directions[NNE]} ]]; then echo "⇧"; return
	elif [[ $degrees -gt ${directions[NNE]} && $degrees -le ${directions[ENE]} ]]; then echo "⇗"; return
	elif [[ $degrees -gt ${directions[ENE]} && $degrees -le ${directions[ESE]} ]]; then echo "⇨"; return
	elif [[ $degrees -gt ${directions[ESE]} && $degrees -le ${directions[SSE]} ]]; then echo "⇘"; return
	elif [[ $degrees -gt ${directions[SSE]} && $degrees -le ${directions[SSW]} ]]; then echo "⇩"; return
	elif [[ $degrees -gt ${directions[SSW]} && $degrees -le ${directions[WSW]} ]]; then echo "⇙"; return
	elif [[ $degrees -gt ${directions[WSW]} && $degrees -le ${directions[WNW]} ]]; then echo "⇦"; return
	elif [[ $degrees -gt ${directions[WNW]} && $degrees -le ${directions[NNW]} ]]; then echo "⇖"; return
	else echo "↹"; return
	fi
}

