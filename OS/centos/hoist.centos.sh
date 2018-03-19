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

