#!/bin/bash


# Check if sudo user
if sudo -n true &>/dev/null; then
    echo "User has sudo permissions."
else
    echo "User requires a password for sudo, or does NOT have sudo access."
    exit 1
fi

# Echo IP Address
ip_address=$(hostname -I)
echo "IP ADDRESS: $ip_address"

# Grab Netmask
netmask=$(ifconfig | grep "netmask" | tail -n 1 | awk '{ print $4 }')

# IP and range input
read -p "Enter the IP range to scan (EX: 192.168.1.0/24):" range
echo "Starting scan on $range"

# Perform Scan
scan_output=$(mktemp)
nmap -sn -PR $range -oG "$scan_output"

# Extract
echo "IP Address --- MAC Address -- Est. Name"
echo "--------------------------------------------"
while read -r line; do
    if [[ "$line" == Host* ]]; then
        IP=$(echo "$line" | awk '{print $2}')
        MAC=$(echo "$line" | grep -oE "MAC Address: [0-9A-F:]{17}]" | awk '{print $3}')
        NAME=$(echo "$line" | grep -oE "\((.*?)\)" | sed 's/[()]//g')
        
        [[ -z $MAC ]] && MAC="Unknown"
        [[ -z $NAME ]] && NAME="Unknown"
        
        echo "$IP --- $MAC --- $NAME"
    fi
done < "$scan_output"
rm "$scan_output"
