#!/usr/bin/env bash


SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


MODULES=(
    "system_info.sh"
    "network.sh"
    "connectivity.sh"
    "resources.sh"
    "processes.sh"
    "users_uptime.sh"
)

for mod in "${MODULES[@]}"; do
    if [ -f "$SCRIPT_DIR/$mod" ]; then
        # shellcheck source=/dev/null
        source "$SCRIPT_DIR/$mod"
    else
        echo "[ERROR] Missing module: $mod"
        exit 1
    fi
done

generate_report() {
    local timestamp
    timestamp=$(date +"%Y%m%d_%H%M%S")
    local report_file="$SCRIPT_DIR/systemcare_report_${timestamp}.txt"

    {
        echo "##########################################"
        echo " SYSTEMCARE DIAGNOSTIC REPORT"
        echo " Generated on: $(date)"
        echo "##########################################"
        echo ""
        get_system_info
        get_network_info
        check_connectivity
        get_resource_usage
        get_process_info
        get_users_uptime
    } > "$report_file"

    echo "[SUCCESS] Report exported to: $report_file"
}

while true; do
    clear
    echo "=========================================="
    echo "   SystemCare - Linux Health Toolkit"
    echo "=========================================="
    echo " 1. System Information"
    echo " 2. Network Interfaces & Routing"
    echo " 3. Internet & DNS Connectivity Check"
    echo " 4. Memory & Disk Usage"
    echo " 5. Running Processes"
    echo " 6. System Uptime & User Sessions"
    echo " 7. Export Full Diagnostic Text Report"
    echo " 8. Exit"
    echo "=========================================="
    read -rp "Enter your choice [1-8]: " choice
    echo ""

    case "$choice" in
        1) get_system_info ;;
        2) get_network_info ;;
        3) check_connectivity ;;
        4) get_resource_usage ;;
        5) get_process_info ;;
        6) get_users_uptime ;;
        7) generate_report ;;
        8) echo "Exiting SystemCare. Goodbye!"; exit 0 ;;
        *) echo "[INVALID] Please enter a number between 1 and 8." ;;
    esac

    read -rp "Press [Enter] to return to the menu..."
done
