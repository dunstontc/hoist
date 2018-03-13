#!/usr/bin/bash

# https://github.com/zsh-users/zsh/

Reset='\033[0m'
Blue='\033[38;2;78;201;176m'

inform() {
  printf "${Blue}=== $1 ===${Reset}\n";
}

cd /tmp;
wget http://sourceforge.net/projects/zsh/files/zsh/5.4.1/zsh-5.4.1.tar.bz2/download;
tar -zxf zsh-5.4.1.tar.bz2;
cd zsh-*


./configure && make && sudo make install

# echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
# chsh -s /usr/local/bin/zsh


