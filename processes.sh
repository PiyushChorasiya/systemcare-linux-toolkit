#!/usr/bin/env bash
# Module 5: Running Processes (Member 5)
# Utilities: ps

get_process_info() {
    echo "=========================================="
    echo " 5. RUNNING PROCESSES"
    echo "=========================================="
    total_procs=$(ps -e --no-headers | wc -l)
    echo "Total Active Processes: $total_procs"
    echo ""
    echo "--- Top 10 Processes by CPU Usage ---"
    ps -eo pid,user,comm,%cpu,%mem --sort=-%cpu | head -n 11
    echo ""
}
