# What is this ?

This source code is use ansible to setup Azure CLI automatically on Ubunt Linux 16.04 LTS

## 1. Install ansible

```sudo apt-get install python-setuptools python-dev build-essential -y; sudo easy_install pip; pip install ansible[azure] --user```

#### Note: If you face any issue relevant 'module' object has no attribute 'Cryptography_HAS_SSL_ST', run the following commands:

```sudo apt-get --auto-remove --yes remove python-openssl; pip install pyOpenSSL```

we utilize many module from Ansible Galaxy:

```ansible-galaxy install -p roles-galaxy -r requirements.yml --force``` 

## 2. Setup ansible vault:

Ansible Vault is feature of Ansible, enable you to keep sensitve data (password, token .etc) in encrypted files. In this case, we use Vault to store xxx,xxx of Azure.

``` export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass ```

or include this agrument  --vault-password-file ~/.vault_pass
Put your password into ~/.vault_pass

## 3. Now, go ahead : khúc này loạn xà ngàu rôi, để file với đặt tên tá lả nhìn cục source ko hiểu gì ráo, restructure lại cái má ới !!!

Setup Azure environment variable: 

``` ansible-playbook -i inventory/test playbooks/playbooks.yml --tags configure_azure_environments --vault-password-file ~/.vault_pass```

To install java: 
``` ansible-playbook -i inventory/test playbooks/playbooks.yml -e ansible_os_family=Debian --tags java_debian``` 

with ansible_os_family=RedHat,FreeBSD, Debian

To install pip, run the following command: 
``` ansible-playbook -i inventory/test playbooks/playbooks.yml --tags pip ```

To install azure-cli, run the following command: 
``` ansible-playbook -i inventory/test playbooks/playbooks.yml --tags azure-cli ```

To install list of packages: 
``` ansible-playbook -i inventory/test -e ansible_os_family=ubuntu --tags install_packages playbooks/playbooks.yml  ```