#!/bin/bash

# https://github.com/zsh-users/zsh/

Reset='\033[0m'
Red='\033[38;5;203m'
Green='\033[38;5;65m'
Blue='\033[38;5;75m'

inform() {
  printf "$1=== $2 ===${Reset}\n";
}

# sudo yum install ncurses-devel
# FIXME: check if ncurses is installed

cd /tmp;

inform "$Blue" "Downloading zsh";
zsh_install_version="zsh-5.6.2"
curl -L https://github.com/zsh-users/zsh/archive/zsh-5.6.2.tar.gz -o "$zsh_install_version.tar.gz";
tar -xvzf "$zsh_install_version.tar.gz";
cd "$zsh_install_version";

inform "$Blue" "Running autoconf";
sudo autoconf;
inform "$Blue" "Configuring";
sudo ./configure;
inform "$Blue" "Building zsh";
sudo make;
inform "$Blue" "Installing zsh";
sudo make install;

# FIXME: make sure install is successful
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh
