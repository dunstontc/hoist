#!/bin/bash

Reset='\033[0m'
Cyan='\033[38;2;78;201;176m'

inform() {
  printf "${Cyan}=== $1 ===${Reset}\n";
}

inform "Installing Screenfetch";

mkdir -p ~/bin;
wget -O ~/bin/screenfetch-dev https://git.io/vaHfR;
chmod +x ~/bin/screenfetch-dev;

clear;
screenfetch-dev;
