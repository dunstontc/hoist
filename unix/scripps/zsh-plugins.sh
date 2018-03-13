#!/bin/bash

Reset='\033[0m'
Blue='\033[38;2;78;201;176m'

inform() {
  printf "${Blue}=== $1 ===${Reset}\n";
}

mkdir -p "$HOME/.zsh/plugins";

# clear;
inform "Installing Autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions.git          ~/.zsh/plugins/zsh-autosuggestions
inform "Installing Syntax Highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git      ~/.zsh/plugins/zsh-syntax-highlighting
inform "Installing History Substring Search"
git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.zsh/plugins/zsh-history-substring-search
inform "Installing fzf-marks"
git clone https://github.com/urbainvaes/fzf-marks.git                   ~/.zsh/plugins/fzf-marks
inform "Installing Completions"
git clone https://github.com/zsh-users/zsh-completions.git              ~/.zsh/plugins/zsh-completions
inform "Done!"
