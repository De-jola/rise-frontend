#!/bin/bash

get_dashboard(){
echo "================================="
echo "  SYSTEM DASHBOARD "
echo "================================="
echo ""

echo "1. Check Weather ☁️"
echo "2. View System Info"
echo "3. View Network Info"
echo "4. Exit"
echo ""
echo "================================="

read -p "Enter choice (1-4): " c
echo ""

case $c in
	1) ./weather.sh ;;
	2) ./sysinfo.sh --system;;
	3) ./sysinfo.sh --network;;
	4) echo "Goodbye..."
		exit 0 ;;
	*) echo "Invalid" ;;
esac
}

while true; do
	read -p "Press Enter to continue..."
	get_dashboard
done
