#!/bin/bash
output_file="system_health_check.txt"
# Perform system health check and save results to a file
echo "System Health Check:" > "Soutput_file"
echo "------mmmmmmmemoo " >> "Soutput_file"
echo "Uptime: $(uptime)” >> "Soutput_file"
echo "Load Average: $(cat /proc/loadavg)” >> "Soutput_file"
echo "Memory Usage: $(free -m)" >> "Soutput_file"
echo "System health check results saved to Soutput_file."