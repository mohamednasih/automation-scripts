#!/bin/bash

# Make sure bluetoothctl is available
if ! command -v bluetoothctl &> /dev/null; then
    echo "bluetoothctl not found. Please install bluez."
    exit 1
fi

# Get all paired devices (MAC addresses)
devices=$(bluetoothctl paired-devices | awk '{print $2}')

if [ -z "$devices" ]; then
    echo "No paired Bluetooth devices found."
    exit 0
fi

for dev in $devices; do
    echo "Removing $dev ..."
    bluetoothctl disconnect "$dev"
    bluetoothctl remove "$dev"
done

echo "All paired Bluetooth devices have been removed."