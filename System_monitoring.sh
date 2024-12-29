#!/bin/bash
threshold=90
# Monitor CPU usage and trigger alert if threshold exceeded
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)
if [ "Scpu_usage" -gt "Sthreshold" ]; then
    echo "High CPU usage detected: $cpu_usage%"
    # Add alert/notification logic here
fi