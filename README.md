# This is a collection of my dot-files from vim to i3
This also has a script the install my config for vim, tmux, and you complete me
## Install Guide
  1. sudo apt install build-essential cmake python3-dev
  2. cd dot-files
  3. chmod +x install.sh
  4. ./install.sh
  5. launch vim then type :PlugInstall (check vim plug docs for help)
  6. To compile YCM (Check [YCM ](https://github.com/Valloric/YouCompleteMe#linux-64-bit)for full install guide)
      * cd /.vim/plugged/YouCompleteMe
      * run the python3 install.py (if you just want c-family support then run python3 install.py --clang-completer)
