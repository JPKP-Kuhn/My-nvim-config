# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

export REPORTTIME=1

autoload -Uz compinit && compinit

ZSH_THEME="steeef"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    web-search
    common-aliases
    copybuffer
    copypath
)

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
pokemon-colorscripts --no-title -s -r #without fastfetch
#pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/directories in terminal using lsd
# base implementation with default options
alias e='eza --git --icons --group --group-directories-first --sort=name'
alias ls='eza --color=auto --icons'
alias l='eza -l --color=auto --icons'
alias la='eza -a --color=auto --icons'
alias lla='eza -la --color=auto --icons'
alias lt='eza --tree --color=auto --icons'

# My custom alias
alias q='exit'
alias cl='clear'
alias mv='mv -i'
alias poweroff='systemctl poweroff'
alias reboot='systemctl reboot'
alias py='python3'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

eval "$(zoxide init zsh)"

# Created by `pipx` on 2025-08-06 15:15:23
export PATH="$PATH:/home/jpk/.local/bin"

# function to tell the time taked by a program to be executed
function preexec() {
  timer=$(date +%s%3N)
}
function precmd() {
  if [ $timer ]; then
    local now=$(date +%s%3N)
    local d_ms=$(($now-$timer))
    local d_s=$((d_ms / 1000))
    local ms=$((d_ms % 1000))
    local s=$((d_s % 60))
    local m=$(((d_s / 60) % 60))
    local h=$((d_s / 3600))
    if ((h > 0)); then elapsed=${h}h${m}m
    elif ((m > 0)); then elapsed=${m}m${s}s
    elif ((s >= 10)); then elapsed=${s}.$((ms / 100))s
    elif ((s > 0)); then elapsed=${s}.$((ms / 10))s
    else elapsed=${ms}ms
    fi
    export RPROMPT="%F{white}${elapsed} %{$reset_color%}"
    unset timer
  fi
}

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# bun completions
[ -s "/home/jpk/.bun/_bun" ] && source "/home/jpk/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
