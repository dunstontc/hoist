#!/usr/bin/bash
# https://github.com/tmux/tmux

# sudo apt install -y automake
# sudo apt install -y build-essential
# sudo apt install -y pkg-config
# sudo apt install -y libevent-dev
# sudo apt install -y libncurses5-dev

# We've got to build libevent ourselves on CentOS
cd /tmp;
wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
tar xzvf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
./configure && make
sudo make install

git clone https://github.com/tmux/tmux.git /tmp/tmux

cd /tmp/tmux


sh autogen.sh

./configure && make

sudo make install

# cd -
# rm -rf /tmp/tmux
