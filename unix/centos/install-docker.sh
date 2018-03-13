# https://docs.docker.com/install/linux/docker-ce/centos/#install-docker-ce

# Uninstall old versions
sudo yum remove docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-selinux \
                docker-engine-selinux \
                docker-engine

# Install required packages.
sudo yum install -y yum-utils \
     device-mapper-persistent-data \
     lvm2
