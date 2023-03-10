#!/bin/bash
function weatheremoji {
	# input $1: weather description
	# outputs : weather emoji đŦī¸
	# weather descriptions as used in Weather-Cli from Rayrsn
	# based on WMO weathercodes
	# not really bashisms but i've put it in a Bash function anyway,
	# also to discourage usage of unicode emoji in simple shells
	# - https://open-meteo.com/
	# - https://github.com/Rayrsn/Weather-Cli/blob/main/cmd/get.go
	# Evert Mouw 2023-01-15
	weatherdescription="$1"
	case $weatherdescription in
		#case "0":
		"Clear Sky") echo âī¸ ;;
		#case "1":
		"Mainly Clear") echo đ¤ī¸ ;;
		#case "2":
		"Partly Cloudy") echo đĨī¸ ;;
		#case "3":
		"Overcast") echo âī¸ ;;
		#case "45":
		"Fog") echo đĢī¸ ;;
		#case "48":
		"Depositing Rime Fog") echo đĢī¸đĻ ;;
		#case "51":
		"Light Drizzle") echo đĻ ;;
		#case "53":
		"Moderate Drizzle") echo đĻđĻ ;;
		#case "55":
		"Dense Drizzle") echo đĻđĻđĻ ;;
		#case "56":
		"Light Freezing Drizzle") echo đĻâī¸ ;;
		#case "57":
		"Dense Freezing Drizzle") echo đĻđĻđĻâī¸ ;;
		#case "61":
		"Slight Rain") echo đĻī¸ ;;
		#case "63":
		"Moderate Rain") echo đĻī¸ ;;
		#case "65":
		"Heavy Rain") echo đ§ī¸ ;;
		#case "66":
		"Light Freezing Rain") echo đĻī¸âī¸ ;;
		#case "67":
		"Heavy Freezing Rain") echo đ§ī¸âī¸ ;;
		#case "71":
		"Slight Snow Fall") echo đ¨ī¸ ;;
		#case "73":
		"Moderate Snow Fall") echo đ¨ī¸đ¨ī¸ ;;
		#case "75":
		"Heavy Snow Fall") echo đ¨ī¸đ¨ī¸đ¨ī¸ ;;
		#case "77":
		"Snow Grains") echo đ¨ī¸ ;;
		#case "80":
		"Slight Rain Showers") echo đ§ ;;
		#case "81":
		"Moderate Rain Showers") echo đ§đ§ ;;
		#case "82":
		"Violent Rain Showers") echo đ§đ§đ§ ;;
		#case "85":
		"Slight Snow Showers") echo đ¨ī¸ī¸âī¸ ;;
		#case "86":
		"Heavy Snow Showers") echo đ¨ī¸đ¨ī¸đ¨ī¸âī¸ ;;
		#case "95":
		"Thunderstorm") echo đŠī¸ ;;
		#case "96":
		"Thunderstorm With Light Hail") echo âī¸ ;;
		#case "99":
		"Thunderstorm With Heavy Hail") echo âī¸ ;;
		#default:
		"Unknown") echo đâ ;;
		*) echo âī¸ ;;
	esac
}

# test
weatheremoji "Slight Snow Showers"
