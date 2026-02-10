. "$HOME/.cargo/env"

# Force apps to prefer Wayland
export MOZ_ENABLE_WAYLAND=1    # Firefox
export QT_QPA_PLATFORM=wayland # Qt apps (KDE apps, etc.)
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_SCALE_FACTOR_ROUNDING_POLICY=RoundPreferFloor

# Electron apps (Discord, Slack, VS Code, etc.)
export ELECTRON_OZONE_PLATFORM_HINT=wayland
export NPM_CONFIG_ELECTRON_RUN_AS_NODE=1 # prevents weird crashes

# GTK fallback scaling tweaks
export GDK_SCALE=1
export GDK_DPI_SCALE=1

# make sdl2 use pulseaudio to fix screen sharing audio issue
export SDL_AUDIODRIVER=pulseaudio
