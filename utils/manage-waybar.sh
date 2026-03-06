if [ $(pgrep -c waybar) = "0" ]; then
	waybar
else
	pkill waybar
fi
