#!/bin/bash

#rofi_command=$(rofi -show run -dmenu -p "System")

choices="lock\nlog out\nreboot\nshut down"

chosen=$(echo -e "$choices" | rofi -show run -dmenu -p "system")

case $chosen in
    lock)
        i3exit lock
        ;;
    "log out")
        i3exit logout
        ;;
    reboot) 
        i3exit reboot
        ;;
    "shut down")
        i3exit shutdown
        ;;
esac

