#!/bin/bash

get_weatherData(){
#get user input
read -p "Enter a city e.g London, Italy etc: " city
echo ""
response=$(curl -s "https://wttr.in/${city}?format=j1")

#handle errors
if [ $? -ne 0 ]; then
	echo "Please check your internet connection"
	exit 1
fi

if [ -z "$response" ]; then
	echo "No data was given"
	exit 1
fi

if [ -z "$city" ]; then
	echo "Please input a city"
	exit 1
fi

#extract data points from API file
temp=$(echo "$response" | grep -o '"temp_C": "[^"]*"' | head -1 | cut -d'"' -f4)
cty_area=$(echo "$response" | grep -A 3 '"areaName"' | grep -o '"value": "[^"]*"' | head -1 | cut -d'"' -f4)
condtn=$(echo "$response" | grep -o '"value": "[^"]*"' | head -1 | cut -d'"' -f4)
humidity=$(echo "$response" | grep -o '"humidity": "[^"]*"' | head -1 | cut -d'"' -f4)
wind_speed=$(echo "$response" | grep -o '"windspeedKmph": "[^"]*"' | head -1 | cut -d'"' -f4)


#display extracted data to terminal
echo "====Weather Information===="
echo "City: $cty_area"
echo "Temperature: ${temp}℃"
echo "Condition: $condtn"
echo "Humidity: ${humidity}%"
echo "Windspeed: ${wind_speed}km/h"
echo "============================"
}
get_weatherData

#prompt user to look up another city
while true; do
	read -p "Check another city? (y/n): " c
	case $c in
		y) get_weatherData ;;
		n) exit 0 ;;
	esac
done
