#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
if [ "$1" == "light" ]
then
	polybar -c $HOME/.config/polybar/light-config nord-down &
else
	polybar -c $HOME/.config/polybar/dark-config nord-down &
fi

echo "Bars launched..."
