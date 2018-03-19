#!/bin/bash

# https://docs.docker.com/install/linux/docker-ce/centos/#install-docker-ce

Reset='\033[0m'
Red='\033[38;5;203m'
Green='\033[38;5;65m'
Blue='\033[38;5;75m'
Cyan='\033[38;5;43m'

inform() {
  printf "$1=== $2 ===${Reset}\n";
}

# Issues with container-selinux see:
# https://github.com/docker/for-linux/issues/21#issuecomment-353287083

inform "$Blue" "Cleaning out existing versions of Docker";
sudo yum remove \
    docker \
    docker-client \
    docker-client-latest \
    docker-common \
    docker-latest \
    docker-latest-logrotate \
    docker-logrotate \
    docker-selinux \
    docker-engine-selinux \
    docker-engine

inform "$Blue" "Installing required packages"
sudo yum install -y \
    yum-utils \
    device-mapper-persistent-data \
    lvm2

# You always need the stable repository,
# even if you want to install builds from
# the edge or test repositories as well.
inform "$Blue" "Adding the Docker repository"
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

inform "$Blue" "Installing Docker"
sudo yum install docker-ce

inform "$Cyan" "Starting Docker"
# sudo systemctl start docker
sudo systemctl enable docker


inform "$Cyan" "Setting up correct permissions"
sudo groupadd docker
sudo usermod -aG docker "$USER"

# sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
# sudo chmod g+rwx "/home/$USER/.docker" -R

# Verify that docker is installed correctly
# by running the hello-world image.
sudo docker run hello-world


