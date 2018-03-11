#!/bin/bash

Reset='\033[0m'
Blue='\033[0;34m'

echo -e "${Blue}=== Installing Screenfetch ===${Reset}"

mkdir -p ~/bin;
wget -O ~/bin/screenfetch-dev https://git.io/vaHfR;
chmod +x ~/bin/screenfetch-dev;
