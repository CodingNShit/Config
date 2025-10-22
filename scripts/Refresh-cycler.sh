#!/bin/bash

# Get the current refresh rate
current=$(hyprctl monitors -j | jq -r '.[0].refreshRate' | cut -d. -f1)

# Cycle through rates: 60 -> 120 -> 144 -> 60
case $current in
    60)
        next=144
        ;;
    144)
        next=60
        ;;
    *)
        # Default to 60 if current rate is unknown
        next=60
        ;;
esac

# Apply the new refresh rate with full format
hyprctl keyword monitor ,1920x1080@${next},auto,1

# Send notification (optional, requires dunst or similar)
notify-send "Refresh Rate" "Changed to ${next}Hz" -t 2000
