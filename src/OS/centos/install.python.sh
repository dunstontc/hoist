#!/bin/bash

cd /usr/src;
sudo wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tar.xz;
sudo tar -xvf Python-3.6.4.tar.xz;
cd Python-3.6.4;
sudo ./configure --prefix=/opt/python3;
sudo make altinstall;
sudo ln -s /opt/python3/bin/python3.6 /usr/bin/python3
