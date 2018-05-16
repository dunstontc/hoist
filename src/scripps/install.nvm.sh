#!/bin/bash
# https://github.com/creationix/nvm

sudo apt install build-essential libssl-dev;
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash;
nvm install node;
# Okay, now restart your shell & run:\n nvm use node && nvm alias default node


