#!/bin/bash
host="example.com"
# Check network connectivity by pinging a host
if ping -c¢ 1 "S$host" &> /dev/null; then
    echo "Network is up."
else
    echo "Network is down."
fi