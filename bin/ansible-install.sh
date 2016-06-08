#!/usr/bin/env bash

echo "Install requirements - require SUDO access!"

sudo apt-get update
sudo apt-get install git python-yaml python-jinja2 python-pycurl

echo "Install ansible"

if [ ! -d /opt/ansible ]; then
  cd /opt/
  git clone https://github.com/ansible/ansible.git
  cd ansible
  git submodule update --init --recursive
fi

source /opt/ansible/hacking/env-setup

sudo apt-get install libsasl2-dev python-dev libldap2-dev libssl-dev

CURRENT_DIR=$(PWD)

cd /tmp/
wget "https://bootstrap.pypa.io/get-pip.py"
sudo python /tmp/get-pip.py
sudo pip install netaddr
sudo pip install python-ldap
sudo pip install debops

cd $CURRENT_DIR
ansible-galaxy install -r ansible-requirements.yml

echo "Done."
