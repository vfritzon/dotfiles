export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="vfritzon"

plugins=(vfritzon)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/bash/bash_aliases
source ~/dotfiles/bash/bash_aliases_private
source ~/dotfiles/bash/bash_aliases
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$HOME/bin:~/GlassFish_Server/bin:/Applications/Postgres93.app/Contents/MacOS/bin:/usr/local/bin:$PATH
export LANG=en_US.UTF-8
