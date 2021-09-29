# bwhouse/iaac

Ansible playbook to mangage my self hosted environment and VPS'

## Node bootstrap
Once nodes are online they can be initially bootstraped with the following command. The --extra-vars allows the hostname and ansible user to be overwritten in the playbook
`ansible-playbook bootstrap.yml --key-file <ssh.key> -K --extra-vars "hosts=<hostname> remote_user=<user>"`

## General playbook execution
General playbook can be executed via 
`ansible-playbook main.yml -k`

