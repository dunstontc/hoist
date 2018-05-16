#!/bin/bash
# https://github.com/junegunn/fzf#using-git

reset="\033[0m";
blue="\033[1;34m";

echo -e "${blue}=== Installing Fzf ===${reset}";
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
echo -e "${blue}=== Done! ===${reset}";
