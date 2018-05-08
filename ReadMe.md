How to install ansible: ```
sudo apt-get install python-setuptools python-dev build-essential
sudo easy_install pip
pip install ansible[azure] --user

If you face any issue relevant 'module' object has no attribute 'Cryptography_HAS_SSL_ST', run the following commands:

apt-get --auto-remove --yes remove python-openssl
pip install pyOpenSSL
```

Set ansible vault password environment variable: ``` export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass ```
or include this agrument  --vault-password-file ~/.vault_pass
Put your password into ~/.vault_pass

To install required roles: ``` ansible-galaxy install -p roles-galaxy -r requirements.yml --force``` 

To install java: ``` ansible-playbook -i inventory/test playbooks/playbooks.yml -e ansible_os_family=RedHat --tags java``` with ansible_os_family=RedHat,FreeBSD, Debian

To update environment variable: ``` ansible-playbook -i inventory/test playbooks/playbooks.yml --tags configure_azure_environments ```

To install pip, run the following command: ``` ansible-playbook -i inventory/test playbooks/playbooks.yml --tags pip ```

To install azure-cli, run the following command: ``` ansible-playbook -i inventory/test playbooks/playbooks.yml --tags azure-cli ```