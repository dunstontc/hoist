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

hoist_arch() {
  # General update
  sudo pacman -Syu
}


# Teach terminals how to use true color & escape italics
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/tmux.terminfo
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/tmux-256color.terminfo
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/xterm-256color.terminfo


