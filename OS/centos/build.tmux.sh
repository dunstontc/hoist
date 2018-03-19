#!/bin/bash
# https://github.com/tmux/tmux
# https://github.com/libevent/libevent
# https://wincent.com/wiki/Building_tmux_from_Git_on_CentOS_6.7


Reset='\033[0m'
Red='\033[38;5;203m'
Green='\033[38;5;65m'
Blue='\033[38;5;75m'
Cyan='\033[38;5;43m'

inform() {
  printf "\n$1=== $2 ===${Reset}\n";
}

sudo yum -y install \
  # libevent-devel \
  # git \
  make \
  automake \
  ncurses-devel \
  glibc-static \

inform "$Blue" "So First we've gotta make libevent.";
# We've got to build libevent ourselves on CentOS apparently
cd /tmp || return;
curl -LO https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz;
tar -xzvf libevent-2.1.8-stable.tar.gz;
cd libevent-2.1.8-stable;

inform "$Cyan" "Configuring...";
./configure --disable-shared --enable-static --prefix=/usr/local

inform "$Cyan" "Building...";
sudo make install;


inform "$Blue" "Okay, let's build Tmux!";
cd /tmp || return;
# wget https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz;
# curl -LO https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz;
git clone https://github.com/tmux/tmux.git;
cd tmux;

inform "$Cyan" "Configuring...";
# https://github.com/tmux/tmux/issues/1067#issuecomment-328645466
sh autogen.sh;
./configure;

inform "$Cyan" "Building...";
sudo make install;


inform "$Green" "Done!";
# cd /tmp/tmux
# sh autogen.sh
# ./configure && make
# sudo make install

# cd -
# rm -rf /tmp/tmux
