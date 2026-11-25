#!/usr/bin/env bash
# Module 6: System Uptime, Load Average & User Sessions (Member 6)
# Utilities: uptime, who, last

get_users_uptime() {
    echo "=========================================="
    echo " 6. SYSTEM UPTIME & USER SESSIONS"
    echo "=========================================="
    echo "Current User   : $(whoami)"
    echo "Uptime & Load  : $(uptime -p) ($(uptime | awk -F'load average:' '{print $2}' | xargs))"
    echo ""
    echo "--- Currently Logged-In Sessions (who) ---"
    active_sessions=$(who)
    if [ -n "$active_sessions" ]; then
        echo "$active_sessions"
    else
        echo "No interactive TTY login sessions detected."
    fi
    echo ""
    echo "--- Recent Login History (last -n 5) ---"
    if command -v last > /dev/null 2>&1; then
        last -n 5
    else
        echo "'last' utility not available on this system."
    fi
    echo ""
}