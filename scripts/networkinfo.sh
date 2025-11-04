#!/bin/bash
#
#
# User info
echo "User info:"
echo "- User: $(whoami)"
echo "- Date: $(date)"

# Network info
echo "- Network Name: $(iwgetid)"
echo "- IP address: $(ifconfig | grep inet | awk 'FNR == 3 {print $2; exit}')"
echo "- Mac address: $(ifconfig | awk '/ether/ {print $2}')"
echo "- Range: $(ifconfig | grep netmask | awk '{print $4}')"
echo "- Gateway: $(ip route show | awk '/default via/ {print $3}')"
echo " - Broadcast: $(ip addr show | awk '/inet / && /brd / {print $4}' | sed 's/brd//g' | awk '{print $1}')"
