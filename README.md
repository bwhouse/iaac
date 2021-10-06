# bwhouse/iaac

Ansible playbook to mangage my self hosted environment and VPS'

## Node bootstrap
Once nodes are online they can be initially bootstraped with the following command. The --extra-vars allows the hostname and ansible user to be overwritten in the playbook
-`ansible-playbook bootstrap.yml --key-file <ssh.key> -K --extra-vars "hosts=<hostname> remote_user=<user>"`

## General playbook execution
General playbook can be executed via 
-`ansible-playbook main.yml -k`

## Todo
- [x] Add nebula cert creation logic
- [ ] Nebula cert creation for offline / unmanaged devices
- [ ] migrate unraid docker config in to ansible managed config
- [ ] migrate the rest of NUC docker config across

