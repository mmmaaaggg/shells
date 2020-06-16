apt install docker.io apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic nightly" > /etc/apt/sources.list.d/docker-nightly.list
apt  install docker-compose
systemctl start docker
systemctl enable docker
docker --version
docker-compose --version
