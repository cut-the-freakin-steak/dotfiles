#!/bin/sh

if [[ $(hyprctl activewindow -j | jq -r ".class") == "steam" ]]; then
	xdotool windowunmap $(xdotool getactivewindow)
else
	hyprctl dispatch killactive ""
fi
