#!/usr/bin/env bash
# https://github.com/dylanaraps/neofetch/wiki/Installation#latest-git-master-bleeding-edge

mkdir -p ~/tmp;
cd ~/tmp;
git clone https://github.com/dylanaraps/neofetch;
cd neofetch;
sudo make install;
