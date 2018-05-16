#!/bin/bash

reset="\033[0m";
blue="\033[1;34m";

echo -e "${blue}=== Installing Go ===${reset}";
cd /tmp || return;
[ -f /tmp/go1.10.2.linux-amd64.tar.gz ] || curl -LO https://dl.google.com/go/go1.10.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.10.linux-amd64.tar.gz
sudo ln -s /usr/local/go/bin/* /usr/local/bin
echo -e "${blue}=== Done! ===${reset}";

