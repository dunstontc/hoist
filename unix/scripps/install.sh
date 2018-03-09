#!/bin/sh

hoist_macos() {
  # Install xcode command line tools
  xcode-select --install;

  # Install Homebrew (http://brew.sh)
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

  # Install brew formulae and cask applications
  # brew bundle Brewfile;
}

hoist_debuntu() {
  # General update
  sudo apt update;
  sudo apt upgrade;
}

hoist_redhat() {
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
  # General update
  sudo pacman -Syu
}




# Teach terminals how to use true color & escape italics
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/tmux.terminfo
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/tmux-256color.terminfo
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/xterm-256color.terminfo


