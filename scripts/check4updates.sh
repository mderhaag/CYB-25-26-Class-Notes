#!/bin/bash
#
# supposed to check for updates and print status
echo "Checking for updates..."

sudo apt update

if [ $? -eq 0 ] ; then
    echo "System update complete!"
    sudo apt list --upgradeable | grep -v "Listing..."
    echo "You have $(sudo apt-get -u update | wc -l) packages that can be updated"
else
    echo "Something went wrong"
fi
