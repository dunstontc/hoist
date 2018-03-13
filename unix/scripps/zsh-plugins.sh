#!/bin/bash

Reset='\033[0m'
Blue='\033[0;34m'

mkdir -p "$HOME/.zsh/plugins";

inform() {
  printf "${Blue}=== Installing $1 ===${Reset}\n";
}

inform "Autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions.git          ~/.zsh/plugins/zsh-autosuggestions
inform "Syntax Highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git      ~/.zsh/plugins/zsh-syntax-highlighting
inform "History Substring Search"
git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.zsh/plugins/zsh-history-substring-search
inform "fzf-marks"
git clone https://github.com/urbainvaes/fzf-marks.git                   ~/.zsh/plugins/fzf-marks
inform "Completions"
git clone https://github.com/zsh-users/zsh-completions.git              ~/.zsh/plugins/zsh-completions
clear;
printf "${Blue}=== Done! ===${Reset}\n";
