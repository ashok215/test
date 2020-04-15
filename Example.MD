# Hashicorp Vault and Consul cluster setup using Ansible


Installs and configures Hashicorp's Consul & Vault

Our goal is to arrive at a Vault HA setup consisting of the following:

* 2 Vault servers: 1 active and 1 standby
* Cluster of 3 Consul servers

Requirements
------------

* Aws cli
* Ansible 
* root privileges to run the playbook

### Setup

Provide server IP address and root password in the inventory file on which we want to run this playbook. Once done run the playbook.


## Running the playbook
Execute the  following command:

```
ansible-playbook main.yml -i inventory
```
## Consul Role

Installs Hashicorp's Consul by

* Unzipping consul Binaries
* Creating a consul group & user
* Creating consul directory structure
* Creating consul systemd service
* Starting & enabling consul systemd service


## Vault role

Installs Hashicorp's vault by

* unzipping vault
* Creating a vault group & user
* Creating the vault directory structure
* Creating vault systemd service
* Starting & enabling vault systemd service
* Setting VAULT_ADDR in system-wide profile

## aws s3
Downloads the binaries from s3 


Each role has varibales defined in the /defaults/main.yml
