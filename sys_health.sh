#!/bin/bash

echo "CPU Usage: $(top -bn1 | grep 'Cpu(s)' | awk '{print $2}' | awk -F. '{print $1}')%"
echo "Memory Usage: $(free | awk '/Mem/{printf "%.2f%", $3/$2*100}')"
echo "Disk Usage: $(df -h | awk '$NF=="/"{printf "%s", $5}')"
echo "Active Users: $(who | wc -l)"
echo "Running Processes: $(ps aux | wc -l)"
