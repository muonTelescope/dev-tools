#!/bin/bash
# Make sure script is run with root
if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

# Print out the gps json object that comes back
node -e 'var NEO6m = require("./node_modules/neo6m/neo6m.js"); var gps = new NEO6m(); while (true) {try {var data = gps.data();} catch (EIO) {console.log("Communication error"); break;} if (data != null) { console.log(data);break; }}'