#!/bin/bash

# Use actual values
export DISPLAY=:2
export XDG_RUNTIME_DIR=/run/user/1000
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

# Optional log
echo "$(date) >> ACPI wrapper triggered!" >>/tmp/powerbutton.log

# Launch script as your user
su - chandan -c "/home/chandan/.config/ml4w/scripts/wlogout.sh"
