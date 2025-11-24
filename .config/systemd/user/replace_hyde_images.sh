#!/bin/sh

cp -f /home/steak/dotfiles/.cache/hyde/rw_gbworms.blur /home/steak/.cache/hyde/wall.blur
cp -f /home/steak/dotfiles/.cache/hyde/rw_family.quad /home/steak/.cache/hyde/wall.quad
cp -f /home/steak/dotfiles/.cache/hyde/rw_gbworms.set /home/steak/.cache/hyde/wall.set
cp -f /home/steak/dotfiles/.cache/hyde/rw_nesting.sqre /home/steak/.cache/hyde/wall.sqre
cp -f /home/steak/dotfiles/.cache/hyde/rw_gbworms.thmb /home/steak/.cache/hyde/wall.thmb
cp -f /home/steak/dotfiles/.cache/hyde/wallpapers/rw_gbworms.png /home/steak/.cache/hyde/wallpapers/swww.png
cp -f /home/steak/dotfiles/.cache/hyde/wallpapers/rw_gbworms.png /home/steak/.cache/hyde/wallpapers/hyprlock.png

hydectl wallpaper --global set /home/steak/dotfiles/.cache/hyde/wallpapers/rw_gbworms.png
