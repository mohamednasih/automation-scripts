#!/bin/bash

SCRIPTS_DIR="$HOME/.42_scripts"
INSTALL_PATH="$HOME/.42_scripts/remove_paired_devices.sh"

mkdir -p ~/.config/autostart
mkdir -p "$SCRIPTS_DIR"
cat << EOF > ~/.config/autostart/remove_paired_devices.desktop
[Desktop Entry]
Type=Application
Exec=$INSTALL_PATH
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=remove Paired Bluetooth Devices
Comment=Remove all paired Bluetooth devices at startup
EOF

cp ./remove_paired_devices.sh "$SCRIPTS_DIR/remove_paired_devices.sh"
chmod +x "$INSTALL_PATH"
echo "Installation complete. The script will run at startup."