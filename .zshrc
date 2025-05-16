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
# make python normal (add python command alongside python3)
export PATH="/Users/steak/.virtualenvs/debugpy/bin:$PATH"

# add godot to the path
export PATH="/Applications/Godot.app/Contents/MacOS:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# aliases
alias nix-rebuild-air="darwin-rebuild switch --flake ~/.config/nix#air"
alias nix-update="nix flake update --flake ~/.config/nix/"
alias ls="ls --color"

# To customize prompt, run `p10k configure` or edit ~/dotfiles/.p10k.zsh.
[[ ! -f ~/dotfiles/.p10k.zsh ]] || source ~/dotfiles/.p10k.zsh

# where we want to load zinit (plugin manager for zsh) and store its plugins
ZINIT_HOME="${XGD_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# download zinit if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# source/load zinit
source "${ZINIT_HOME}/zinit.zsh"

# add zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# load autocompletions
autoload -U compinit && compinit

# history stuff
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# completion styling
# case-insensitivity for autocompletion
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"

# built-in completion has color
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"

# use fzf menu instead of default one
zstyle ":completion:*" menu no

# preview folders with fzf with "cd"
zstyle ":fzf-tab:complete:cd:*" fzf-preview "ls --color $realpath"

# fzf shell integration
eval "$(fzf --zsh)"

# enable oh-my-posh
# eval "$(oh-my-posh init zsh --config $HOME/dotfiles/.config/oh-my-posh/myconfig.toml)"
