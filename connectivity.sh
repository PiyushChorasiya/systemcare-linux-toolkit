#!/usr/bin/env bash
# Module 3: Internet & DNS Connectivity (Member 3)
# Utilities: ping, getent

check_connectivity() {
    echo "=========================================="
    echo " 3. CONNECTIVITY & DNS HEALTH"
    echo "=========================================="

    if ping -c 2 -W 2 8.8.8.8 > /dev/null 2>&1; then
        echo "Internet (8.8.8.8) : [OK] Reachable"
    else
        echo "Internet (8.8.8.8) : [FAIL] Unreachable"
    fi

    dns_result=$(getent hosts google.com | head -n 1)
    if [ -n "$dns_result" ]; then
        echo "DNS (google.com)   : [OK] Resolved -> $dns_result"
    else
        echo "DNS (google.com)   : [FAIL] Could not resolve domain"
    fi
    echo ""
}