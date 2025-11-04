#!/bin/bash
#
#Variable for remove log

removelog=/home/$USER/Desktop/remove.log

#Check if file exists
# -f checking if the variable given is a file
# ! = checks if the variable is not true
if [ ! -f $removelog ] ; then
    touch $removelog
fi

#Check for the number of arguments
# $# = checks for number of arguments
#  -eq, gt = greater than, lt = less than

if [ "$#" -eq 0 ] ; then
    echo "Please enter a list of files and/or directories to delete:" >&2
    read
    :exit 1
fi

# Checking for silent option
# -s must be the first arguments
# when this happens, it shifts the file to the first argument
# if -s isn't used, then it will add the line to the log section

if [ "$1" == "-s" ] ; then
    shift
else
    echo "$(date): $USER: $@" >> $removelog
fi

echo $1
/bin/rm "$1"

exit 0
