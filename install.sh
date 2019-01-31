#!/usr/bin/env bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/
cp .tmux.cong ~/
cp .ycm_extra_conf.py
