#!/bin/bash
output_file="system_info.txt"
# Gather system information and save to a file
echo "System Information:" > "Soutput_file"
echo "-------mmmmmeeeeae " >> "Soutput_file"
echo "Hostname: $(hostname)" >> "Soutput_file"
echo "0S: $(uname -a)" >> "Soutput_file"
echo "Memory: $(free -h)" >> "Soutput_file"
echo "Disk Space: $(df -h)" >> "Soutput_file"
echo "System info saved to Soutput_file."