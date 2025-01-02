#!/bin/bash

# Log file location
log_file="/var/log/apache2/access.log"

# Check if the log file exists
if [[ ! -f "$log_file" ]]; then
    echo "Error: Log file not found at $log_file"
    exit 1
fi

echo "Analyzing web server log: $log_file"

# 1. Count unique IP addresses
echo -e "\n1. Unique IP addresses:"
awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr | head -10

# 2. List top 10 IPs making requests
echo -e "\n2. Top 10 IP addresses making requests:"
awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr | head -10

# 3. Count requests for each HTTP method
echo -e "\n3. Count of requests for each HTTP method:"
awk '{print $6}' "$log_file" | sed 's/"//' | sort | uniq -c | sort -nr

# 4. Identify the most requested URLs
echo -e "\n4. Top 10 requested URLs:"
awk '{print $7}' "$log_file" | sort | uniq -c | sort -nr | head -10

# 5. Count HTTP response status codes
echo -e "\n5. HTTP response status codes count:"
awk '{print $9}' "$log_file" | sort | uniq -c | sort -nr

# 6. Filter logs by specific date (e.g., 01/Jan/2025)
read -p "Enter a specific date to filter logs (e.g., 01/Jan/2025): " filter_date
if [[ -n "$filter_date" ]]; then
    echo -e "\n6. Logs for the date: $filter_date"
    grep "$filter_date" "$log_file" | head -10
else
    echo -e "\n6. No date filter applied."
fi

echo -e "\nLog analysis complete."
