#!/bin/bash

# https://wiki.debian.org/Fonts

Reset='\033[0m'
Blue='\033[38;2;78;201;176m'

inform() {
  printf "${Blue}=== $1 ===${Reset}\n";
}

mkdir -p ~/.fonts;

cp -r ~/hoist/settings/fonts/ubuntu-mono-nerdfont ~/.fonts/ubuntu-mono-nerdfont;

fc-cache -vf ~/.fonts/;

inform "Fonts Updated";
