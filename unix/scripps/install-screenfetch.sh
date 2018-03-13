#!/bin/bash

Reset='\033[0m'
Blue='\033[38;2;78;201;176m'

inform() {
  printf "${Blue}=== $1 ===${Reset}\n";
}

inform "Installing Screenfetch";

mkdir -p ~/bin;
wget -O ~/bin/screenfetch-dev https://git.io/vaHfR;
chmod +x ~/bin/screenfetch-dev;

clear;
screenfetch-dev;
