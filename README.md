# Dotfiles

### Install

``cd ~``

``git clone https://github.com/vfritzon/dotfiles.git``

``ln -s ~dotfiles/vim/vimrc ~/.vimrc``

``cd ~/dotfiles``

``git submodule init``

``git submodule update``

### Upgrade

``git submodule foreach git pull origin master``

>http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
