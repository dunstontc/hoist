#!/bin/bash
# https://github.com/git/git
# https://www.digitalocean.com/community/tutorials/how-to-install-git-on-centos-7

Reset='\033[0m'
Red='\033[38;5;203m'
Green='\033[38;5;65m'
Blue='\033[38;5;75m'

inform() {
  printf "$1=== $2 ===${Reset}\n";
}

# Issues with container-selinux see:
# https://github.com/docker/for-linux/issues/21#issuecomment-353287083


cd /tmp || return;

inform "$Blue" "Installing Dependencies";
# yum groups install "Development Tools"
sudo yum install -y \
  curl-devel    \
  gettext-devel \
  openssl-devel \
  perl-CPAN     \
  perl-devel    \
  zlib-devel


inform "$Blue" "Downloading Source";
wget https://github.com/git/git/archive/v2.16.2.tar.gz -O git.tar.gz;
tar -zxf git.tar.gz;
cd git-* || return;

inform "$Blue" "Generating Configuration";
make configure;
inform "$Blue" "Configuring";
./configure --prefix=/usr/local;

inform "$Green" "Installing Git";
sudo make install;
