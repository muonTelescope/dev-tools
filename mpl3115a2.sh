#!/bin/bash
# Make sure script is run with root
if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

sudo node -e 'console.log(new (require("mpl3115a2"))().data())'
