#!/usr/bin/env bash
# https://github.com/junegunn/fzf#using-git

reset="\e[0m";
blue="\e[1;34m";

echo -e "\[${blue}\] Installing Fzf \[${reset}\]";
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
