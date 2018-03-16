#!/bin/bash
# https://github.com/dylanaraps/neofetch/wiki/Installation#latest-git-master-bleeding-edge

if tput setaf 1 &> /dev/null; then
  tput sgr0; # reset colors
  reset=$(tput sgr0);
  green=$(tput setaf 65);
else
  reset="\033[0m";
  green="\033[0;32m";
fi;

printf "${green}=== Installing Neofetch ===${reset}\n"
mkdir -p ~/tmp;
cd ~/tmp;
git clone https://github.com/dylanaraps/neofetch;
cd neofetch;
sudo make install;
clear;
neofetch;
