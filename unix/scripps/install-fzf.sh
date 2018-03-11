#!/usr/bin/env bash
# https://github.com/junegunn/fzf#using-git

reset="\e[0m";
blue="\e[0;34m";

echo "\[${blue}\] Installing Fzf \[${reset}\]"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
