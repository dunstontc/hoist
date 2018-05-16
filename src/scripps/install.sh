#!/bin/bash

fill_folders() {
  mkdir -p ~/bin;
  mkdir -p ~/.cache/shell;
  mkdir -p ~/.cache/logs;
  mkdir -p ~/.fonts;
  mkdir -p ~/.zsh
}

hoist_macos() {
  fill_folders
  xcode-select --install;
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
  # brew bundle Brewfile;
}

hoist_debuntu() {
  fill_folders
  sudo apt update;
  sudo apt upgrade;
}

hoist_ubuntu() {
  fill_folders;
  sudo apt update;
  sudo apt upgrade;
}

hoist_redhat() {
  fill_folders
  # First clean up everything - open a terminal and execute the following commands :
  sudo subscription-manager remove --all
  sudo subscription-manager unregister
  sudo subscription-manager clean

  # Now re-register the system, attach the subscriptions - execute these commands :
  sudo subscription-manager register
  sudo subscription-manager refresh
  sudo subscription-manager attach --auto

  # Here are the commands to see which repos are enabled and what can be added :
  # sudo subscription-manager repos --list-enabled to see all actually enabled subscriptions.
  # sudo subscription-manager repos --list to see all subscriptions that are available for you.
  # sudo subscription-manager repos --enable <repo> if you want to add additional repos.
}


hoist_arch() {
  fill_folders
  sudo pacman -Syu
}




# Teach terminals how to use true color & escape italics
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/tmux.terminfo
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/tmux-256color.terminfo
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/xterm-256color.terminfo


