#!/usr/bin/env bash
# Module 1: System Information (Member 1)
# Utilities: hostname, uname

get_system_info() {
    echo "=========================================="
    echo " 1. SYSTEM INFORMATION"
    echo "=========================================="
    echo "Hostname       : $(hostname)"
    echo "OS / Kernel    : $(uname -s)"
    echo "Kernel Release : $(uname -r)"
    echo "Architecture   : $(uname -m)"

    if [ -f /etc/os-release ]; then
        os_name=$(grep "^PRETTY_NAME=" /etc/os-release | cut -d'"' -f2)
        echo "Distribution   : $os_name"
    fi
    echo ""
}