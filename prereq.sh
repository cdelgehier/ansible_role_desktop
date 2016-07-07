#!/bin/sh
yum update
yum install epel-release
yum install python-pip gcc python-devel libffi-devel openssl-devel
pip install --upgrade pip
pip install --upgrade setuptools
cd /tmp &&  git clone https://github.com/ansible/ansible.git --recursive ansible && cd /tmp/ansible
python setup.py install

