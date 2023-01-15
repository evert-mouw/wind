#!/bin/bash
function weatheremoji {
	# input $1: weather description
	# outputs : weather emoji 🌬️
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
		"Clear Sky") echo ☀️ ;;
		#case "1":
		"Mainly Clear") echo 🌤️ ;;
		#case "2":
		"Partly Cloudy") echo 🌥️ ;;
		#case "3":
		"Overcast") echo ☁️ ;;
		#case "45":
		"Fog") echo 🌫️ ;;
		#case "48":
		"Depositing Rime Fog") echo 🌫️💦 ;;
		#case "51":
		"Light Drizzle") echo 💦 ;;
		#case "53":
		"Moderate Drizzle") echo 💦💦 ;;
		#case "55":
		"Dense Drizzle") echo 💦💦💦 ;;
		#case "56":
		"Light Freezing Drizzle") echo 💦❄️ ;;
		#case "57":
		"Dense Freezing Drizzle") echo 💦💦💦❄️ ;;
		#case "61":
		"Slight Rain") echo 🌦️ ;;
		#case "63":
		"Moderate Rain") echo 🌦️ ;;
		#case "65":
		"Heavy Rain") echo 🌧️ ;;
		#case "66":
		"Light Freezing Rain") echo 🌦️❄️ ;;
		#case "67":
		"Heavy Freezing Rain") echo 🌧️❄️ ;;
		#case "71":
		"Slight Snow Fall") echo 🌨️ ;;
		#case "73":
		"Moderate Snow Fall") echo 🌨️🌨️ ;;
		#case "75":
		"Heavy Snow Fall") echo 🌨️🌨️🌨️ ;;
		#case "77":
		"Snow Grains") echo 🌨️ ;;
		#case "80":
		"Slight Rain Showers") echo 💧 ;;
		#case "81":
		"Moderate Rain Showers") echo 💧💧 ;;
		#case "82":
		"Violent Rain Showers") echo 💧💧💧 ;;
		#case "85":
		"Slight Snow Showers") echo 🌨️️☃️ ;;
		#case "86":
		"Heavy Snow Showers") echo 🌨️🌨️🌨️☃️ ;;
		#case "95":
		"Thunderstorm") echo 🌩️ ;;
		#case "96":
		"Thunderstorm With Light Hail") echo ⛈️ ;;
		#case "99":
		"Thunderstorm With Heavy Hail") echo ⛈️ ;;
		#default:
		"Unknown") echo 🌄❓ ;;
		*) echo ⁉️ ;;
	esac
}

# test
weatheremoji "Slight Snow Showers"
