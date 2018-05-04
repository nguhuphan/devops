How to install ansible:
```
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:ansible/ansible-2.4
sudo apt install ansible
```
To install required roles: ``` ansible-galaxy install -p roles-galaxy -r requirements.yml ``` 
To install java: ``` ansible-playbook -i inventory/test playbooks/playbooks.yml -e ansible_os_family=RedHat --tags java``` with ansible_os_family=RedHat,FreeBSD, Debian
