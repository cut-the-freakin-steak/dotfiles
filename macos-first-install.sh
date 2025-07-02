#!/bin/sh

#! PREREQUISITES
cd

figlet -f small installing prerequisites now, boy
brew install zsh
brew install pinentry-mac
brew install figlet

figlet -f small installing homebrew now, boy
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

figlet -f small updating your packages now, boy
brew update
brew upgrade

figlet -f small adding some taps now, boy
brew tap koekeishiya/formulae
brew tap DomT4/homebrew-autoupdate

figlet -f small making homebrew autoupdate and autoupgrade now, boy

#! INSTALLING PACKAGES
#! START OF BREW INSTALLATIONS

figlet -f small installing firefox now, boy
brew install firefox

figlet -f small installing zen now, boy
brew install zen

figlet -f small installing the unarchiver now, boy
brew install the-unarchiver

figlet -f small installing alfred now, boy
brew install alfred

figlet -f small installing karabiner elements now, boy
brew install karabiner-elements

figlet -f small installing discord now, boy
brew install discord

figlet -f small installing visual studio code now, boy
brew install visual-studio-code

figlet -f small installing godot and godot-mono now, boy
brew install godot
brew install godot-mono

figlet -f small installing spitfire audio now, boy
brew install spitfire-audio

figlet -f small installing logitech g hub now, boy
brew install logitech-g-hub

figlet -f small installing steam now, boy
brew install steam

figlet -f small installing ghostty now, boy
brew install ghostty

figlet -f small installing termius now, boy
brew install termius

figlet -f small installing windscribe now, boy
brew install windscribe

figlet -f small installing obs now, boy
brew install obs

figlet -f small installing spotify now, boy
brew install spotify

figlet -f small installing wine now, boy
brew install wine

figlet -f small installing gcc now, boy
brew install gcc

figlet -f small installing gstreamer now, boy
brew install gstreamer

figlet -f small installing llvm now, boy
brew install llvm

figlet -f small installing mas now, boy
brew install mas

figlet -f small installing python now, boy
brew install python

figlet -f small installing skhd now, boy
brew install skhd

figlet -f small installing yabai now, boy
brew install yabai

figlet -f small installing ast-grep now, boy
brew install ast-grep

figlet -f small installing c3c now, boy
brew install c3c

figlet -f small installing cmake now, boy
brew install cmake

figlet -f small installing daisy disk now, boy
brew install daisydisk

figlet -f small installing all the dotnet tools now, boy
brew install dotnet@9
brew install dotnet@8
brew install dotnet
brew install dotnet-sdk
brew install dotnet-runtime

figlet -f small installing fd now, boy
brew install fd

figlet -f small installing ffmpeg now, boy
brew install ffmpeg

figlet -f small installing fzf now, boy
brew install fzf

figlet -f small installing git/hub cli tools now, boy
brew install git
brew install git-lfs
brew install gh
brew install github

figlet -f small installing google chrome now, boy
brew install google-chrome

figlet -f small installing helix now, boy
brew install helix

figlet -f small installing the qt framework now, boy
brew install qt5
brew install qt6

figlet -f small installing libusb now, boy
brew install libusb
brew install libusb-compat

figlet -f small installing the lua tools now, boy
brew install lua
brew install luau
brew install luajit
brew install luarocks

figlet -f small installing md4c now, boy
brew install md4c

figlet -f small installing neovim now, boy
brew install neovim

figlet -f small installing range-v3 now, boy
brew install range-v3

figlet -f small installing raylib now, boy
brew install raylib

figlet -f small installing ripgrep now, boy
brew install ripgrep
brew install ripgrep-all

figlet -f small installing stow now, boy
brew install stow

figlet -f small installing switchaudio-osx now, boy
brew install switchaudio-osx

figlet -f small installing switcher now, boy
brew install Bobronium/tap/switcher

figlet -f small installing tree-sitter now, boy
brew install tree-sitter

figlet -f small installing vips now, boy
brew install vips

figlet -f small installing wget now, boy
brew install wget

figlet -f small installing yt-dlp now, boy
brew install yt-dlp

#! END OF BREW INSTALLATIONS
#! START OF MANUAL INSTALLATIONS
figlet -f small installing vencord now, boy
cd ~/Downloads
wget -O $HOME/Downloads/VencordInstaller.zip https://github.com/Vencord/Installer/releases/latest/download/VencordInstaller.MacOs.zip
unzip VencordInstaller.zip
rm -rf VencordInstaller.zip
mv VencordInstaller.app /Applications

figlet -f small installing fl studio now, boy
wget -O $HOME/Downloads/FLStudioInstaller.dmg https://support.image-line.com/redirect/flstudio_mac_installer
hdiutil attach /Users/steak/Downloads/FLStudioInstaller.dmg
figlet -f small check finder, at the disk section lol
sleep 5

figlet -f small installing sideloadly now, boy
wget -O $HOME/Downloads/sideloadly.dmg https://sideloadly.io/SideloadlySetup.dmg
hdiutil attach /Users/steak/Downloads/sideloadly.dmg
figlet -f small check finder, at the disk section lol
sleep 5

#! END OF MANUAL INSTALLATIONS

figlet -f small here are some apps that youll have to install yourself, boy
figlet -f small KORG M1
sleep 5

figlet -f small Cider v2
sleep 5

figlet -f small FMOD Studio
sleep 5
