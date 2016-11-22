# Set custom prompt
setopt PROMPT_SUBST
autoload -U promptinit
promptinit
prompt grb

# Completion
unsetopt menu_complete   # do not autoselect the first completion entry
setopt auto_menu         # show completion menu on succesive tab press
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # case insensitive tab completion

autoload -U compinit
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
alias vimrc="vim ~/dotfiles/vim/vimrc"

alias ..="cd .."

alias g="git status"
alias gc="git commit"
alias gl="git log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short"
alias gp="git pull --ff-only"

alias ws="ruby -run -e httpd -- -p 5000 ."
alias fjson="pbpaste | python -m json.tool | pbcopy"

# Nicer history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# Ruby
source /usr/local/share/chruby/chruby.sh

# Track your most used directories, based on 'frecency' : https://github.com/rupa/z
. ~/bin/z.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
