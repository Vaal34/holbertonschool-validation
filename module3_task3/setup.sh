#!/bin/bash
sudo apt-get install jq -y
sudo wget https://github.com/mikefarah/yq/releases/download/v4.5.0/yq_linux_amd64.tar.gz
sudo tar xzf yq_linux_amd64.tar.gz
sudo mv yq_linux_amd64 yq
sudo mv yq /usr/bin/
sudo yq --version
sudo curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb -o hugo.deb
sudo apt install ./hugo.deb
sudo rm hugo.deb
sudo rm yq_linux_amd64.tar.gz
wget https://github.com/gohugoio/hugo/releases/download/v0.111.3/hugo_0.111.3_Linux-64bit.tar.gz
tar -xf hugo_0.111.3_Linux-64bit.tar.gz
sudo mv ./hugo /usr/bin/
sudo rm hugo_0.111.3_Linux-64bit.tar.gz
sudo npm install -g markdownlint-cli
sudo npm install -g markdown-link-check