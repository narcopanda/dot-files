#!/usr/bin/env bash

#sudo apt install build-essential cmake python3-dev
#wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
#sudo apt-get update
#sudo apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-6.0 main"
#sudo apt-get install -y clang-6.0 lld-6.0

#install nodejs
curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs
sudo apt install build-essential

#vim plug install
#this may not work
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir ~/.config/nvim
cp init.vim ~/.config/nvim
cp ~/dot-files/.tmux.conf ~/
