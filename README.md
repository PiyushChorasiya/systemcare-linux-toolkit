# SystemCare — Modular Linux System Health Monitoring Toolkit

A menu-driven, modular Bash toolkit that consolidates essential Linux diagnostic checks and generates timestamped system health reports using standard CLI tools with zero external dependencies.

## Repository Structure

    systemcare-linux-toolkit/
    ├── README.md
    ├── main.sh             # Member 7: Main menu loop, module orchestration, and report export
    ├── system_info.sh      # Member 1: Hostname, OS, and kernel details
    ├── network.sh          # Member 2: IP addresses, network interfaces, and routing table
    ├── connectivity.sh     # Member 3: Internet reachability and DNS check
    ├── resources.sh        # Member 4: RAM and disk space utilization
    ├── processes.sh        # Member 5: Active process count and top resource consumers
    ├── users_uptime.sh     # Member 6: System uptime, load average, and logged-in users
    └── storage.sh          # Member 8: Storage drives, partitions, and filesystem types

## Quick Start

    git clone https://github.com/PiyushChorasiya/systemcare-linux-toolkit.git
    cd systemcare-linux-toolkit
    chmod +x *.sh
    ./main.sh
