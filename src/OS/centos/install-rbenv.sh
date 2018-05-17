#!/bin/bash
# https://github.com/rbenv/rbenv-installer

Reset='\033[0m'
Red='\033[38;5;203m'
Green='\033[38;5;65m'
Blue='\033[38;5;75m'
Cyan='\033[38;5;43m'

inform() {
  printf "$1=== $2 ===${Reset}\n";
}

inform "$Blue" "Installing deps...";
sudo yum install -y readline-devel;

inform "$Blue" "Alright, let's get you some Ruby";
# with curl
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash;

# alternatively, with wget
# wget -q https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer -O- | bash

# with curl
# curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

# alternatively, with wget
# wget -q https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor -O- | bash
