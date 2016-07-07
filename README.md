#Installation de mon poste

## prereq
* avoir acces au net ou au proxy
* avoir git :)
* installer ansible (donc pip depuis epel, un gcc, python-devel, libffi-devel, openssl-devel)
```shell
yum update
yum install epel-release
yum install python-pip gcc python-devel libffi-devel openssl-devel
pip install --upgrade pip
pip install --upgrade setuptools
#cd /tmp &&  git clone https://github.com/ansible/ansible.git --recursive ansible && cd /tmp/ansible
#python setup.py install
pip install ansible
```
## installation 
```shell
$ ansible-playbook -i "localhost," -c local main.yml
```
ou si le host est bien rempli
```shell
$ cat /etc/ansible/hosts 
localhost ansible_connection=local
$ ansible-playbook site.yml -i local.inventory
```
