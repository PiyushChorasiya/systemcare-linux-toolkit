#!/usr/bin/env bash
# Module 7: Storage & Block Devices (Member 8)

get_storage_devices() {
    echo "=========================================="
    echo " 7. STORAGE & BLOCK DEVICES"
    echo "=========================================="
    echo "--- Connected Drives & Partitions (lsblk) ---"
    lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINT
    echo ""
    echo "--- Filesystem Types & Usage (df -hT) ---"
    df -hT -x tmpfs -x devtmpfs
    echo ""
}
