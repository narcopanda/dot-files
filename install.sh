#!/usr/bin/env bash

sudo apt install build-essential cmake python3-dev
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-get update
sudo apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-6.0 main"
sudo apt-get install -y clang-6.0 lld-6.0

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/
cp .tmux.conf ~/
cp .ycm_extra_conf.py ~/.vim/
