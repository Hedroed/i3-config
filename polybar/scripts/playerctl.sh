#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    echo " $(playerctl metadata --format '{{ artist }} - {{ title }}')"
elif [ "$player_status" = "Paused" ]; then
    echo " $(playerctl metadata --format '{{ artist }} - {{ title }}')"
else
    # No player
    echo ""
fi