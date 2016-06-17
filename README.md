Jenkins for PHP Continuous Integration
======================================

[![Build Status](https://travis-ci.org/jupeter/jenkins-php.svg?branch=master)](https://travis-ci.org/jupeter/jenkins-php)

# Installation requirements

Vagrant 1.8.4+ is required.

Install vagrant:

```
#!bash
./bin/vagrant-install.sh
```

Install ansible:

```
#!bash
./bin/ansible-install.sh
```

- - -

# Jenkins for PHP installation

## In Vagrant

Before use, please setup your environment:

```
#!bash
source /opt/ansible/hacking/env-setup
$ vagrant up
```

# In *production*
```
#!bash
$ cd provisioning/
$ ansible-playbook -i group_vars/vagrant.ini jenkins-php.yml
```

# Credits

Thanks to http://jenkins-php.org/
