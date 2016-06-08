Jenkins for PHP Continuous Integration
======================================

* Caution! This is experimental (not working yet) branch. Do not use! * 

# Installation requirements

ROOT permission is required.

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

# Use in Vagrant

Before use, please setup your environment:

```
#!bash
source /opt/ansible/hacking/env-setup
```

## Jenkins for PHP installation

```
#!bash
$ vagrant up
```

# Use it in *production*
```
#!bash
$ cd provisioning/
$ ansible-playbook -i group_vars/vagrant.ini jenkins-php.yml
```
