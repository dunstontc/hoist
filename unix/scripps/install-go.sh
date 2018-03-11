#!/bin/bash
mkdir -p ~/tmp;
cd ~/tmp;
[ -f ~/tmp/go1.10.linux-amd64.tar.gz ] || curl -LO https://dl.google.com/go/go1.10.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.10.linux-amd64.tar.gz

