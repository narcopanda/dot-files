# This is a collection of my dot-files from vim to i3
This also has a script the install my config for vim, tmux, and you complete me
****Install Guide
  1. chmod +x install.sh
  2. ./install.sh
  3. launch vim then type :PlugInstall (check vim plug docs for help)
  4. To compile YCM (Check [YCM](https://github.com/Valloric/YouCompleteMe#linux-64-bit)for full install guide)
      * cd /.vim/plugged/YouCompleteMe
      * run the install.py (if you just want c-family support then run install.py --clang-completer)
