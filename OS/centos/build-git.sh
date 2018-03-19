#!/bin/bash
# https://github.com/git/git
# https://www.digitalocean.com/community/tutorials/how-to-install-git-on-centos-7

cd /tmp || return;

# Before installing the Development tools, run the `yum clean all` command.
# This will clear the yum cache and force it to reread any changed configuration files.
# yum clean all

# yum groups install "Development Tools"
sudo yum install -y \
  curl-devel    \
  gettext-devel \
  openssl-devel \
  perl-CPAN     \
  perl-devel    \
  zlib-devel

wget https://github.com/git/git/archive/v2.16.2.tar.gz -O git.tar.gz;

tar -zxf git.tar.gz;

cd git-* || return;

make configure;
./configure --prefix=/usr/local;

sudo make install;
