#!/bin/bash

choices="default\nheadphones"

chosen=$(echo -e "$choices" | rofi -show run -dmenu -p "sound")

case $chosen in
    default)
        i3exit lock
        ;;
    headphones)
        i3exit logout
        ;;
esac
