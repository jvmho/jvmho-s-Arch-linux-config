#!/bin/bash

CHOICE=$(printf "Logout\nReboot\nPoweroff" | wofi \
    --dmenu \
    --lines 3 \
    --prompt "Power" \
    --width 280 \
    --height 180 \
    --location 3 \
    --xoffset -35 \
    --yoffset 10)

case "$CHOICE" in
    "Logout")
        loginctl terminate-user "$USER"
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Poweroff")
        systemctl poweroff
        ;;
esac
