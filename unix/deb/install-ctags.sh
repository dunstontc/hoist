#!/usr/bin/env bash

sudo apt install autotools-dev autoconf pkg-config
mkdir $HOME/tmp
cd $HOME/tmp
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure --prefix=$HOME
make
make install

