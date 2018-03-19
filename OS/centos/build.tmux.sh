#!/bin/bash
# https://github.com/tmux/tmux
# https://github.com/libevent/libevent

# sudo apt install -y automake
# sudo apt install -y build-essential
# sudo apt install -y pkg-config
# sudo apt install -y libevent-dev
# sudo apt install -y libncurses5-dev

Reset='\033[0m'
Red='\033[38;5;203m'
Green='\033[38;5;65m'
Blue='\033[38;5;75m'
Cyan='\033[38;5;43m'

inform() {
  printf "$1=== $2 ===${Reset}\n";
}

# sudo yum -y install \
  # libevent-devel \
  # ncurses-devel \
  # glibc-static \

inform "$Blue" "So First we've gotta make libevent.";
# We've got to build libevent ourselves on CentOS apparently
cd /tmp || return;
curl -LO https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz;
tar -xzvf libevent-2.1.8-stable.tar.gz;
cd libevent-2.1.8-stable;
inform "$Cyan" "Configuring...";
./configure;
inform "$Cyan" "Building...";
make;
inform "$Cyan" "Installing...";
sudo make install;


inform "$Blue" "Okay, let's build Tmux!";
cd /tmp || return;
# wget https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz;
curl -LO https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz;
tar -xzf tmux-2.6.tar.gz;
cd tmux-2.6 || return;
inform "$Cyan" "Configuring...";
./configure;
inform "$Cyan" "Building...";
make;
inform "$Cyan" "Installing...";
sudo make install;

inform "$Green" "Done!";

# cd /tmp/tmux
# sh autogen.sh
# ./configure && make
# sudo make install

# cd -
# rm -rf /tmp/tmux
