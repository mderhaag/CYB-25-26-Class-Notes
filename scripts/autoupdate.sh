#!/bin/bash

# START SCRIPT
echo "Welcome, $user"
echo "Beginning autoupdate script..."
echo $date $time
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

# INFORM (?)
echo "Upgrade script complete at $date $time"

# ASK
echo "Would you like to reboot, exit, or shutdown the pi? (r,e,s)"

# EXECTUTE
read $answer
case $answer in
   "r")
        echo "Starting reboot now"
        sudo reboot now
        ;;
   "e") echo "Exiting now..."
        sudo exit now
        ;;
   "s") echo "Shutting down..."
        sudo shutdown now
        ;;
    end
