#!/usr/bin/bash
# https://github.com/zsh-users/zsh/

cd /tmp

wget https://github.com/zsh-users/zsh/archive/zsh-5.4.2.tar.gz
tar -zxf zsh-5.4.2.tar.gz
cd zsh-5.4.2

./Util/preconfig
./configure
sudo make install

# echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
# chsh -s /usr/local/bin/zsh
