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
## installation sur mon poste de travail
```shell
$ ansible-playbook site.yml -i local.inventory
```
## installation de ma VM de boulot
```shell
$ vagrant up
```
## windows part
```shell
$ @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
$ choco install -y atom jre8 7zip.install skype vlc ccleaner sysinternals filezilla procexp kitty keepass.install classic-shell mysql.workbench windirstat  cdburnerxp  procmon  evernote treesizefree cpu-z miktex hipchat screenpresso clementine
```
