#!/bin/bash
set -x

# Encrypt certificates
ansible-vault encrypt roles/nebula/files/certs/*

# Encrypt vault
ansible-vault encrypt vars/vault.yml