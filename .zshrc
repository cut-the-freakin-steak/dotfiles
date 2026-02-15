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

# speaking of git, set up .gitconfig
case "$(uname -s)" in
  Linux*)
    export GIT_CONFIG_GLOBAL="$HOME/.gitconfig-linux"
	# add godot to the path
	export PATH="$HOME/.local/share/Steam/steamapps/common/Godot Engine:$PATH"
	alias godot="godot.x11.opt.tools.64"
    ;;
  Darwin*)
    export GIT_CONFIG_GLOBAL="$HOME/.gitconfig-macos"
	export PATH="/Users/steak/Library/Application Support/Steam/steamapps/common/Godot Engine/Godot.app/Contents/MacOS/Godot:$PATH"
	alias godot="Godot"
	export LLVM_PATH="/opt/homebrew/opt/llvm"

	# not necessarily the godot instance im using, but the one im compiling my rust code with
	# export GODOT4_BIN="$HOME/dev/Godot Engine v4.5.1.app/Contents/MacOS/Godot"
    ;;
  *)
    export GIT_CONFIG_GLOBAL="$HOME/.gitconfig"
    ;;
esac

source $ZSH/oh-my-zsh.sh

export SDL_AUDIODRIVER="pulseaudio" # fix discord screenshare not picking up on SDL2 audio

# User configuration
# make neovide config path the correct one for me
export NEOVIDE_CONFIG="$HOME/dotfiles/.config/neovide"

export RUST_BACKTRACE=1
# bring cargo programs onto the PATH
export PATH="$HOME/.cargo/bin:$PATH"
alias rust_analyzer="rust-analyzer"

# export default python venv
# export VIRTUAL_ENV="/opt/homebrew/opt/python@3.13/Frameworks/Python.framework/Versions/3.13"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# aliases
alias python="python3"
alias pip="python3 -m pip"
alias stow="stow --adopt --ignore .DS_Store"
alias ls="ls --color"
alias arch-update-system="sudo pacman -Syu --noconfirm && yay -Syu --noconfirm && flatpak update -y"
alias godot4="godot"
alias check-batteries="~/dotfiles/utils/check-device-batteries.sh"
alias pullin-the-blanket="~/dotfiles/utils/pullin-the-blanket.sh"

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

# built-in completion has color
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"

# use fzf menu instead of default one
zstyle ":completion:*" menu no

# preview folders with fzf with "cd"
zstyle ":fzf-tab:complete:cd:*" fzf-preview "ls --color $realpath"

# fzf shell integration
eval "$(fzf --zsh)"
