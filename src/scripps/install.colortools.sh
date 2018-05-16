#/bin/bash
cd /tmp || return;
wget https://github.com/pvinis/colortools/archive/v1.1.tar.gz;
tar -xzf colortools-1.1.tar.gz
cp -r /tmp/colortools-1.1/scripts/* "$HOME/bin"
