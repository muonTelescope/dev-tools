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
  echo 'useage: sudo getTemp.sh 0'
  exit 1
fi

# 0x08 is the address for the single channel boards 
node -e 'new (require("./node_modules/mppc-interface/mppc-interface.js"))(0x08).readTemp('$1');'
