# Set custom prompt
setopt PROMPT_SUBST
autoload -U promptinit
promptinit
prompt grb

# Completion
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -Uz compinit
compinit

# Colorize terminal
alias ls='ls -G'
alias ll='ls -lG'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Aliases
alias ll="ls -oGhA"
alias l="ls -G"
alias vi=vim
alias vimrc="vim ~/dotfiles/vimrc"

alias ..="cd .."

alias g="git status"
alias gc="git commit"
alias gl="git log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short"
alias gp="git pull --ff-only"

alias nr="npm run"

alias ws="ruby -run -e httpd -- -p 5000 ."

# Nicer history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt share_history

# Track your most used directories, based on 'frecency' : https://github.com/rupa/z
. ~/bin/z.sh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git'

# https://www.mail-archive.com/bug-gnulib@gnu.org/msg36768.html
export LC_ALL=en_US.UTF-8

export PATH=/usr/local/bin:~/development/flutter/bin:~/development/flutter/bin/cache/dart-sdk/bin:$PATH
