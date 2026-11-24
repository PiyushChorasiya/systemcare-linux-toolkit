# SystemCare — Linux System Health Monitoring & Management Toolkit

A modular, menu-driven Bash terminal utility developed by a 7-member team for the **System Programming and Scripting (SPS)** course at **IIIT Lucknow**. Built using pure Bash and standard Linux CLI tools with zero external dependencies.

## Repository Structure

    systemcare-linux-toolkit/
    ├── README.md
    ├── main.sh          # Member 7: Main menu loop, module integration & report export
    ├── system_info.sh   # Member 1: Hostname, OS, and kernel details
    ├── network.sh       # Member 2: IP addresses, network interfaces, and routing table
    ├── connectivity.sh  # Member 3: Internet reachability and DNS resolution checks
    ├── resources.sh     # Member 4: RAM and disk space utilization
    ├── processes.sh     # Member 5: Active process count and top CPU consumers
    └── users_uptime.sh  # Member 6: System uptime, load averages, and user login sessions

## Quick Start

    git clone https://github.com/harmanit-eng/systemcare-linux-toolkit.git
    cd systemcare-linux-toolkit
    chmod +x *.sh
    ./main.sh
