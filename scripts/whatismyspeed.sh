#!/bin/bash

# Log file:
log_file="speedtest.log"

# Runs the application (speedtest-cli) + stores the results
speedtest_output=$(speedtest-cli --simple)

# Pulls out the data:
server=$(speedtest-cli | grep "Testing from" | sed 's/Testing from //')
download=$(echo "$speedtest_output" | grep "Download" | awk '{print $2}')
upload=$(echo "$speedtest_output" | grep "Upload" | awk '{print $2}')
unit=$(echo "$speedtest_output" | grep "Download" | awk '{print $3}')

# time variable
timestamp=$(date '+%Y-%m-%d %H:%M:%S')

# Results
{
    echo "Speedtest run on: $timestamp"
    echo "Server: $server"
    echo "Download Speed: $download $unit"
    echo "Upload Speed: $upload $unit"
} >> log_file

# RECOMMENDATIONS! (based on data results)
if (( $(echo "download < 10" | bc -l) )); then
    message="Your speed is **absolutely awful**! Time to scream at your ISP!"
elif (( $(echo "$download < 40" | bc -l) )); then
    message="Your speed is terrible! Yell at your ISP... right now!"
elif (( $(echo "$download < 100" | bc -l) )); then
    message="Not bad, but could be faster. Maybe reboot your router?"
else
    message="Nice! Your connection is solid."
fi

# display results
echo -e "Speedtest Results:"
echo "Server: $server"
echo "Download: $download $unit"
echo "Upload: $upload $unit"
echo "Recommendation: $message"

# Add the recommendation to log file
# echo "Recommendation: $message" >> "log_file"
# echo "" >> "$log_file"
