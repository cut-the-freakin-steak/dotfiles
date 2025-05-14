# export all apps installed in the bin directory to the PATH
export PATH=~/.local/bin/:$PATH

# Something about Powerlevel10k idk
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Added by Windsurf
export PATH="/Users/steak/.codeium/windsurf/bin:$PATH"

# User configuration
# where we want to load zinit (plugin manager for zsh) and store its plugins
ZINIT_HOME="${XGD_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# download zinit if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# source/load zinit
source "${ZINIT_HOME}/zinit.zsh"

# make python normal (add python command alongside python3)
export PATH="/Users/steak/.virtualenvs/debugpy/bin:$PATH"

# add godot to the path
export PATH="/Applications/Godot.app/Contents/MacOS:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# aliases
alias nvim="nvim --listen 127.0.0.1:6004"
alias nix-rebuild-air="darwin-rebuild switch --flake ~/.config/nix#air"
alias nix-update="nix flake update --flake ~/.config/nix/"
alias colon3=""

# enable starship.rs
# eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/dotfiles/.p10k.zsh.
[[ ! -f ~/dotfiles/.p10k.zsh ]] || source ~/dotfiles/.p10k.zsh
