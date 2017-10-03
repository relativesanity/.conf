#!/bin/sh

ansible-playbook --ask-vault-pass --limit `hostname` secret.yml
