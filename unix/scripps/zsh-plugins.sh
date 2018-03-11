#!/usr/bin/env bash

Reset='\033[0m'
Blue='\033[0;34m'

mkdir -p "$HOME/.zsh/plugins";

echo "$Blue Installing Autosuggestions $Reset"
git clone https://github.com/zsh-users/zsh-autosuggestions.git          ~/.zsh/plugins/zsh-autosuggestions
echo "$Blue Installing Syntax Highlighting $Reset"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git      ~/.zsh/plugins/zsh-syntax-highlighting
echo "$Blue Installing History Substring Search $Reset"
git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.zsh/plugins/zsh-history-substring-search
echo "$Blue Installing fzf-marks $Reset"
git clone https://github.com/urbainvaes/fzf-marks.git                   ~/.zsh/plugins/fzf-marks
echo "$Blue Installing Completions $Reset"
git clone https://github.com/zsh-users/zsh-completions.git              ~/.zsh/plugins/zsh-completions
echo "$Blue Done! $Reset"
