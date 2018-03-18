#!/bin/bash

# https://github.com/neovim/neovim/wiki/Building-Neovim

Reset='\033[0m'
Red='\033[38;5;203m'
Green='\033[38;5;65m'
Blue='\033[38;5;75m'
Cyan='\033[38;5;43m'

inform() {
  printf "$1=== $2 ===${Reset}\n";
}


inform "$Blue" "Installing build dependencies";
sudo yum -y install \
  ninja-build \
  libtool     \
  autoconf    \
  automake    \
  cmake       \
  gcc         \
  gcc-c++     \
  make        \
  pkgconfig   \
  unzip

inform "$Blue" "Cloning Neovim";
mkdir -p ~/.ghq/github.com/neovim;
cd ~/.ghq/github.com/neovim
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout nightly


inform "$Cyan" "Building Neovim";
rm -r build
make clean
make CMAKE_BUILD_TYPE=Release
# make
sudo make install


