#!/usr/bin/env bash

cd /tmp

echo "Downloading vagrant..."
curl -o vagrant.deb  https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb

echo "Installing ..."
dpkg -i vagrant.deb

echo "Installing plugins..."
vagrant plugin install vagrant-hostsupdater

echo "Cleanup..."
rm vagrant.deb

echo "Done."
