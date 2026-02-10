#!/bin/sh

if [ $1 = "region" ]; then
	grim -g "$(slurp)" /tmp/shot.png && satty --filename /tmp/shot.png
elif [ $1 = "screen" ]; then
	res=$(hyprctl monitors -j | jq -r '
	.[] | select(.focused) |
	"\((.x)|round),\((.y)|round) \((.width / .scale)|round)x\((.height / .scale)|round)" 
	')
	grim -g "$res" /tmp/shot.png && satty --filename /tmp/shot.png
else
	echo "what"
fi
