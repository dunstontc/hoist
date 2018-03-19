#!/bin/bash

# https://github.com/neovim/neovim/wiki/Installing-Neovim#centos-7--rhel-7
sudo curl -o /etc/yum.repos.d/dperson-neovim-epel-7.repo https://copr.fedorainfracloud.org/coprs/dperson/neovim/repo/epel-7/dperson-neovim-epel-7.repo
sudo yum update
sudo yum -y install neovim
