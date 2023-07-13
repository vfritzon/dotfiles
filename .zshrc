# prompt
PROMPT='[%2~]$ '
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# editor
export EDITOR=vim

# completion
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi
autoload -Uz compinit
compinit
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# colors
alias ls='ls -G'
alias ll='ls -lG'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# aliases
alias ll="ls -oGhA"
alias l="ls -G"
alias vimrc="vim ~/.vimrc"
alias ..="cd .."
alias g="git status"
alias gc="git commit"
alias gl="git log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short"
alias gp="git pull --ff-only"
alias nr="npm run"
alias ws="ruby -run -e httpd -- -p 5000 ."

# history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt share_history

# navigation
eval "$(zoxide init zsh)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git'
export FZF_DEFAULT_OPTS='--color=light,gutter:-1,bg+:#f0f0f0'

# node
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"


# gpg
export GPG_TTY=$(tty)

# path
export PATH="$HOME/bin:$PATH"
