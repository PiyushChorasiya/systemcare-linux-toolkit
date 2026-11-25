#!/usr/bin/env bash
# Module 2: Network Interfaces & Routing (Member 2)

get_network_info() {
    echo "=========================================="
    echo " 2. NETWORK INTERFACES & ROUTING"
    echo "=========================================="
    echo "Local IP(s)    : $(hostname -I)"
    echo ""
    echo "--- Interface Link Status ---"
    ip -br link
    echo ""
    echo "--- Assigned IP Addresses ---"
    ip -br addr
    echo ""
    echo "--- Kernel Routing Table ---"
    ip route
    echo ""
}
