# remove_paired_devices.sh & install.sh

Scripts to automatically remove all paired Bluetooth devices at startup on GNOME-based Linux systems.

---

## Files
- `remove_paired_devices.sh`: Script to remove all paired Bluetooth devices.
- `install.sh`: Installs `remove_paired_devices.sh` and sets it to run automatically at startup.

---

## Installation

Run the installer script:
```bash
./install.sh
```
- Copies `remove_paired_devices.sh` to `~/.42_scripts/`.
- Makes the script executable.
- Creates a GNOME autostart entry so the script runs at login.

---

## How It Works
- At each login, the script will execute and remove all paired Bluetooth devices.
- The autostart entry is created at `~/.config/autostart/remove_paired_devices.desktop`.

---

## Notes
- Requires GNOME desktop environment for autostart functionality.
- Make sure both scripts are executable: `chmod +x install.sh remove_paired_devices.sh`
- You can manually run `remove_paired_devices.sh` at any time.

---
