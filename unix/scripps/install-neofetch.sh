#!/bin/bash
# https://github.com/dylanaraps/neofetch/wiki/Installation#latest-git-master-bleeding-edge

if tput setaf 1 &> /dev/null; then
  tput sgr0; # reset colors
  reset=$(tput sgr0);
  green=$(tput setaf 65);
else
  reset="\e[0m";
  green="\e[0;32m";
fi;

echo -e "${green}=== Installing Neofetch ===${reset}"
mkdir -p ~/tmp;
cd ~/tmp;
git clone https://github.com/dylanaraps/neofetch;
cd neofetch;
sudo make install;
