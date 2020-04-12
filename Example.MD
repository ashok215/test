# Hashicorp Vault and Consul cluster setup using Ansible Roles

Installs and configures Hashicorp's Consul & Vault

Our goal is to arrive at a Vault HA setup consisting of the following:

* 2 Vault servers: 1 active and 1 standby
* Cluster of 3 Consul servers

### Overview of deployment
![Alt text](https://d33wubrfki0l68.cloudfront.net/ec1b3f53bb1180cb00526bad056773f25c3d251a/f2075/img/vault-ha-consul.png "Overview of deployment")


Requirements
------------

* Aws cli
* Ansible 2.5 or higher
* root privileges to run the playbook

### Setup

Provide server IP address in the inventory file on which we want to run this playbook. Once done run the playbook.


## Running the playbook
Execute the  following command:

```
ansible-playbook main.yml -i inventory
```

