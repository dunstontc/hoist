#!/bin/bash

# https://github.com/zsh-users/zsh/

Reset='\033[0m'
Red='\033[38;5;203m'
Green='\033[38;5;65m'
Blue='\033[38;5;75m'

inform() {
  printf "$1=== $2 ===${Reset}\n";
}


cd /tmp || return;

inform "$Blue" "Downloading zsh";
wget https://github.com/zsh-users/zsh/archive/zsh-5.4.2.tar.gz;
tar -zxf zsh-5.4.2.tar.gz;
cd zsh-5.4.2 || return;

inform "$Blue" "Running Preconfig";
./Util/preconfig;
inform "$Blue" "Configuring";
./configure;
inform "$Blue" "Building zsh";
make;
inform "$Blue" "Installing zsh";
sudo make install;

echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh
