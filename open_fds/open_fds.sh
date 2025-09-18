#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: ./open_fds pid|tty"
    exit 1
fi

# Get the TTYs matching the input
pids=$(ps a -o pid,tty | grep "$1" | tr -s ' ' | awk '{print $1}')

for pid in $pids; do
    # List file descriptors and extract relevant fields
    fds=$(ls -l /proc/$pid/fd 2>/dev/null | tr -s ' ' | awk '{print $9, $10, $11}') || continue

    # Get the command for this PID
    cmd=$(ps a -o pid,cmd | grep "$pid" | grep -v 'grep' | tr -s ' ' | awk '{print $2}')

    echo "command : $cmd($pid)"
    echo "$fds"
    echo "-----------"
done
