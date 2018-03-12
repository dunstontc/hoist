# https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-repository

# Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     software-properties-common

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that you now have the key with the fingerprint:
sudo apt-key fingerprint 0EBFCD88

# You always need the stable repository,
# even if you want to install builds from the edge or test repositories as well.
#  To add the edge or test repository,
# add the word edge or test (or both) after the word stable in the commands below.
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the apt package index.
sudo apt-get update

# Install Docker
sudo apt-get install docker-ce


# https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user
## Manage Docker as a non-root user
sudo groupadd docker

sudo usermod -aG docker $USER

# sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
# sudo chmod g+rwx "/home/$USER/.docker" -R

# Now log out and log back in :)
