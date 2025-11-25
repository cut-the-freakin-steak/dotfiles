#!/bin/sh

#! PREREQUISITES
cd

figlet -f small updating your system now, boy
sudo pacman --noconfirm -Syu

figlet -f small installing yay, the aur helper, now, boy
sudo pacman --noconfirm -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

sudo pacman --noconfirm -S figlet

#! START OF PACMAN INSTALLATIONS
figlet -f small using pacman to install stuff now, boy
figlet installing flatpak now, boy
sudo pacman --noconfirm -S flatpak

figlet -f small installing flathub now, boy
flatpak install -y flathub

figlet -f small installing ghostty now, boy
sudo pacman --noconfirm -S ghostty

figlet -f small installing easyeffects now, boy
sudo pacman --noconfirm -S easyeffects

figlet -f small installing ast-grep now, boy
sudo pacman --noconfirm -S ast-grep

figlet -f small installing c3c, the c3 compiler, now, boy
sudo pacman --noconfirm -S c3c

figlet -f small installing clang now, boy
sudo pacman --noconfirm -S clang

figlet -f small installing clapper now, boy
sudo pacman --noconfirm -S clapper

figlet -f small installing cmake now, boy
sudo pacman --noconfirm -S cmake

figlet -f small installing discord now, boy
sudo pacman --noconfirm -S discord

figlet -f small installing all the dotnet tools now, boy
sudo pacman --noconfirm -S dotnet-host
sudo pacman --noconfirm -S dotnet-runtime
sudo pacman --noconfirm -S dotnet-runtime-8.0
sudo pacman --noconfirm -S dotnet-runtime-7.0
sudo pacman --noconfirm -S dotnet-sdk
sudo pacman --noconfirm -S dotnet-sdk-8.0
sudo pacman --noconfirm -S dotnet-sdk-7.0
sudo pacman --noconfirm -S dotnet-source-built-artifacts
sudo pacman --noconfirm -S dotnet-targeting-pack

figlet -f small installing fd now, boy
sudo pacman --noconfirm -S fd

figlet -f small installing ffmpeg now, boy
sudo pacman --noconfirm -S ffmpeg

figlet -f small installing firefox now, boy
sudo pacman --noconfirm -S firefox

figlet -f small installing font-awesome now, boy
sudo pacman --noconfirm -S ttf-font-awesome
sudo pacman --noconfirm -S otf-font-awesome

figlet -f small installing fzf now, boy
sudo pacman --noconfirm -S fzf

figlet -f small installing git tools now, boy
sudo pacman --noconfirm -S git
sudo pacman --noconfirm -S git-lfs

figlet -f small installing gimp now, boy
sudo pacman --noconfirm -S gimp

figlet -f small installing godot and godot c# now, boy
sudo pacman --noconfirm -S godot
sudo pacman --noconfirm -S godot-mono

figlet -f small installing helix now, boy
sudo pacman --noconfirm -S helix

figlet -f small installing llvm now, boy
sudo pacman --noconfirm -S llvm

figlet -f small installing qt5-6 now, boy
sudo pacman --noconfirm -S qt5-base
sudo pacman --noconfirm -S qt6-base

figlet -f small installing mouse utilities now, boy
sudo pacman --noconfirm -S libratbag
sudo pacman --noconfirm -S piper

figlet -f small installing libusb now, boy
sudo pacman --noconfirm -S libusb

figlet -f small installing lua stuff now, boy
sudo pacman --noconfirm -S lua
sudo pacman --noconfirm -S luau
sudo pacman --noconfirm -S luarocks

figlet -f small installing installing md4c now, boy
sudo pacman --noconfirm -S md4c

figlet -f small installing mullvad now, boy
sudo pacman --noconfirm -S mullvad-vpn

figlet -f small installing neovim now, boy
sudo pacman --noconfirm -S neovim

figlet -f small installing obs now, boy
sudo pacman --noconfirm -S obs-studio

figlet -f small installing python now, boy
sudo pacman --noconfirm -S python python-pip python-pipx

figlet -f small installing range-v3 now, boy
sudo pacman --noconfirm -S range-v3

figlet -f small installing raylib now, boy
sudo pacman --noconfirm -S raylib

figlet -f small installing ripgrep now, boy
sudo pacman --noconfirm -S ripgrep
sudo pacman --noconfirm -S ripgrep-all

figlet -f small installing spotify now, boy
sudo pacman --noconfirm -S spotify-launcher

figlet -f small installing starship prompt now, boy
sudo pacman --noconfirm -S starship

figlet -f small installing steam now, boy
sudo pacman --noconfirm -S steam

figlet -f small installing stow now, boy
sudo pacman --noconfirm -S stow

figlet -f small installing timeshift now, boy
sudo pacman --noconfirm -S timeshift

figlet -f small installing tree-sitter now, boy
sudo pacman --noconfirm -S tree-sitter tree-sitter-cli

figlet -f small installing wine now, boy
sudo pacman --noconfirm -S wine

figlet -f small installing xclip now, boy
sudo pacman --noconfirm -S xclip

figlet -f small installing yt-dlp now, boy
sudo pacman --noconfirm -S yt-dlp

figlet -f small installing zsh and changing default shell to it now, boy
sudo pacman -noconfirm -S zsh
chsh -s /bin/zsh

figlet -f small installing java 21 now, boy
sudo pacman --noconfirm -S jdk21-openjdk

figlet -f small installing calf audio plugins now, boy
sudo pacman --noconfirm -S calf

figlet -f small installing linux studio plugins now, boy
sudo pacman --noconfirm -S lsp-plugins

figlet -f small installing prism launcher now, boy
sudo pacman --noconfirm -S prismlauncher

figlet -f small installing npm now, boy
sudo pacman --noconfirm -S npm

figlet -f small installing nodejs now, boy
sudo pacman --noconfirm -S nodejs

figlet -f small installing neovide now, boy
sudo pacman --noconfirm -S neovide

figlet -f small installing lazygit now, boy
sudo pacman --noconfirm -S lazygit

figlet -f small installing gdu now, boy
sudo pacman --noconfirm -S gdu

figlet -f small installing bottom now, boy
sudo pacman --noconfirm -S bottom

figlet -f small installing the iosevka font now, boy
sudo pacman --noconfirm -S ttc-iosevka
sudo pacman --noconfirm -S ttf-iosevka-nerd
sudo pacman --noconfirm -S ttf-iosevkaterm-nerd

figlet -f small installing the jetbrains mono font now, boy
sudo pacman --noconfirm -S ttf-jetbrains-mono
sudo pacman --noconfirm -S ttf-jetbrains-mono-nerd

figlet -f small installing the fira code font now, boy
sudo pacman --noconfirm -S ttf-fira-code
sudo pacman --noconfirm -S ttf-firacode-nerd

figlet -f small installing mingw now, boy
sudo pacman --noconfirm -S mingw-w64

figlet -f small installing neovim clipboards now, boy
sudo pacman --noconfirm -S wl-clipboard
sudo pacman --noconfirm -S xclip

#! END OF PACMAN INSTALLATIONS
#! START OF YAY INSTALLATIONS

figlet -f small now using yay to install stuff now, boy
figlet -f small installing vscode now, boy
yay --noconfirm -S visual-studio-code-insiders-bin

figlet -f small installing gear lever now, boy
yay --noconfirm -S gearlever

figlet -f small installing github tools now, boy
yay --noconfirm -S github-cli
yay --noconfirm -S github-desktop-bin 
yay --noconfirm -S github-actions-bin

figlet -f small installing zen browser now, boy
yay --noconfirm -S zen-browser-bin

figlet -f small installing google chrome now, boy
yay --noconfirm -S google-chrome

figlet -f small installing termius now, boy
yay --noconfirm -S termius

figlet -f small installing vesktop now, boy
yay --noconfirm -S vesktop-bin

figlet -f small installing sgdboop now, boy
yay --noconfirm -S sgdboop-bin

figlet -f small installing hedgemodmanager now, boy
yay --noconfirm -S hedgemodmanager-git

figlet -f small installing the exercism cli tool now, boy
yay --noconfirm -S exercism-bin

figlet -f small installing wayclip now, boy
yay --noconfirm -S wayclip

#! END OF YAY INSTALLATIONS
#! START OF FLATPAK INSTALLATIONS

figlet -f small using flatpak to install stuff now, boy
figlet -f small installing flatseal now, boy
flatpak install -y --system com.github.tchx84.Flatseal

figlet -f small installing sober roblox now, boy
flatpak install -y --user org.vinegarhq.Sober

figlet -f small installing dr. robotniks ring racers now, boy
flatpak install -y --user org.kartkrew.RingRacers

#! END OF FLATPAK INSTALLATIONS
#! START OF MANUAL INSTALLATIONS

figlet -f small manually installing stuff now, boy
figlet -f small installing cider v2 now, boy
figlet -f small you gotta install this one manually, boss :[
sleep 5

figlet -f small installing decky loader now, boy
wget -O $HOME/.local/share/applications/decky-loader.desktop https://decky.xyz/download
cd ~/.local/share/applications
chmod +x decky-loader.desktop
gtk-launch decky-loader.desktop
cd ~/Downloads

figlet -f small installing emudeck now, boy
curl -fsSL https://www.emudeck.com/EmuDeck.sh | sh

figlet f -small installing rust now, boy
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

figlet -f small installing tailscale and trayscale now, boy
curl -fsSL https://tailscale.com/install.sh | sh
yay --noconfirm -Syu trayscale

figlet -f small installing vencord now, boy
sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"

figlet -f small installing windscribe vpn now, boy
wget -O $HOME/Downloads/windscribe.zst https://windscribe.com/install/desktop/linux_zst_x64
sudo pacman --noconfirm -U windscribe.zst

figlet -f small installing lunarvim now, boy
LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)

figlet -f small installing conan c/c++ package manager now, boy
pip install conan

figlet -f small cleaning up now, boy
cd ~/.local/share/applications
rm -rf decky-loader.desktop
cd ~/Downloads
rm -rf emudeck.sh

#! END OF MANUAL INSTALLATIONS

cd

figlet -f small setting up github now, boy
gh auth login --web

figlet -f small installing your dotfiles now, boy
git clone https://github.com/cut-the-freakin-steak/dotfiles.git
cd ~/dotfiles
stow . --adopt
cd

figlet -f small here are some apps that youll have to install yourself, boy:
figlet -f small FMOD Studio

figlet -f small installing oh-my-zsh now, boy
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
