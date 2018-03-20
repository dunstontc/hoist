#!/bin/bash
# https://github.com/dylanaraps/neofetch/wiki/Installation#latest-git-master-bleeding-edge

mkdir -p ~/tmp;
cd ~/tmp || return;
git clone https://github.com/dylanaraps/neofetch;
cd neofetch || return;
sudo make install;
