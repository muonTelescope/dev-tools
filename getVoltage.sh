#!/bin/bash
# Make sure script is run with root
if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

# Check if two variables are defined
if [[ -z $1 ]]; then
  echo 'Missing parameter channel'
  echo 'useage: sudo getVoltage.sh 0'
  exit 1
fi

# 0x08 is the address for 
node -e 'new (require("./mppcHV"))(0x08).readVoltage('$1');'