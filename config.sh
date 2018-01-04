#!/bin/sh

ansible-playbook --ask-vault-pass --limit `hostname` -Kb config.yml
