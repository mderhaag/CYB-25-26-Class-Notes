#!/bin/bash
#
#Checking free space
echo "Showing used space:"


# df -h = gets the disk free human readable format
# prints out the 5th column, or use percentage that we have
# grep searches for everything to not include Uuse
# cut is for cutting by the % sign, and printing the first field
# sed prints out the third line
#
space=$(df -h | awk '{print $5}' | grep -v Use | cut -d "%" -f1 | sed -n '3p') 
echo $space

case $space in
    [1-6]*)
        Message="You're good, you've only used $space%."
        ;;
    [7-8]*)
        Message="Keep an eye on your home directory. It is using $space%"
        ;;
    9[1-8])
        Message="Please add room. Home is at $space% full"
        ;;
   
    99)
        Message="I'm drowning here! Home is at $space% full!"
        ;;
    *)
        Message="It's too late for me..."
        ;;
esac

echo $Message 
