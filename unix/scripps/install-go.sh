#!/usr/bin/env bash
mkdir -p ~/tmp;
cd ~/tmp;
curl -LO https://dl.google.com/go/go1.10.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.10.linux-amd64.tar.gz

