#!/bin/bash


echo "-------------------------"
echo "SYSTEM HEALTH REPORT"
echo "$(date)"
echo "-------------------------"


# ===== CPU USAGE =====
cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')

echo "⚙️  CPU Usage    : $cpu%"


# ===== MEMORY USAGE =====
# total_mem=$(free -h | awk '/Mem:/ {print $2}')
# used_mem=$(free -h | awk '/Mem:/ {print $3}')
# free_mem=$(free -h | awk '/Mem:/ {print $4}')

# echo "🧠 Total Memory : $total_mem"
# echo "🔴 Used Memory  : $used_mem"
# echo "🟢 Free Memory  : $free_mem"




total_mem=$(free -h | awk '/Mem:/ {print $2}')
total_used=$(free -h | awk '/Mem:/ {print $3}')
total_free=$(free -h | awk '/Mem:/ {print $4}')


echo "Total Memory : "$total_mem
echo "Total Memory Used : "$total_used
echo "Total Memory Free : "$total_free


















