#!/bin/bash
#
a=("ifconfig | awk '{print $1}' | sed -n 8p'

echo "This is the $a interface"

