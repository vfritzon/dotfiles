# Prompt
PROMPT='%1~ $ '
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

export EDITOR=nvim

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
alias vi=nvim
alias vim=nvim
alias vimrc="vim ~/dotfiles/init.lua"

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

# Zoxide (https://github.com/ajeetdsouza/zoxide)
eval "$(zoxide init zsh)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git'
export FZF_DEFAULT_OPTS='--color=light'


# node
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# ruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-3.0.1

# dotnet
export PATH="~/.dotnet:$PATH"

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
