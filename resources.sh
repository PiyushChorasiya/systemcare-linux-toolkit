#!/usr/bin/env bash
# Module 4: Memory & Disk Usage (Member 4)
# Utilities: free, df

get_resource_usage() {
    echo "=========================================="
    echo " 4. MEMORY & DISK USAGE"
    echo "=========================================="
    echo "--- RAM & Swap Usage (free -h) ---"
    free -h
    echo ""
    echo "--- Disk Usage (df -h, excluding virtual filesystems) ---"
    df -h -x tmpfs -x devtmpfs
    echo ""
}