#!/bin/bash
# Trackpad toggle script for Hyprland

TRACKPAD="elan0307:00-04f3:3282-touchpad"

# Use a state file to track enabled/disabled status
STATE_FILE="/tmp/trackpad-state"

if [ -f "$STATE_FILE" ] && [ "$(cat $STATE_FILE)" = "disabled" ]; then
    # Enable trackpad
    hyprctl keyword device[$TRACKPAD]:enabled true
    echo "enabled" > $STATE_FILE
    notify-send "Trackpad" "Enabled" -t 2000
else
    # Disable trackpad
    hyprctl keyword device[$TRACKPAD]:enabled false
    echo "disabled" > $STATE_FILE
    notify-send "Trackpad" "Disabled" -t 2000
fi
