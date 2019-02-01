# This is a collection of my dot-files from vim to i3
This also has a script the install my config for vim, tmux, and you complete me
## Install Guide
  1.) sudo apt install build-essential cmake python3-dev
      wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
      sudo apt-get update
      sudo apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-6.0 main"
    sudo apt-get install -y clang-6.0 lld-6.0
  2. cd dot-files
  3. chmod +x install.sh
  4. ./install.sh
  5. launch vim then type :PlugInstall (check vim plug docs for help)
  6. To compile YCM (Check [YCM ](https://github.com/Valloric/YouCompleteMe#linux-64-bit)for full install guide)
      * cd /.vim/plugged/YouCompleteMe
      * run the install.py (if you just want c-family support then run python3 install.py --clang-completer else check the YCM guide for other options)
