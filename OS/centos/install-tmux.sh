#!/bin/bash
# https://github.com/tmux/tmux
# https://github.com/libevent/libevent

# sudo apt install -y automake
# sudo apt install -y build-essential
# sudo apt install -y pkg-config
# sudo apt install -y libevent-dev
# sudo apt install -y libncurses5-dev

# sudo yum -y install \
  # libevent-devel \
  # ncurses-devel \
  # glibc-static \

# We've got to build libevent ourselves on CentOS apparently
cd /tmp || return;
curl -LO https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz
tar -xzvf libevent-2.1.8-stable.tar.gz
cd libevent-2.1.8-stable
./configure && make
sudo make install


cd /tmp || return;
# wget https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz
curl -LO https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz
tar -xzf tmux-2.6.tar.gz
cd tmux-2.6 || return;
./configure && make
sudo make install


# cd /tmp/tmux
# sh autogen.sh
# ./configure && make
# sudo make install

# cd -
# rm -rf /tmp/tmux
