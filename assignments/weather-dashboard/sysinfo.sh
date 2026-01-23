#!/bin/bash
get_systemInfo(){
echo "==== System Information ===="
echo "Date and Time: $(date)"
echo "Username: $(whoami)"
echo "Current Directory: $(pwd)"
echo "Home Directory:" ~
echo "Files in Current Directory: $(ls | wc -l)"
echo "============================"
echo ""
}

get_networkInfo(){
echo "==== Network Information ===="
echo""
echo "Hostname: $(hostname)"
response=$(nslookup google.com)
ip_address=$(echo "$response" |grep "Addresses:"| tail -1| awk '{print $2}')
connectivity_status=$(ping google.com)

if  [  $? -eq 0 ]; then
	echo "Connected✅"
else
	echo "Not Connected"
fi
echo "Google IP: $ip_address"
echo""
echo "============================="
echo ""
}
case "$1" in 
	--system)
		get_systemInfo ;;
	--network)
		get_networkInfo ;;
	*)
		get_systemInfo
		get_networkInfo ;;
esac
