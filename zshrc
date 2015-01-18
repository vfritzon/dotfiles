export ZSH=$HOME/.oh-my-zsh


ZSH_THEME="fwalch"
plugins=(vfritzon)
source $ZSH/oh-my-zsh.sh

source ~/dotfiles/bash/bash_aliases
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

export PATH=/usr/local/bin:$PATH
export LANG=en_US.UTF-8

export DOCKER_CERT_PATH=/Users/vfritzon/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
