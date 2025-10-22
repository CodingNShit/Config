#!/bin/bash

terminal="uwsm app -- $TERMINAL"
browser="omarchy-launch-browser --profile-directory=Default"
editor="omarchy-launch-editor"
docker="$terminal -e lazydocker"

hyprctl dispatch exec "[workspace 1 silent; noanim] $browser"
hyprctl dispatch exec "[workspace 2 silent; noanim] $editor"
hyprctl dispatch exec "[workspace 3 silent; noanim] $terminal"
