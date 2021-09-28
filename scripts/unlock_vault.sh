#!/bin/bash
set -x


# Encrypt vault
ansible-vault decrypt vars/vault.yml

# Encrypt certificates

while true; do
    read -p "Do you wish to DECRYPT nebula certs [yN]" yn
    case $yn in
        [Yy]* ) echo "Decrypting Certs"; ansible-vault decrypt roles/nebula/files/certs/*; break;;
        * ) exit;;
    esac
done

