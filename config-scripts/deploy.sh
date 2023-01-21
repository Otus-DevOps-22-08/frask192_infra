#!/bin/bash

echo "##############################################"
echo "######           INSTALL git            ######"
echo "##############################################"

sudo apt install -y git

echo "##############################################"
echo "######           INSTALL app            ######"
echo "##############################################"

git clone -b monolith https://github.com/express42/reddit.git
cd reddit/
sudo bundle install
puma -d
