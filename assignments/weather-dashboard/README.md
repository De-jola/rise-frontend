## PROJECT DESCRIPTION
This project consists of three executable files, how to run them and snippets of expected results. The executable files are 
```
./weather.sh
./sysinfo.sh
./dashboard.sh
```
## Weather Information
The executable file ```./weather.sh```
connects to the API ```https://wtrr.in/{CITY}?format=j1 ```
and extracts weather data for whatever city is queried.

How to Use
----------
1) Clone this repository ``` 
https://github.com/De-jola/rise-frontend.git```
on your local device
2) Open your terminal (I recommend using ```Git Bash or Hyper```
for this project)
3) In the directory of the cloned repository, navigate to ./weather.sh which is located inside the weather-dashboard/ folder.
4) Make the file executable, run ```
chmod +x *.sh```
5) Run ./weather.sh and follow the prompt
6) Get weather data for any city of your choice!

Sample Output: ```
Enter a city e.g London, Italy etc: lekki

====Weather Information====
City: Ebute Leki
Temperature: 34℃
Condition: Sunny
Humidity: 32%
Windspeed: 4km/h
============================
Check another city? (y/n):```

## System Information
The executable file ```./sysinfo.sh```
provides data about user system. 

How to Use
----------
1) Run ```./sysinfo.sh```
 to get both system and network information
2) To get just system information, add the system flag. Run : ```
./sysinfo.sh --system```
3) To get just network information, add the network flag. Run: ```
./sysinfo.sh --network```

Sample Output:```
==== System Information ====
Date and Time: Fri, Jan 23, 2026 12:11:29 PM
Username: john
Current Directory: /c/Users/john/Documents/rise-frontend/assignments/weather-dashboard
Home Directory: /c/Users/john
Files in Current Directory: 13
============================
```

Sample Output(Network Info):```
==== Network Information ====

Hostname: Dell-laptop17
Non-authoritative answer:
Connected✅
Google IP: 2a00:1450:4007:80d::200e

=============================
```

## System Dashboard
This file provides a dashboard with a menu of what action you wish to take.
You have to select from numbers ```(1-4)```
as options for whichever action you wish to take.

How to Use
----------
1) Run ```./dashboard.sh```
2) Select from the dropdown menu 
3) Have fun! :)

Sample Output:
