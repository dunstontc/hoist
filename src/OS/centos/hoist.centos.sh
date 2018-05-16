#!/bin/bash


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
# yum clean all

sudo yum update && yum upgrade;

sudo yum groups install "Development Tools";

sudo yum -y install epel-release;

# Princeton FTW
# https://www.ostechnix.com/install-dnf-centos-7/
wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64//dnf-0.6.4-2.sdl7.noarch.rpm
wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64/dnf-conf-0.6.4-2.sdl7.noarch.rpm
wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64/python-dnf-0.6.4-2.sdl7.noarch.rpm
sudo yum install \
  dnf-0.6.4-2.sdl7.noarch.rpm \
  dnf-conf-0.6.4-2.sdl7.noarch.rpm \
  python-dnf-0.6.4-2.sdl7.noarch.rpm

